# AISandboxLab.com Codex Bootcamp

**A Codex Bootcamp by [AISandboxLab.com](https://AISandboxLab.com).**

A self-paced course where **Codex itself is your mentor**. Open this folder in the Codex desktop app, Codex CLI, or the Codex IDE extension, type `begin`, and work through one continuous product case from a fuzzy startup idea to a shipped MVP. No coding background needed.

## Start here

1. Set up one Codex interface: see [INSTALL.md](INSTALL.md).
2. Get your own copy of this project: see [GET-THIS-PROJECT.md](GET-THIS-PROJECT.md).
3. Open the project folder in Codex and type `begin`.

Full walkthrough: [START-HERE.md](START-HERE.md).

## Came here after a live group session?

There is a second track for you: the **Work track**. Instead of a startup, you join Corvane Supply, a fictional distributor, and practice on everyday office work: invoices into a checked spreadsheet, meeting transcripts into follow-ups and requirements, exchange-rate and status reports, a clickable prototype, a read-only reviewer, and your own 30-day pilot. It is organized by session, so after session 3 you practice session 3.

Open the folder in Codex, type `begin`, and tell your mentor which session you just had. The story is in [WORK-CASE.md](WORK-CASE.md).

In the open live group (6 sessions)? Say so too: that group covers the topics in a different order, and [WORK-CASE.md](WORK-CASE.md) has a table that matches each of its sessions to the right mission.

## What you build

You create a reusable Codex skill, an interview report, a market-research brief, a data-insights report, a decision memo, a prioritized backlog, a full PRD, and a working MVP landing page. See [THE-CASE.md](THE-CASE.md) for the fictional startup you will operate.

## Course structure

- `missions/` contains the mission briefs and completion checks.
- `data/` contains the Signal interview, feedback, personas, and competitor notes, plus `data/corvane/` for the Work track.
- `sessions/` contains the Work-track missions, one folder per live session.
- `workspace/` is where your finished work goes.
- `AGENTS.md` turns Codex into your mentor whenever this repository is opened.
- `PROGRESS.md` records which mission comes next.

## When you finish

Add yourself to [SHOWCASE.md](SHOWCASE.md), then bring your work into the **AI Sandbox Lab** community to keep applying the same workflows to real projects.

### Want to go further with a live group?

This bootcamp is the self-paced part. Some things work much better live, with instructors and a group:

- connecting the services you work in (Jira, Confluence, Figma, Google Drive) and deciding what access to give,
- your own proactive agent that runs on a schedule,
- a demo day with feedback on your project, and a 90-day plan for bringing AI into your team.

That is the **AI Sandbox Lab** live group: 6 sessions of 90 minutes, mostly hands-on, with Codex as one of the tools. Details and how to join: [AISandboxLab.com](https://aisandboxlab.com/en).

## Public course

The course repository is [github.com/euroconic/codex-bootcamp](https://github.com/euroconic/codex-bootcamp). Completed learners can follow the instructions in [SHOWCASE.md](SHOWCASE.md) to submit their work.

## Maintainer validation

Before a release, run `ruby scripts/validate_course.rb`. It checks the mission set, fresh progress state, source-data shape, internal links, clean learner workspace, Codex naming, and the critical completion and safety rules.

## Copyright

© Andrew Tomin / AISandboxLab.com. Free for individual self-paced learning. Not for resale or use in paid training run by other companies or individuals without written permission. See [LICENSE](LICENSE) for the full terms.

---

Built by Andrew Tomin, [AISandboxLab.com](https://AISandboxLab.com). Codex is a product of OpenAI.
