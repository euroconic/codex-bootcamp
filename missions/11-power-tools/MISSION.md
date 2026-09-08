# Mission 11 - Power Tools (Bonus)

> Mentor: this mission is optional. Teach one concept at a time. The learner already built a skill in Mission 01, so this mission adds two new ideas: deliberate subagent delegation and safe plugin evaluation. Do not install a plugin, connect an account, or send data outside the project without the learner's explicit approval.

## Goal

Delegate two independent checks to subagents, combine their findings, and evaluate one plugin or connector without giving it unnecessary access.

## Why it matters

Bigger tasks often contain pieces that can be done independently. Subagents let Codex work on those pieces in parallel and return a combined result. Plugins and connectors extend what Codex can reach, but that convenience comes with permissions and data-sharing decisions worth understanding.

## Three different tools

- A **skill** is a saved workflow. You built one in Mission 01.
- A **subagent** is a temporary helper that handles one bounded part of a larger request and reports back.
- A **plugin** packages reusable capabilities and may connect Codex to an external service or data source.

## What to do

### Step 1 - Choose two independent checks

Use the Signal MVP from Mission 08. Ask Codex:

> Use two subagents in parallel. Have one review `workspace/mvp/index.html` for accessibility and usability issues. Have the other compare its claims and features with `workspace/PRD.md`. Do not edit any files. Wait for both, then give me one combined list of the five most important findings.

These checks are independent, which makes them a good fit for delegation. If the learner uses the CLI, `/agent` can show agent threads. In the desktop app or IDE, use the visible subagent activity panel when available.

See the [official Codex subagent guide](https://learn.chatgpt.com/docs/agent-configuration/subagents) if the interface behaves differently from this brief.

### Step 2 - Inspect the result

Ask which subagent produced each finding and what evidence it used. Challenge one weak or generic finding. The goal is to learn that parallel work still needs review.

### Step 3 - Evaluate a plugin or connector safely

Ask:

> Show me one available plugin or connector that could help with product work. Explain what it can do, what account or data it may access, and whether it is worth using for this course. Do not install, connect, or authorize anything yet.

Then make a decision: **use**, **consider later**, or **skip**. Installing or connecting it is optional. If the learner chooses to continue, explain the permission request before it appears and use only non-sensitive course data for the test.

If plugins are unavailable in the learner's interface or organization, evaluate the concept using the information Codex can show and record that limitation. Do not block completion on an external account.

### Step 4 - Write down the lesson

Save `workspace/power-tools-notes.md` with:

- The two delegated checks and the combined findings.
- The learner's explanation of how a skill differs from a subagent.
- The plugin or connector evaluated, its relevant access, and the learner's decision.

## Definition of Done

- Codex completed the two read-only checks through explicit subagent delegation and combined the results.
- `workspace/power-tools-notes.md` exists with the findings and the learner's own skill-versus-subagent explanation.
- The notes identify one plugin or connector, its relevant permissions or data access, and a use/consider/skip decision.
- No plugin or external account was connected without explicit learner approval.

Because this mission is optional, consciously skipping it is also a pass. Record the skip in `PROGRESS.md` and continue to the Capstone.

## Hints

1. Independent work is the clue: accessibility review and PRD comparison do not depend on each other.
2. Keep each delegated task narrow and read-only.
3. A plugin decision is about value versus access, not how impressive the feature sounds.
4. If no plugins are available, record what you checked and why installation was not attempted.

## What you just learned

Skills save repeatable workflows. Subagents split bounded work and report back. Plugins can add outside capabilities, but you inspect their access before connecting them. You now know when each one fits.
