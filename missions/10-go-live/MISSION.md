# Mission 10 — Go Live (Bonus)

> Mentor: this mission is OPTIONAL and the learner knows it. Do a prerequisite check FIRST and be honest: if they do not want to install anything or make an account, congratulate them on finishing the core course and point them to Mission 11, or the Capstone if they want to skip both bonuses. If they do want to ship it live, walk them through the simplest path. Never make them feel they failed by skipping this.

## Goal
Put your landing page on the public internet with a real URL you can send to anyone, using Vercel or GitHub Pages (both free hosting options).

## Why it matters
A landing page on your laptop is hard to share. A public link lets people review the message and experience. It measures sign-up demand only if the page uses a real, consent-based form; the default Mission 08 demo does not collect emails. Getting from "it works on my machine" to "here is the link" is the last mile that most people never cross.

## Before you start (prerequisite check)
This is the one mission that needs a couple of real-world things. Your mentor will check with you:
- **Node.js installed?** (a free tool the Vercel command line needs). If not, your mentor can point you to https://nodejs.org or you can use the drag-and-drop option below.
- **A free Vercel account?** Sign up at https://vercel.com (free for personal projects).

If you would rather not install or sign up for anything, that is completely fine. You have finished the core course. Type `next` to continue to the optional Power Tools mission; you may skip that one too and continue to the Capstone.

## What to do (pick the easier path for you)

### Path A — Drag and drop (no command line, easiest)
1. Go to **https://vercel.com/drop** (this is Vercel's dedicated drag-and-drop page, no GitHub repo needed). Log in if asked.
2. Your landing page is the folder `workspace/mvp/`. Ask your mentor: "which folder do I drag to vercel.com/drop?" (answer: the `workspace/mvp` folder).
3. Drag that folder onto the page. You get a live URL in under a minute.

> Note: do NOT use the generic dashboard "Add New Project" flow for this. That one expects your code to be in a GitHub repository, and your MVP is just a local folder. Vercel Drop is the route that works for a plain folder.

### Path B — Command line (with Node installed)
The **Vercel CLI** is just a way to talk to Vercel from your terminal instead of clicking around their website, you type a command, it does the equivalent of a few clicks.
1. Ask your mentor: "walk me through deploying workspace/mvp to Vercel using the Vercel CLI, step by step, and explain each command." It will typically be:
   - `npm install -g vercel` — installs the Vercel command-line tool, once, globally on your computer.
   - `vercel login` — signs the CLI into your Vercel account (opens your browser to confirm).
   - `cd workspace/mvp && vercel --prod` — deploys the folder straight to a live, public URL.
2. Your mentor will explain each command first. Codex may run it only after you choose the command-line route and approve any installation, network, sign-in, or deployment action.
3. Do not panic at red text, it is usually normal. The usual culprits if something fails are: wrong folder, or not logged in yet.

### Path C — GitHub Pages (if you already pushed to GitHub in Mission 09)
If you completed the optional GitHub step in Mission 09, GitHub itself can host your page for free, no separate account needed:
1. Ask your mentor: "copy my static MVP into `docs/`, commit and push that copy, then walk me through enabling GitHub Pages from the `docs/` folder."
2. Confirm `docs/index.html` exists and opens locally. Commit and push `docs/` to the branch used by your GitHub repository (usually `main`).
3. In GitHub, open **Settings > Pages**. Under **Build and deployment**, choose **Deploy from a branch**, select that branch and the `/docs` folder, then save. GitHub Pages accepts only the repository root or `/docs` for branch-based publishing; do not point it at `workspace/mvp/`.
4. Wait for GitHub to show the `github.io` URL, open it, and confirm the Signal page loads before claiming success.

If GitHub's screen differs, use its official [publishing-source guide](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site).

## Definition of Done
- A live, public URL exists that shows your Signal landing page, OR
- The learner consciously chose to skip the bonus (also a pass).

## Hints (mentor: one at a time)
1. Path A (drag and drop) is the lowest-friction route for non-technical learners. Suggest it first, unless they already have a GitHub repo from Mission 09, in which case Path C is a nice one-click-setting option.
2. Vercel can serve the `workspace/mvp/` folder directly. GitHub Pages needs the copy in `/docs` (or a separate Actions workflow, which this beginner course does not use).
3. If a deploy fails, the usual culprits are: wrong folder selected, or not logged in. Check those first.
4. Celebrate the live URL hard. Sending a real link to a real product is a genuine "I made this" moment.

## What you just learned
You can take something from your laptop to a public URL anyone can open. Shipping is a skill, and you just did it.
