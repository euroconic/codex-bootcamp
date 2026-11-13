# Mission 4B - A Reviewer Who Can Only Read

> Mentor: stretch mission. The point is the idea of a role: one job, limited access, own room. Let the learner decide what the reviewer must not be allowed to do before they write the file. Resist explaining all the planted problems; the reviewer should find them.

## Goal

Create a read-only reviewer called `brd-reviewer`, saved as a skill, that reads a BRD and reports problems and never changes a file. Run it on `data/corvane/s4/brd-draft-with-issues.md` and save its report to `workspace/work/brd-review.md`.

## Why it matters

Reviewing a long document is tiring and you stop seeing your own mistakes. A reviewer colleague with fresh eyes catches what you miss. And a reviewer who can only read is safe: it cannot "fix" things on its own or overwrite your work.

A **role** is a colleague with one job and limited access: it reads what you point it to and returns a short report. In this bootcamp you build the reviewer as a **skill** with strict read-only rules, because a skill is the simplest thing to create and inspect. A skill is a recipe the agent follows; a **subagent** (Mission 11) is a helper that works in its own room and reports back. Here the recipe says: look, never touch. Be honest about one limit: a skill's read-only rule is an instruction, not a locked door. The real lock is the permission mode of your session, so run the review in a read-only mode when your Codex interface offers one.

## What to do

1. Open `data/corvane/s4/brd-draft-with-issues.md` and read it yourself for two minutes. Write down any problems you notice. Do not look at the answer yet.
2. Ask your agent to create the colleague:
   > "Create a skill in .agents/skills/brd-reviewer/SKILL.md. Its job: review a business requirements document. It is strictly read-only: it may read and search files, and it must never create, edit, move or delete any file; if asked to, it refuses and says it is a read-only reviewer. It checks that every requirement (1) can be traced to something said in a call or document, (2) has an acceptance criterion, (3) does not contradict another requirement, (4) contains no vague words like fast, easy or soon without a number. It returns a short report: issue, where (BR number and line), why it is a problem, a suggested fix."
3. Open the new file. Check the top part (between the two lines of `---`): it should have a `name` and a `description`. Then find the read-only rule in the instructions. That rule is the sign on the door: it tells the reviewer to look and never touch. A skill has no list of allowed tools, so the sign is only as strong as the permission mode you run it in. For a real lock, switch your session to a read-only mode before the review, if your interface offers one.
4. Run it:
   > "Use the brd-reviewer skill on data/corvane/s4/brd-draft-with-issues.md. The call transcripts are in data/corvane/s2/. Do not change the BRD. Give me the report, then save it as workspace/work/brd-review.md."
   (The reviewer only reads. Saving the report is a separate step that the main agent does after the review. That is the point.) If Codex does not pick up the new skill, start a fresh task or session from the bootcamp root, or mention it with `$brd-reviewer`.
5. Compare the report with your own notes from step 1. What did the reviewer find that you missed? What did it flag that is not really a problem?

## Definition of Done

- `.agents/skills/brd-reviewer/SKILL.md` exists with `name`, `description` and an explicit read-only rule (no creating, editing, moving or deleting files).
- `workspace/work/brd-review.md` exists and contains the four issues listed in Mentor reference, each with the BR number and a suggested fix.
- You can say in one sentence why the reviewer is read-only.

## Hints (mentor: one at a time)

1. If the learner left out the read-only rule, ask: "What could go wrong if the reviewer could also write files?"
2. If the report misses the invented requirement, ask the agent: "Which requirement has no matching passage in the two call transcripts? Search for the word email."
3. If the report is long and vague, say: "Ask for one line per issue: BR number, problem, fix."

## What you just learned

You hired a colleague with one job and a "look, do not touch" rule, and it returned a short report. You also learned that a written rule and a permission mode are two different layers, and that limiting what a helper can do is how you trust it.

**Bring it to your job:** create a read-only reviewer skill for the document type you review most often (contracts, specs, reports) and run it before you send anything out.

## Mentor reference

File: `data/corvane/s4/brd-draft-with-issues.md`. Exactly four planted issues:

1. **Not traceable (invented requirement):** BR-4, lines 31-33. The automatic email to suppliers appears in neither call. Fix: remove it or move it to Open questions.
2. **No acceptance criterion:** BR-7, lines 43-44. The comment trail has no acceptance criteria. Fix: add a testable criterion.
3. **Contradiction:** BR-5 (lines 35-37) says only reconciliation can close a discrepancy; BR-6 (lines 39-41) says only the buyer can. The calls left this open (14 Oct, 05:18). Fix: one rule, or move to Open questions until the purchasing head decides.
4. **Vague word:** BR-3, lines 27-29: "fast". Fix: a measurable target (for example, the list is shown within 5 seconds of loading a file).

Not issues (do not count as findings): BR-2 uses 1% of line value, which is correct per the 21 Oct follow-up. The skill file must contain an explicit read-only rule; a version that allows the reviewer to write, edit or run commands fails the mission. Codex skills have no tool allowlist, so do not look for a `tools:` line.
