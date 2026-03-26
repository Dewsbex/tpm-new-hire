---
name: draft-project-brief
description: >
  Structured project brief generator. Use this skill whenever the user asks to create,
  formalise, or document a project plan, brief, spec, or PRD. Triggers on "draft a brief",
  "write up the plan", "create a spec", "formalise this", "PRD", "project document", or any
  time a Capture Summary from the Interview skill has been confirmed. Do NOT produce a
  generic plan or freeform notes — this skill always outputs a structured brief in the
  canonical format defined here. If the user hasn't been through the Interview skill first
  and the project scope is unclear, prompt them to run /interview before proceeding.
---

# Draft Project Brief

Produces a structured, actionable project brief. Not a wall of prose. Not a vague summary. A navigable document with clear sections, explicit decisions, and unambiguous success criteria.

---

## Core Philosophy

> "A brief is a contract between what you intend and what gets built."

---

## Prerequisites

Before running this skill, the following should be known (ideally confirmed via the **Interview** skill):

- Core goal (one sentence)
- Scope: in and out
- Technical stack and environment
- Constraints: time, budget, compliance
- Stakeholders and users
- Definition of done (MVP + stretch)

If any of these are missing, pause and fill the gaps before continuing.

---

## Brief Structure

Produce the brief in this exact format. Do not reorder sections. Do not merge sections. Do not omit sections — if a section doesn't apply, write "N/A — [reason]".

---

```markdown
# Project Brief: [Project Name]

**Owner:** [Name or role]
**Date:** [Today's date]
**Version:** 1.0
**Status:** Draft

---

## 1. Mission Statement
One sentence. What this project does and why it matters.

---

## 2. End Goal
What the finished product looks like in concrete terms.
What the user can do that they couldn't do before.
What stops being a problem.

---

## 3. Scope

### In Scope
- [Explicit list of what this project covers]

### Out of Scope
- [Explicit list of what this project does NOT cover]
> Note: Out-of-scope items are not "later" items unless explicitly tagged as Phase 2.

---

## 4. Constraints

| Constraint | Detail |
|------------|--------|
| Deadline | |
| Budget | |
| Tech stack | |
| Compliance / Legal | |
| Team / Resource limits | |
| Other | |

---

## 5. Technical Context

- **Primary stack:** [Languages, frameworks, platforms]
- **Infra / deployment target:** [Where this runs]
- **External dependencies:** [APIs, services, data sources]
- **Secrets / access:** [Auth approach, any known blockers]
- **Existing systems touched:** [What this integrates with or affects]

---

## 6. Stakeholders

| Role | Person | Responsibility |
|------|--------|----------------|
| Owner | | Final decision-maker |
| Builder | | Primary implementer |
| User | | End user of the output |
| Reviewer | | Signs off on completion |
| Maintainer | | Owns it post-launch |

---

## 7. Success Criteria

### Minimum Viable (must-have)
- [ ] [Criterion 1]
- [ ] [Criterion 2]

### Excellent (stretch)
- [ ] [Criterion 1]
- [ ] [Criterion 2]

### Failure Conditions
- [What would make this project a failure even if it ships]

---

## 8. Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| [Risk 1] | High/Med/Low | High/Med/Low | |
| [Risk 2] | | | |

---

## 9. Open Questions
List anything not yet decided that will need resolution before or during execution.

- [ ] [Question 1]
- [ ] [Question 2]

---

## 10. Next Steps
> To be populated by the **Next Milestone** skill.

---

_Brief confirmed by owner: [ ] Yes / [ ] Pending_
```

---

## Post-Draft Instructions

1. Present the completed brief to the user.
2. Ask them to review and confirm, or flag any corrections.
3. On confirmation, update the version to **1.0 — Confirmed** and note the date.
4. Inform the user: *"Brief locked. Run /next-milestone to carve out your first sprint."*

---

## Brief Versioning

- Every substantive change bumps the version: 1.0 → 1.1 → 2.0 for scope changes.
- The **Update** skill is responsible for triggering version bumps during execution.
- Always keep the previous version accessible — do not overwrite, append new versions.
