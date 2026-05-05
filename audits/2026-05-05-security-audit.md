# Security Risk & Failure Point Audit

**Date:** 2026-05-05
**Reviewer:** Steven's 3-Agent Engineering Org (Security Reviewer)

## 1. Tier-1 Critical Findings

**Arbitrary Code Execution / Path Traversal in Setup Script**
- **Location:** `setup.sh:13`
- **Issue:** `$TARGET` is passed directly into `cd "$TARGET"` without validation. If an attacker controls the argument to `setup.sh` (e.g., via a compromised automated deployment or secondary execution context), they can supply a malicious path or command substitutions.
- **Attacker Scenario:** An attacker passes a crafted string like `$(malicious_command)` or a path traversal sequence (`../../../etc`) which `cd` will execute or traverse, leading to arbitrary directory manipulation or execution if wrapped improperly.
- **Fix Proposal:** Validate the `$1` input to ensure it is a valid, constrained directory path. Use `--` to prevent flag injection (e.g., `cd -- "$TARGET"`).
- **Effort:** S

## 2. Tier-2 High Findings

**Silent Failure / Missing Validation for Dest Directory Creation**
- **Location:** `setup.sh:24`
- **Issue:** `mkdir -p "$DEST"` executes without checking if the parent path exists, is writable, or whether the current user has the appropriate permissions, relying solely on `set -e` to catch errors. If `$TARGET_DIR` evaluated to a restricted path, it fails silently or unpredictably.
- **Attacker Scenario:** Local attacker pre-creates `.claude/commands` as a symlink to `/etc` or another sensitive directory. The script blindly copies `.md` files into it.
- **Fix Proposal:** Ensure the `$TARGET_DIR` is safely owned by the user and not symlinked.
- **Effort:** M

**Prompt Injection / Unsafe Execution via Markdown Commands**
- **Location:** `commands/hooksetup.md:144` (and following)
- **Issue:** The AI assistant is instructed to execute bash commands directly from a markdown document (e.g., `npx tsc --noEmit 2>&1; echo "EXIT:$?"`). If an attacker manages to modify the `hooksetup.md` file or any of the artifacts it reads (like `package.json`), they can inject malicious shell commands.
- **Attacker Scenario:** An attacker submits a PR or modifies a local file adding `; rm -rf /` or a reverse shell to the hook verification commands. When the AI runs `/hooksetup`, it blindly executes the commands.
- **Fix Proposal:** Sanitize commands before execution or use a restricted sandbox environment rather than running raw bash parsed from Markdown.
- **Effort:** L

## 3. Tier-3 Medium Findings

**Over-broad Permissions on Setup Script**
- **Location:** `README.md:37`
- **Issue:** The instructions specify `chmod +x setup.sh` without detailing who should have execution rights.
- **Attacker Scenario:** Any user on a shared system can execute the script.
- **Fix Proposal:** Use `chmod 700 setup.sh` to restrict execution to the owner.
- **Effort:** S

**Hardcoded Branch / URL Dependencies**
- **Location:** `README.md:35`
- **Issue:** `git clone https://github.com/Dewsbex/tpm-new-hire.git` is hardcoded. If the repository is hijacked or moves, users will execute untrusted code.
- **Attacker Scenario:** The GitHub account is compromised, and malicious `.md` files or `setup.sh` are pushed. Users blindly clone and run it.
- **Fix Proposal:** Suggest cloning a specific, verified release tag or checking a hash.
- **Effort:** S

## 4. Operational Concerns

**Missing Observability and Logging**
- **Issue:** `setup.sh` echoes basic output but does not log to a persistent file. If the setup fails midway, diagnosing the exact point of failure relies solely on terminal output which may be lost.
- **Recommendation:** Implement standard logging to a `.claude/setup.log` file.

**Single Point of Failure**
- **Issue:** The entire system relies on the user maintaining discipline with `claude.md`. If `claude.md` is accidentally deleted or corrupted, the "load-bearing wall" is lost, and institutional memory collapses as explicitly stated in the docs.
- **Recommendation:** Automate backups of `claude.md` and `DECISIONS.md`.

## 5. Positive Notes

**Clear System Boundaries**
- The explicit prohibition of modifying live data (`claude.md.template:26` - "Anything touching live data | STOP. Not permitted.") is a strong defensive pattern.

**Idempotent-ish Setup**
- `setup.sh` gracefully skips existing files (`setup.sh:31`), preventing accidental overwriting of customized configurations. This is a reliable pattern for operational safety.

**Zero-Drift Checks**
- The conceptual implementation of "Stop Hooks" and verification before task continuation is highly mature for an LLM-driven workflow.
