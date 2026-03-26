---
name: update
description: >
  Progress update and sync skill. Use this skill whenever the user reports completing a task,
  finishing a milestone, hitting a blocker, or wanting to log what happened during a sprint.
  Triggers on "I finished", "update you", "milestone done", "ran into an issue", "here's
  what happened", "I'm stuck", "just completed", "ran into a problem", "quick update", or
  any time the user is narrating what they did or experienced since the last session. This
  skill is the connective tissue between milestones — it keeps Claude and the user in sync
  so no context is lost between sessions. Always run this before re-running /next-milestone.
---

# Update

Captures progress, logs what happened, and keeps the project state accurate. The update is the handshake between what was planned and what actually occurred.

---

## Core Philosophy

> "The plan is not reality. The update is."

Milestones get completed differently than they were planned. Things take longer. Shortcuts are found. Unexpected blockers appear. Decisions get made mid-sprint that change what comes next. This skill captures all of that — not to audit the user, but to ensure that future planning is grounded in what's actually true.

---

## Update Protocol

Run through these steps in order. The user provides the narrative; Claude structures it.

### Step 1 — Sprint Debrief

Ask the user to narrate what happened. Encourage honesty over optimism:

- What did you complete from the sprint plan?
- What did you NOT complete? Why?
- What took longer than expected? What was faster?
- Did you make any decisions that changed the scope or approach?
- What surprised you — good or bad?

Let the user talk. Do not interrupt with follow-ups until they're done. Then probe any gaps.

---

### Step 2 — Capture the Reality

Produce a structured update log entry:

```markdown
## Update Log — [Date]

**Sprint Reviewed:** [Milestone name]
**Logged By:** [User]

### Completed ✅
- [Task 1] — [Any notes on how it went]
- [Task 2]

### Incomplete / Deferred ⏳
- [Task] — Reason: [blocker / deprioritised / not started]

### Trials & Tribulations
[Honest account of what was hard, what failed, what was learned.
This is the most valuable part of the log — don't skip it.]

### Decisions Made
- [Decision 1] — Impact: [what this changes]
- [Decision 2]

### Scope Changes
- [Change, if any] — Triggers brief version bump: [Yes / No]

### Current State
[One paragraph: where the project actually stands right now,
in concrete terms. This is what Claude will use as ground truth
for the next sprint.]

### Carry-overs to Next Sprint
- [Item 1]
- [Item 2]
```

---

### Step 3 — Sync Check

After producing the log, ask the user:

> *"Does this accurately reflect what happened? Anything I've missed or misrepresented?"*

Correct any errors. This log is the source of truth — it must be accurate.

---

### Step 4 — Brief Version Bump (if needed)

If the update revealed:
- A change in scope (something added or removed)
- A new constraint (time, budget, tech)
- A decision that invalidates part of the original plan

...then flag this and propose a brief update:

> *"This update includes a scope change [describe it]. I recommend bumping the project brief to v[X.X]. Want me to draft the update?"*

If yes, produce the revised sections only (not the full brief). Append to the existing brief — do not overwrite.

---

### Step 5 — Hand Off

Once the log is confirmed and the brief is synced (if needed):

> *"Project state is updated. Ready to plan the next sprint? Run /next-milestone to continue."*

---

## Tone Guidance

This is a safe space for honest reporting. The goal is accuracy, not optics. If something took twice as long as expected, that's useful data. If an approach failed, that's important context. Claude does not judge, does not pad responses with motivational commentary.

The update log is written for the future version of Claude that has no memory of this session. It must contain everything that future Claude needs to pick up where this session left off.

---

## Update Cadence

- Run after every sprint, regardless of whether it was fully completed
- Run whenever a significant blocker or decision occurs mid-sprint
- Run at the start of a new session if significant time has passed since the last one
- Do not run more than once per sprint unless something material has changed

---

## Compounding Value

Each update log compounds. After several updates, Claude can identify:
- Recurring blockers (systemic issues to solve)
- Consistent over/under-estimation patterns (calibration opportunities)
- Scope creep signals (brief discipline issues)
- Momentum trends (is the project accelerating or stalling?)

The **Auto Improvement** skill uses these logs as its primary input.
