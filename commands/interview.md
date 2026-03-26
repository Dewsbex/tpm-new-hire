---
name: interview
description: >
  Deep-intake interviewing skill. Use this skill whenever starting a new project,
  kicking off a feature, describing a goal or idea, or planning anything with
  meaningful scope. Triggers on "I want to build", "help me plan", "new project",
  "kick this off", "let's start", "I'm thinking of", "interview me", or
  "ask me everything". Do NOT skip this skill and jump straight to planning —
  high-quality output requires high-quality input.
---

# Interview

A structured intake interview to extract everything Claude needs before planning or building anything. The goal is zero ambiguity — no assumptions, no gaps — so that downstream work can be executed with confidence.

---

## Core Philosophy

> "A plan built on incomplete information is a guess with extra steps."

This skill walks every branch of the decision tree relevant to the project. It does not rush to solutions. It does not assume. It surfaces constraints, risks, and success criteria that the user may not have thought to mention.

---

## Interview Protocol

Run these phases **in order**. Each phase is a branch of the tree. Do not skip phases; compress them if the user is clearly expert on a domain.

### Phase 1 — The Core Goal
Establish the single most important outcome.

- What does success look like in one sentence?
- Who is this for — you, a specific person, customers, a team?
- What problem does this solve? What happens if it isn't solved?
- Has this been attempted before? What happened?

### Phase 2 — Scope and Constraints
Establish what is in and out of bounds.

- What is explicitly **in** scope for this project?
- What is explicitly **out** of scope — what are you deliberately NOT doing?
- What are the hard deadlines or time constraints?
- What is the budget, if any (time, money, tokens, infra cost)?
- Are there any regulatory, legal, or compliance constraints?

### Phase 3 — Technical Context
Establish the build environment and dependencies.

- What tech stack is already in play (language, framework, platform, infra)?
- What existing systems, APIs, or data sources does this touch?
- What are the deployment targets — local, VM, cloud, edge, mobile?
- Are there authentication, secrets, or access constraints to know about?
- What tools or services are available vs. off-limits?

### Phase 4 — Stakeholders and Users
Establish who cares and what they care about.

- Who are the end users? What are their expectations or skill levels?
- Who else has a stake in this — manager, client, partner?
- Who will maintain this after it's built?
- Are there any approval or sign-off steps required?

### Phase 5 — Risks and Blockers
Surface what could go wrong before it does.

- What is most likely to delay or derail this project?
- What dependencies are outside your control?
- What is the worst-case fallback if the primary approach fails?
- Are there known unknowns — things you know you don't know yet?

### Phase 6 — Definition of Done
Lock in what "finished" means.

- What is the minimum viable outcome (must-have)?
- What would make this excellent vs. merely acceptable?
- How will you validate or test success?
- What does the handoff or launch look like?

---

## Interview Conduct

- Ask **one phase at a time**. Do not front-load all questions.
- Within each phase, ask the most important questions first.
- If the user gives a short answer, probe once: *"Can you say more about that?"* or *"What's driving that constraint?"*
- If a phase is clearly irrelevant, compress or skip it and note why.
- After all phases, produce a **Capture Summary**: a structured recap of everything learned, grouped by phase. Ask the user to confirm or correct it before anything else is produced.

---

## Output: Capture Summary Format

```
## Capture Summary

**Core Goal:** [one sentence]
**Success Looks Like:** [what done means]
**For:** [who]
**Scope:** [what's in / what's out]
**Constraints:** [time / budget / tech / compliance]
**Stack & Environment:** [platforms, tools, APIs]
**Stakeholders:** [who cares, who approves, who maintains]
**Top Risks:** [ranked list]
**Definition of Done:** [MVP + stretch]

Confirmed? Ready to Draft Project Brief →
```

Once the user confirms, this skill's job is done. The output feeds directly into the **Draft Project Brief** skill.
