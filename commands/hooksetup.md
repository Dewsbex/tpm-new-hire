---
name: hooksetup
description: >
  Universal Zero-Drift Protocol Installer. Detects project type (code/ops/data/multi-system),
  generates adaptive drift management protocols, verifies consistency across all layers, and
  manages accuracy for any build or operational task. Triggers on "hooksetup", "zero-drift",
  "protocol upgrade", "install protocol", "audit my drift", "drift management", or
  "verify consistency".
version: "2.0"
---

# Universal Zero-Drift Protocol Installer v2.0

**For any project type: code, infrastructure, data, operations, or hybrid.**

## Philosophy: EVOLVE, NEVER OVERWRITE

This protocol upgrades projects to autonomous drift detection and accuracy management. It does NOT replace existing files — it patches, merges, and extends them based on what's detected.

---

## PHASE 0: PROJECT DETECTION

Scan the project root for all artifact types to determine which protocol phases run.

### 0.1: Detect Project Type

Run detection checks for:

**Code artifacts:**
- package.json, tsconfig.json (Node/TypeScript/React)
- Cargo.toml (Rust)
- requirements.txt, pyproject.toml, setup.py (Python)
- go.mod (Go)

**Ops/Infrastructure artifacts:**
- Dockerfile, docker-compose.yml (Containers)
- *.tf (Terraform/IaC)
- .github/workflows/*.yml (CI/CD)
- systemd/*.service, cron.* (Process management)
- deploy.sh, .env.example (Deployment)

**Data/Pipeline artifacts:**
- *.sql, migrations/*.sql (Database schema)
- dbt_project.yml (Data transforms)
- airflow_config.py, dags/*.py (Orchestration)

### 0.2: Classify Project Type

| Type | Detection | Example |
|------|-----------|---------|
| **CODE** | Has package.json OR Cargo.toml OR *.py files; no Dockerfile/Terraform | React app, Python lib |
| **OPS** | Has Dockerfile, Terraform, systemd, or CI/CD; optionally has code | VPS daemon, K8s cluster |
| **DATA** | Has .sql, dbt/, airflow_config; may have Python | ETL pipeline, data warehouse |
| **MULTI** | 2+ types detected | React + FastAPI + dbt |

**Output classification to user before proceeding:**

```
## Hooksetup Detection Report

**Project name:** [from directory or git remote]
**Detected type:** [CODE / OPS / DATA / MULTI]
**Artifacts found:** [list specific files/stacks]
**Existing protocol files:** CLAUDE.md [yes/no], DECISIONS.md [yes/no]

**Proposed actions:** [which files will be created/patched]

Proceed? (y/n)
```

**WAIT for confirmation before continuing.**

---

## PHASE 1: AUDIT EXISTING PROTOCOL FILES

Read and score every existing protocol file. Do NOT make changes yet.

### 1.1: Score Each Section

| Section | What to check for | Status |
|---------|-------------------|--------|
| 1. Zero-Drift Architecture | Session gates? Drift detection? Post-task gate? | ⬜ |
| 2. Code Standards | (CODE only) Language gate? Dependency validation? | ⬜ |
| 3. Testing | (CODE only) Red-green-refactor? Exit code checks? | ⬜ |
| 4. Stop Hooks | Concrete commands? Correction loop? Failure recovery? | ⬜ |
| 5. Commit Conventions | (CODE only) Message format? Linkage to tasks? | ⬜ |
| 6. Multi-File Atomicity | Snapshot protocol? All-or-nothing revert? | ⬜ |
| 7. Architecture Decision Log | DECISIONS.md referenced? Enforcement? | ⬜ |
| 8. Operational State | (OPS/MULTI) Service health? Credential audit? | ⬜ |
| 9. Data Contracts | (DATA/MULTI) Schema drift? Data freshness? | ⬜ |

Mark each: ✅ Present and complete | 🟡 Partially present | ❌ Missing

**Output audit summary. WAIT for confirmation before patching.**

---

## PHASE 2: INSTALL ZERO-DRIFT ARCHITECTURE

If not present, add to CLAUDE.md:

### 2.1: Session Start Gate

```
## Session Start Protocol
1. Read CLAUDE.md (this file) completely
2. Read DECISIONS.md — do not reverse any logged decision without stating why
3. Run drift detection: verify current files match expected state
4. If drift detected: STOP. Report what changed. Wait for confirmation.
5. Only then proceed with the session's task.
```

### 2.2: Post-Task Gate

```
## Post-Task Verification
After completing any task:
1. Run all stop hooks (Section 4)
2. Verify output matches the brief's constraints
3. If any hook fails: fix before moving on
4. Log what was done in the session
```

### 2.3: Compaction Protocol

```
## Context Management
When context grows large:
1. Summarise completed work (what was done, what was decided)
2. Preserve: current task state, all constraints, all decisions
3. Discard: intermediate reasoning, superseded drafts
4. Verify: re-read CLAUDE.md after compaction to prevent drift
```

---

## PHASE 3: INSTALL STOP HOOKS

Generate stack-appropriate verification commands.

### For TypeScript/JavaScript:
```bash
npx tsc --noEmit 2>&1; echo "EXIT:$?"
npx eslint . 2>&1; echo "EXIT:$?"
```

### For Python:
```bash
python -m py_compile *.py 2>&1; echo "EXIT:$?"
python -m pytest --tb=short 2>&1; echo "EXIT:$?"
```

### For Rust:
```bash
cargo check 2>&1; echo "EXIT:$?"
cargo clippy 2>&1; echo "EXIT:$?"
```

### For OPS projects:
```bash
systemctl status [critical-service] 2>&1; echo "EXIT:$?"
docker compose config --quiet 2>&1; echo "EXIT:$?"
```

### For DATA projects:
```bash
sqlite3 [database] "PRAGMA integrity_check;" 2>&1; echo "EXIT:$?"
```

**Correction loop:** If any hook returns non-zero EXIT, fix the issue before proceeding. Do not skip failing hooks.

---

## PHASE 4: INSTALL MULTI-FILE ATOMICITY

Add to CLAUDE.md:

```
## Multi-File Changes
When modifying 2+ files as part of one logical change:
1. List all files to be changed BEFORE starting
2. Make changes in dependency order
3. Run stop hooks after ALL changes, not after each file
4. If any hook fails: revert ALL changes in this batch, not just the failing file
5. Never leave the project in a half-changed state
```

---

## PHASE 5: CREATE/PATCH DECISIONS.md

If DECISIONS.md does not exist, create:

```markdown
# DECISIONS.md — Architecture & Operational Decision Log

Read at session start alongside CLAUDE.md.
Before reversing any logged decision, state explicitly why.

---

## [date] Hooksetup v2.0 Installed

**Context:** Project upgraded to Zero-Drift Protocol.
**Project type detected:** [CODE / OPS / DATA / MULTI]

**Consequences:**
- File writes now gated by stop hooks
- Sessions require drift detection before execution
- This log must be consulted before reversing decisions
```

If DECISIONS.md already exists, add one entry recording the hooksetup upgrade.

---

## PHASE 6: VERIFY INSTALLATION

### 6.1: Run All Stop Hooks

Execute every hook defined above. Report results.

### 6.2: Report

```
## Verification Report

**All pass:** "Protocol active. All stop hooks verified green."

**Some fail:**
- Hook: [name]
- Command: [command]
- Error: [output]
- Blocker? [YES if prevents execution / NO if pre-existing issue]

**Manual TODOs:** [any unfilled placeholders, or "None"]
```

---

## PHASE 7: FINAL REPORT

```
## Hooksetup v2.0 Complete

**Detected type:** [CODE / OPS / DATA / MULTI]
**Project stacks:** [list]
**Mode:** [Fresh install / Upgrade from existing]

**Files created/patched:**
- CLAUDE.md: [Created / Patched / No changes]
- DECISIONS.md: [Created / Added entry / No changes]

**Hook verification:** [all pass / X pass, Y fail]
**Blockers:** [none / list]

**Non-negotiable sections (do not remove):**
- Zero-Drift Architecture (session gates)
- Stop Hooks (autonomous correction)
- Multi-File Atomicity (transaction safety)
```

---

## EDGE CASES

**Empty project:** Ask user what kind of project this is.

**Heavily customised CLAUDE.md:** Preserve ALL existing content. Add new sections at the end, clearly marked `## Added by hooksetup v2.0`.

**User says no to proposed changes:** Respect it. Report what was skipped. Protocol works with partial sections.

**User has running production system:** Operational verification runs FIRST. If system is in critical state, STOP and report before allowing changes.
