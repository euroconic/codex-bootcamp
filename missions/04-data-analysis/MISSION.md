# Mission 04 — Data Analysis

> Mentor: this is the "wow" mission for non-technical people. They will analyze a 151-row dataset without touching a spreadsheet formula or a line of code. Make sure the insights are grounded in the actual data, and offer to produce a simple chart (an HTML/SVG bar chart saved to workspace is fine, no heavy tooling needed).

## Goal
Analyze the 151 feedback records in `data/feedback.csv` and produce a data-insights report: the top themes, which segments appear most often, and which themes are associated with records marked as churned.

## Why it matters
Opinions lose to data in any serious room. A founding PM who can say "onboarding friction appears in N of M feedback records marked as churned" makes a stronger case than the loudest customer can. You are about to do real analysis that used to take a person two weeks (remember Derek's story).

## What to do
1. Ask your mentor to look at the data first: "open data/feedback.csv and tell me what columns it has and how many rows."
2. Then ask for the analysis. A strong prompt:
   > "Analyze data/feedback.csv. Treat each row as one feedback record, not one customer account. Find the top recurring themes in the free-text feedback, count how often each appears, break them down by the segment and churn fields, and tell me which themes are most associated with records marked as churned. Show every numerator and denominator, avoid causal claims, and save the results to workspace/data-insights.md."
3. Dig deeper with follow-ups:
   - "Which segment complains most about pricing?"
   - "Among feedback records marked as churned, which themes appear most often?"
   - "What is the single biggest theme overall?"
4. Ask for a simple chart: "make a basic bar chart of the top themes and save it as workspace/themes-chart.html." Then open it: double-click the file, or if it opens as text, right-click it and choose Open With > your browser.

## Definition of Done
- `workspace/data-insights.md` exists with quantified findings (counts or percentages, broken down by theme and ideally by segment / churn).
- The report names the unit of analysis as a feedback record, shows denominators for percentages, and describes relationships as associations rather than causes.
- A chart file exists in `workspace/` (e.g. `themes-chart.html`).

## Hints (mentor: one at a time)
1. The feedback column is free text with no theme labels. The job is to read it, group it into themes, and count. That is the whole point.
2. Push for numbers. "Onboarding is a problem" is weak. "Onboarding appears in N of 151 feedback records and A of B records marked as churned" is strong.
3. There is a real signal in here connecting onboarding and pricing pain to churn. If the learner finds it, celebrate it.
4. For the chart, a self-contained HTML file with inline SVG or a CDN chart library opens with a double-click, no install needed.
5. Watch the churn wording. "Churn rate within a theme" (of the feedback records mentioning onboarding, how many are marked churned) is NOT the same as "onboarding's share of records marked churned." They sound alike and mean different things. This file has feedback rows, not stable account IDs, so do not call either number an account rate or say onboarding caused churn.
6. One comment can belong to two themes, so theme percentages can add up to more than 100%. Mention this once so the numbers do not confuse a beginner.

## What you just learned
You can interrogate a dataset in plain English, get quantified answers, and visualize them, with zero spreadsheet skills. Data analysis is now a conversation.
