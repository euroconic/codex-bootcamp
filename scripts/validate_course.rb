#!/usr/bin/env ruby
# frozen_string_literal: true

require "csv"
require "pathname"

Encoding.default_external = Encoding::UTF_8

root = Pathname(__dir__).parent
errors = []
passes = []

check = lambda do |label, condition, detail = nil|
  if condition
    passes << label
  else
    errors << [label, detail].compact.join(": ")
  end
end

expected_missions = %w[00 01 02 03 04 05 06 07 08 09 10 11 99]
mission_files = Dir[root.join("missions/*/MISSION.md")].sort
mission_numbers = mission_files.map { |path| File.basename(File.dirname(path)).split("-", 2).first }
check.call("mission set", mission_numbers == expected_missions, "expected #{expected_missions.join(', ')}; got #{mission_numbers.join(', ')}")

required = %w[AGENTS.md PROGRESS.md README.md START-HERE.md INSTALL.md THE-CASE.md LICENSE]
required.each { |path| check.call("required #{path}", root.join(path).file?) }
check.call("required WORK-CASE.md", root.join("WORK-CASE.md").file?)

expected_sessions = {
  "s1-context" => %w[1A 1B],
  "s2-skills" => %w[2A 2B 2C],
  "s3-external-data" => %w[3A 3B],
  "s4-prototype-and-roles" => %w[4A 4B 4C],
  "s5-memory" => %w[5A 5B],
  "s6-bonus-knowledge" => %w[6A]
}
session_dirs = Dir[root.join("sessions/*")].select { |path| File.directory?(path) }.map { |path| File.basename(path) }.sort
check.call("session folder set", session_dirs == expected_sessions.keys.sort, "got #{session_dirs.join(', ')}")
expected_sessions.each do |dir, ids|
  check.call("sessions/#{dir}/README.md", root.join("sessions", dir, "README.md").file?)
  actual = Dir[root.join("sessions", dir, "MISSION-*.md")].map { |path| File.basename(path) }.sort
  wanted = ids.map { |id| "MISSION-#{id}.md" }.sort
  check.call("sessions/#{dir} mission files", actual == wanted, "expected #{wanted.join(', ')}; got #{actual.join(', ')}")
  wanted.each do |name|
    file = root.join("sessions", dir, name)
    next unless file.file?

    check.call("sessions/#{dir}/#{name} has Mentor reference", file.read.include?("## Mentor reference"))
  end
end

progress = root.join("PROGRESS.md").read
check.call("fresh progress pointer", progress.include?("**Current mission:** 00"))
check.call("fresh progress boxes", progress.scan(/^- \[ \] /).length == 26, "got #{progress.scan(/^- \[ \] /).length}")
check.call("no completed boxes in template", progress.scan(/^- \[[xX]\] /).empty?)

csv = CSV.read(root.join("data/feedback.csv"), headers: true)
ids = csv.map { |row| row["id"] }
check.call("feedback row count", csv.length == 151, "got #{csv.length}")
check.call("feedback column count", csv.headers.length == 10, "got #{csv.headers.length}")
check.call("feedback IDs unique", ids.compact.uniq.length == 151)

markdown_files = Dir[root.join("**/*.md")].reject { |path| path.include?("/.git/") }
markdown_files.each do |path|
  text = File.read(path)
  text.scan(/\[[^\]]*\]\(([^)]+)\)/).flatten.each do |raw_target|
    target = raw_target.strip.sub(/\A</, "").sub(/>\z/, "")
    next if target.empty? || target.start_with?("#") || target.match?(/\A(?:https?|mailto):/)

    relative = target.split("#", 2).first
    resolved = Pathname(path).dirname.join(relative).cleanpath
    check.call("link #{Pathname(path).relative_path_from(root)} -> #{relative}", resolved.exist?)
  end
end

workspace_files = Dir[root.join("workspace/{*,.*}")].map { |path| File.basename(path) }
  .reject { |name| [".", ".."].include?(name) }.sort
check.call("clean learner workspace", workspace_files == %w[.gitkeep ABOUT.md], "got #{workspace_files.join(', ')}")

docs_text = markdown_files.reject { |path| path.include?("/data/") }.map { |path| File.read(path) }.join("\n")
forbidden = ["CLAUDE.md", ".claude/", "Claude Code", "onboarding drives 1 in 4", "X% of churned accounts", "thanks, you're on the list"]
forbidden.each { |phrase| check.call("obsolete phrase absent: #{phrase}", !docs_text.include?(phrase)) }

ignore = root.join(".gitignore").read
check.call("local secret patterns ignored", ignore.lines.map(&:strip).include?(".env") && ignore.lines.map(&:strip).include?(".env.*"))
check.call("mentor completion state", root.join("AGENTS.md").read.include?("Complete - Course finished"))
check.call("truthful demo form", root.join("missions/08-build-the-mvp/MISSION.md").read.include?("Demo only - your email will not be saved"))
check.call("Mission 08 stays local", root.join("missions/08-build-the-mvp/MISSION.md").read.include?("Do not use a site builder or hosting workflow"))
check.call("Mission 08 forbids invented evidence", root.join("missions/08-build-the-mvp/MISSION.md").read.include?("interview IDs, timestamps, statistics, or attributions unless each one is verified"))
check.call("learner commit gate", root.join("missions/09-save-your-work/MISSION.md").read.include?("learner-created commit"))
check.call("GitHub Pages docs path", root.join("missions/10-go-live/MISSION.md").read.include?("select that branch and the `/docs` folder"))
check.call("plugin unavailable alternative", root.join("missions/11-power-tools/MISSION.md").read.include?("hypothetical permission checklist"))

passes.each { |label| puts "PASS #{label}" }
if errors.empty?
  puts "\nCourse validation passed: #{passes.length} checks."
  exit 0
end

errors.each { |error| warn "FAIL #{error}" }
warn "\nCourse validation failed: #{errors.length} issue(s), #{passes.length} check(s) passed."
exit 1
