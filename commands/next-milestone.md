---
name: next-milestone
description: >
  Milestone planning skill. Use this skill whenever the user asks what to work on next,
  wants to break a project into immediate next steps, or has just confirmed a project brief
  and needs an execution plan. Triggers on "what's next", "next milestone", "what should I
  do now", "plan the next sprint", "break this down", "what are the next steps", or any time
  the project brief is confirmed and execution needs to begin. Always produces a focused,
  time-boxed sprint — not a full project roadmap.
---

# Next Milestone

Carves the immediate next sprint from the project brief. Not a full roadmap. Not a wishlist. A tight, executable set of tasks you can start today.

---

## Core Philosophy

> "The best plan is the one you can act on in the next hour."

This skill ignores everything beyond the immediate horizon. It takes the confirmed project brief and extracts only what matters right now — the minimum set of steps needed to move from the current state to the next meaningful checkpoint.

---

## Prerequisites

- A confirmed project brief (from **Draft Project Brief** skill), OR
- A clear statement of the current project state and goal from the user.

If neither exists, ask the user to confirm the current state of the project in 3-5 bullet points before proceeding.

---

## Step 1 — Establish Current State

Ask or confirm:
- What has already been completed?
- What is in progress right now?
- What is actively blocked, and why?

Map this against the brief's success criteria. Identify the gap between "now" and "done".

---

## Step 2 — Identify the Critical Path

From the gap, extract only the tasks that:
1. Are **not blocked** by something outside the user's control
2. Are **required** before anything else can proceed
3. Can be completed within **one focused session or sprint** (typically 1–3 days)

Deprioritise anything that is:
- Nice-to-have but not blocking
- Dependent on an unresolved external factor
- Better handled in a later sprint

---

## Step 3 — Draft the Sprint

Output the sprint in this format:

```markdown
## Next Milestone: [Milestone Name]

**Sprint Goal:** [One sentence — what will be true when this sprint is done]
**Time Estimate:** [Realistic hours or days]

---

### Tasks

| # | Task | Owner | Est. Time | Blocker? |
|---|------|-------|-----------|----------|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |

---

### Definition of Done (this sprint)
- [ ] [Criterion 1]
- [ ] [Criterion 2]

### What This Unlocks
[Brief statement of what becomes possible after this sprint completes — the next branch of the tree.]

### Deferred (not this sprint)
- [Item 1 — reason deferred]
- [Item 2 — reason deferred]
```

---

## Step 4 — Confirm and Go

Present the sprint plan to the user. Ask for a simple confirmation: *"Happy with this? Start the sprint, or adjust?"*

On confirmation, remind the user: *"When you've completed this milestone, run /update to log progress and generate the next sprint."*

---

## Compounding Use

This skill is designed to be run repeatedly throughout a project's lifecycle:

- After each sprint completes → run **Update** → then re-run **Next Milestone**
- After a scope change → re-confirm the brief → re-run **Next Milestone**
- When blocked → re-run **Next Milestone** to identify parallel paths

The output always reflects the current state of the project, not a static pre-planned roadmap.
