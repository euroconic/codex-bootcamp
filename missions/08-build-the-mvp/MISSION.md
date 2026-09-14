# Mission 08 — Build the MVP

> Mentor: this is where a non-technical person builds a real, working web page and sees it in their browser. This is a constrained local repository exercise, not a separate website project: do not invoke a site-building or hosting workflow, scaffold another project, or deploy. Edit only a single self-contained `workspace/mvp/index.html` with inline HTML, CSS, and JavaScript: no CDN, build tools, npm, framework, or network dependency. The page should reflect THEIR PRD (their positioning, their wedge, their target user). After building, tell them exactly how to open it (double-click the file, or "open it for me").

## Goal
Build a working landing page MVP for Signal: a single web page that pitches the product and prototypes a waitlist call to action. It should open in a browser with a double-click and must be honest about whether an email is actually saved.

## Why it matters
The fastest way to test a product message is to build the promise: a landing page that says what the product does and asks "want in?" A visual prototype tests clarity and interest in conversation. It measures real demand only when responses are collected with consent. You are about to build a tangible thing from your own research and PRD.

## What to do
1. Tell your mentor to base the page on your `PRD.md` (headline, the wedge, the target user, the top features).
2. Before generating the full page, ask for options instead of a finished result: "based on my PRD, propose 2-3 different directions for this landing page, headline angle and layout, before you build anything. Just describe them, don't build yet." Pick the one you like best, or mix pieces of two. This is a habit worth keeping on any bigger build: get Codex to lay out its options before it touches files. If your interface offers Plan mode, you may use it here; the plain-English instruction works in every interface.
3. Ask for the build. A strong prompt:
   > "This is an existing-repository course artifact, not a separate website project. Do not use a site builder or hosting workflow, scaffold a project, install anything, or deploy. Edit only workspace/mvp/index.html. Build the single-file Signal landing page from my PRD and our chosen direction using plain HTML with inline CSS and JavaScript, so it opens with a double-click, works without a network connection, and needs no build step. Include: a clear headline and subhead from our positioning, 3 feature highlights from the PRD, a short 'how it works' section, and a demo waitlist form. Label the form 'Demo only - your email will not be saved' and, on submit, say 'Demo complete - no email was stored.' Do not include social proof, evidence excerpts, customer quotes, interview IDs, timestamps, statistics, or attributions unless each one is verified in a named source file; omit unverified evidence instead. Make it look clean and modern, like a real product's homepage, not a generic template."
4. Open it: ask "open workspace/mvp/index.html in my browser" (or double-click the file yourself).
5. Iterate like a designer: "make the headline punchier", "change the accent color to teal", or "add one exact customer-pain quote after verifying it in the interview transcript and naming the speaker." Never turn a discovery quote into a product endorsement. Watch the page update.
6. Make it feel more like a real app, not just a poster: ask for one more touch of interactivity within the same file, for example a "how it works" section with clickable steps or the demo form swapping to its honest no-storage confirmation. Small interaction beats a static wall of text.

## Definition of Done
- `workspace/mvp/index.html` exists and opens in a browser as a coherent landing page.
- The content reflects the learner's own positioning/PRD (headline, features, target user), not generic filler.
- It has a waitlist call-to-action element that either clearly says it is a no-storage demo or uses a real, consent-based submission endpoint chosen by the learner.
- It never claims an email was saved unless a real submission result proves that it was.
- Every quote, evidence excerpt, interview label, timestamp, statistic, and attribution is traceable to a supplied source file; unverified evidence is omitted.

## Hints (mentor: one at a time)
1. One file, no tooling. Inline CSS and JavaScript keep it double-clickable and independent of the network. Avoid CDNs and anything that needs `npm install`.
2. The page should echo their PRD. If the headline is generic, point them back to their positioning sentence from Mission 03.
3. Encourage at least two visual iterations so they feel the "design by conversation" loop.
4. The demo form does not need a backend, but it must say the email is not stored before and after submission. A real waitlist needs the learner to choose a service, review its data access, and verify a successful submission.
5. Product UI can use neutral labels, but never decorate it with invented interview numbers, timestamps, quotes, or metrics. Either verify evidence in `data/` and name the source or leave it out.

## What you just learned
You can build and restyle a working web page by describing it, then refine it like talking to a designer. A prototype can test the message; real demand measurement requires truthful data collection.
