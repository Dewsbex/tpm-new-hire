# The TPM's New Hire

**Turn Claude Code into your personal operating system.**

Six pre-built skills that form a complete project lifecycle — from intake interview to retrospective. Clone, install, type `/interview`. The rest builds itself.

---

## Watch & Listen

🎬 **Video walkthrough:** [The TPM's New Hire — When AI Can Build Anything, the Bottleneck Is Taste](https://youtu.be/NA8t-cm3r0I)

📓 **Full article + notebook:** [NotebookLM Deep Dive](https://notebook.google.com/notebook/8dbb96f6-b1ee-4941-8960-07edfb28a0ee)

---

## What This Is

A set of Claude Code slash commands that turn a command-line AI into a structured project management system. Each skill's output feeds the next, creating a flywheel that gets sharper with every cycle.

| Phase | Skill | What It Does |
|-------|-------|-------------|
| Intake | `/interview` | Structured interview across 6 phases — extracts everything before work begins |
| Spec | `/draft-project-brief` | Converts interview output into a canonical project brief |
| Sprint | `/next-milestone` | Carves a single time-boxed sprint from the brief |
| Guard | `/hooksetup` | Installs zero-drift protocols and stop hooks to prevent semantic decay |
| Sync | `/update` | Logs what actually happened vs. what was planned |
| Improve | `/auto-improvement` | Analyses patterns across sprints and proposes process fixes |

---

## Requirements

- [Claude Code](https://claude.com/product/claude-code) licence
- That's it

---

## Install

### Option A: Install into a specific project

```bash
git clone https://github.com/Dewsbex/tpm-new-hire.git
cd tpm-new-hire
chmod +x setup.sh
./setup.sh /path/to/your/project
```

### Option B: Install globally (available in all projects)

```bash
git clone https://github.com/Dewsbex/tpm-new-hire.git
mkdir -p ~/.claude/commands
cp tpm-new-hire/commands/*.md ~/.claude/commands/
```

### Option C: Manual

Copy the six `.md` files from `commands/` into your project's `.claude/commands/` directory. Copy `claude.md.template` to your project root as `claude.md` and customise it.

---

## Quick Start

```bash
# Navigate to your project
cd /your/project

# Start Claude Code
claude

# Type:
/interview
```

Claude will walk you through six phases of structured intake. When it produces a Capture Summary, confirm it. Then:

```
/draft-project-brief
```

This converts your interview into a canonical brief. Confirm it. Then:

```
/next-milestone
```

You now have a sprint plan. Go build. When you're done:

```
/update
```

Log what happened. Then run `/next-milestone` again. The flywheel turns.

After 3-5 sprints:

```
/auto-improvement
```

See what's working, what isn't, and what to build next.

---

## The Flywheel

```
    ┌─────────────┐
    │  /interview  │
    └──────┬──────┘
           ▼
  ┌────────────────────┐
  │ /draft-project-brief│
  └────────┬───────────┘
           ▼
   ┌───────────────┐
   │ /next-milestone │
   └───────┬───────┘
           ▼
     ┌───────────┐
     │ /hooksetup │  ← installs once, guards every session
     └───────────┘
           ▼
      ┌──────────┐
      │  /update  │
      └────┬─────┘
           ▼
  ┌──────────────────┐
  │ /auto-improvement │──→ back to /next-milestone
  └──────────────────┘
```

Each skill's output feeds the next. Each cycle sharpens the last. If one skill's output is weak, the flywheel wobbles — by design. It forces you to fix the weak link rather than carry it forward.

---

## Key Concept: Semantic Decay

Over long sessions, AI models gradually forget the initial constraints of a project. A research task becomes a creative writing exercise. A naming convention slips. An architectural decision gets reversed. This is semantic decay.

`/hooksetup` exists to kill it. It installs session gates (drift detection at startup), stop hooks (automated checks after every file write), and a DECISIONS.md log that must be consulted before any logged decision is reversed.

---

## Customisation

Every skill is a Markdown file. Edit them to match your workflow:

- Change the interview phases to fit your domain
- Add industry-specific constraints to the brief template
- Modify stop hooks for your tech stack
- Add new skills as `/auto-improvement` suggests them

The `claude.md` template in your project root is the load-bearing wall — it governs Claude's behaviour across all sessions. Customise it with your brand voice, technical constraints, and decision logic.

---

## Philosophy

**Volume belongs to the machine. Value belongs to the human.**

These skills handle the volume — documentation, sprint planning, progress tracking, retrospectives. You handle the value — judgement, relationships, strategy, and taste.

The system amplifies whatever you feed it. Rigour in, rigour out. Fiction in, well-formatted fiction out. The `/interview` skill exists specifically to ensure the inputs are honest.

---

## Contributing

Found a gap? Built a useful skill on top of this system? PRs welcome.

---

## Author

Steven Dewsbery — AI strategy practitioner and Technical Product Manager.

- [LinkedIn](https://linkedin.com/in/stevendewsbery)
- [Video walkthrough](https://youtu.be/NA8t-cm3r0I)
- [Full article + notebook](https://notebook.google.com/notebook/8dbb96f6-b1ee-4941-8960-07edfb28a0ee)

---

## Licence

MIT
