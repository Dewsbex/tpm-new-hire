# NotebookLM Prompts for "The TPM's New Hire"
# Copy each prompt into the relevant NotebookLM generation tool

---

## 1. AUDIO OVERVIEW (Deep Dive — 2 host discussion)

Generate an audio overview that walks a Technical Product Manager through this system as if they're hearing about it for the first time over coffee. Start with the problem: the managerial overhead tax that TPMs pay every week. Then introduce the doctrine — volume belongs to the machine, value belongs to the human. Walk through each of the six skills in flywheel order (Interview, Draft Project Brief, Next Milestone, Hooksetup, Update, Auto-Improvement), explaining what each one does and why it exists — not just features, but the specific failure mode each skill prevents. Spend extra time on two concepts most listeners won't have encountered: semantic decay and the interview-as-investment principle. End with the honest caveat: this system amplifies whatever you feed it — rigour in, rigour out — and the practical next step: clone the GitHub repo, run setup, type /interview. Keep it conversational, not lecture-style. Dry humour is welcome.

---

## 2. VIDEO OVERVIEW

Generate a video overview structured as a practical walkthrough of the system in action. Open with the core problem: TPMs drowning in context-switching, fragmented tickets, and documentation nobody reads. Introduce Claude Code as a command-line tool, not a chatbot — it lives in your file system and works against your actual project files. Show the flywheel: Interview captures requirements, Draft Project Brief locks them into a canonical spec, Next Milestone carves a single executable sprint, Hooksetup installs drift protection, Update logs what actually happened, Auto-Improvement finds patterns and proposes fixes. For each skill, show what you type (the slash command), what Claude asks or produces, and what artifact comes out the other side. Dedicate a segment to semantic decay — explain it as the silent rot that happens when AI forgets your constraints over long sessions, and show how Hooksetup's session gates and stop hooks catch it. Include the honest caveat: this system guarantees consistency, not quality — fiction in, well-formatted fiction out. Close with the setup: clone the repo, run setup.sh, type /interview, the flywheel starts turning. Keep it direct and practical — every second should either explain a concept or show how to use it.

---

## 3. FLASHCARDS

Generate flashcards that test practical understanding of this system. Do not test definitions — test application and decision-making. Each card should present a scenario on the front and the correct action or concept on the back. Cover these areas:

Skills and when to use them:
- "You're about to start a new project. What do you run first and why?"
- "Your sprint is done but scope changed mid-way. Which two skills do you run and in what order?"
- "You've completed four milestones and the workflow feels sluggish. What do you run?"

Concepts:
- "What is semantic decay and which skill prevents it?"
- "What does 'evolve, never overwrite' mean in practice?"
- "What is the load-bearing wall in this system?"
- "What happens if you skip /interview and go straight to /draft-project-brief?"

Failure modes:
- "The flywheel is producing polished, confident, wrong output. What went wrong and where?"
- "A naming convention has silently drifted across three sessions. Which hooksetup component should have caught this?"
- "Your DECISIONS.md shows a reversed architectural decision with no explanation. What protocol was violated?"

System setup:
- "Where do skill files live in a project? Where for global access?"
- "What does setup.sh do and what is the only prerequisite?"
- "What is the difference between claude.md and DECISIONS.md?"

Generate 20 cards minimum. Prioritise scenario-based questions over recall.
