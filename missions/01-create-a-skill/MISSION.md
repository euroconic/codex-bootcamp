# Mission 01 - Create a Reusable Skill

> Mentor: this is a "watch me, then you try" mission. First show the example skill and explain it in plain language. Then help the learner customize or build one and run it. Do not pass them until they have made at least one real choice about its role, tone, output, or test input.

## Goal

Build a reusable Codex skill: a saved workflow with a clear job that Codex can use again without the learner repeating every instruction.

## Why it matters

One-off prompting is useful, but repeated work gets faster when the method is saved. Instead of explaining how to turn weekly notes into a status update every Friday, you create the workflow once and call it when needed.

## What a skill is

A skill is a folder containing a file named `SKILL.md`. The file has:

- A **name** and **description**, so Codex knows what the skill does and when it applies.
- **Instructions**, which define the steps, tone, format, and boundaries.
- Optional supporting files, such as templates or reference material.

Project skills live under `.agents/skills/`. The dot means the folder may be hidden in some file browsers. A status-writer skill, for example, lives at `.agents/skills/status-writer/SKILL.md`.

The current file format and discovery rules are documented in the [official Codex skill guide](https://learn.chatgpt.com/docs/build-skills).

The bootcamp itself uses a related idea at a larger scale: root `AGENTS.md` gives Codex persistent instructions for acting as your mentor. A skill is narrower. It packages one repeatable job and is used when that job comes up.

## What to do

### Step 1 - Watch

Ask: "show me the example status-writer skill and explain each part." The example is in `missions/01-create-a-skill/templates/status-writer/SKILL.md`.

### Step 2 - Choose your skill

Pick the one most useful to your job, or invent your own:

1. **Status Writer** - turns rough notes into a crisp weekly team update.
2. **Management Reporter** - turns project notes into a calm, decision-focused executive report.
3. **Jira Story Writer** - turns a feature idea into small user stories with acceptance criteria.

### Step 3 - Build it

Tell your mentor which option you chose and say:

> Help me create this as a project skill under `.agents/skills/`. Start from the example, but ask me to choose its tone and output format before you write it.

The folder name should use lowercase kebab-case, such as `status-writer`. Its main file must be named exactly `SKILL.md`.

### Step 4 - Run it

Give it realistic input and ask Codex to use the skill. In the CLI or IDE you can type `$` to mention a skill when the selector is available; in the desktop app you can select it from Skills. A direct request such as "use my status-writer skill on these notes" also makes the intent clear.

Save the input and result to `workspace/agent-sample-run.md`. If the new skill does not appear immediately, start a fresh Codex task or session from the repository root and try again.

## Definition of Done

- A learner-created `.agents/skills/<skill-name>/SKILL.md` exists.
- It contains valid `name` and `description` frontmatter plus specific workflow instructions.
- The learner made at least one choice that changed the skill.
- `workspace/agent-sample-run.md` contains a realistic test input and the skill's output.

## Hints

1. Copy the example skill folder and change one thing at a time.
2. Make the description say both what the skill does and when to use it.
3. Good instructions specify output sections, length, tone, and what to avoid.
4. If the learner lacks test input, offer five realistic bullets for their role.

## What you just learned

You can package a repeatable way of working into a project skill. The instructions live with the project, can be reviewed like any other file, and are ready the next time the same job appears.
