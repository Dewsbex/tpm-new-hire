---
name: auto-improvement
description: >
  Retrospective and self-improvement skill. Use this skill whenever the user wants to reflect
  on how a project or workflow is going, identify inefficiencies, improve processes, or
  review what's been done to find smarter ways to work. Triggers on "what could we do
  better", "auto improve", "retrospective", "look back at what we've done", "how can we
  be more efficient", "what patterns do you see", "review our process", "suggest improvements",
  or "what skills should we build next". This skill looks backwards to accelerate forward.
---

# Auto Improvement

Reviews everything in the current project or conversation and surfaces concrete, actionable improvements — to the workflow, the tools, the skills, and the process. Then proposes the next skills to build.

---

## Core Philosophy

> "The best process is the one that improves itself."

Most project retrospectives are vague. They produce platitudes ("communicate better", "plan more") instead of specific interventions. This skill does the opposite: it reads the actual record of what happened — the briefs, updates, decisions, blockers — and extracts specific, addressable patterns.

---

## What This Skill Reviews

### Source Material

Claude will examine (in priority order):
1. **Update logs** — the most honest record of what actually happened
2. **Project brief versions** — what changed and why
3. **Sprint plans vs. actuals** — where estimates were wrong
4. **Trials and tribulations** — recurring friction points
5. **Deferred items** — things that keep not getting done
6. **Decisions log** — choices that had downstream consequences

---

## Analysis Framework

Run these five lenses over the source material:

### Lens 1 — Velocity
- Are sprints completing in the estimated time?
- Is there a pattern of over- or under-estimation?
- Are certain task types consistently slower than expected?

### Lens 2 — Friction
- What types of blockers recur? (technical, resource, decision-making, external)
- Are the same questions being asked repeatedly?
- Is there a step in the workflow that always requires re-work?

### Lens 3 — Scope Discipline
- How many brief version bumps have there been? What caused them?
- Is scope creeping in from a consistent source?
- Are "deferred" items ever actually getting done?

### Lens 4 — Tooling and Process
- Are there manual steps that could be automated or scripted?
- Is Claude being used at the right points in the workflow?
- Are there decisions being made repeatedly that could be codified as rules or templates?

### Lens 5 — Skill Gaps
- What tasks are being done ad hoc that would benefit from a skill?
- What knowledge is being reconstructed from scratch each time?
- What external tools or integrations would accelerate the work?

---

## Output Format

Produce the retrospective in this structure:

```markdown
## Auto Improvement Report — [Date]

**Project / Session Reviewed:** [Name or description]
**Milestones Reviewed:** [Count]
**Period Covered:** [Date range]

---

### What's Working Well ✅
[2–4 specific things the workflow is doing right. Be specific — "brief versioning has
kept scope clean" not "communication is good".]

---

### Patterns Identified 🔍

#### Velocity
[Observation + evidence from the logs]
→ **Recommendation:** [Specific action]

#### Friction
[Recurring blocker pattern + where it showed up]
→ **Recommendation:** [Specific fix]

#### Scope
[Any scope discipline finding]
→ **Recommendation:** [Specific action]

#### Tooling
[Manual step or process gap identified]
→ **Recommendation:** [What to automate, script, or template]

---

### Process Changes (implement now) ⚡

These are small changes that can be adopted immediately, without building anything new:

1. [Change 1 — specific instruction]
2. [Change 2]
3. [Change 3]

---

### Skills to Build Next 🛠️

Based on the patterns above, here are the skills that would most accelerate future work:

| Priority | Skill Name | Why | Estimated Effort |
|----------|-----------|-----|-----------------|
| 1 | [Name] | [Specific gap it fills] | [Small/Med/Large] |
| 2 | | | |
| 3 | | | |

For each suggested skill, provide a one-paragraph draft description that could serve as the
trigger text in the skill's frontmatter.

---

### Summary

[2–3 sentence honest assessment of where the project stands process-wise,
and the single highest-leverage change to make next.]
```

---

## Tone and Honesty

This is not a cheerleading exercise. Nor is it an audit designed to make the user feel bad. It is an honest read of what the data shows. If sprints are consistently late, say so and say why. If the brief is being ignored in practice, name it.

Claude should write this report as a trusted technical co-founder would — direct, evidence-based, and constructive. No padding, no vague affirmations.

---

## Compounding Use

Run this skill:
- After every 3–5 milestones on a longer project
- At the start of a new phase (before re-scoping)
- Whenever the workflow feels inefficient but the cause isn't obvious
- At the end of a project as a post-mortem

The more update logs and brief versions exist, the richer the output.

---

## Self-Improvement Loop

After producing the report, Claude should ask:

> *"Would you like me to draft any of the suggested skills now? I can produce SKILL.md files for any of the items in the 'Skills to Build Next' table."*

This closes the loop: the retrospective doesn't just observe gaps — it proposes and can immediately begin to fill them.
