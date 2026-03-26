# NotebookLM Prompts for "The TPM's New Hire"
# Copy each prompt into the relevant NotebookLM generation tool

---

## 1. AUDIO OVERVIEW

Generate an audio overview that walks a Technical Product Manager through this system as if they're hearing about it for the first time over coffee. Start with the problem: the managerial overhead tax that TPMs pay every week. Then introduce the doctrine — volume belongs to the machine, value belongs to the human. Walk through each of the six skills in flywheel order (Interview, Draft Project Brief, Next Milestone, Hooksetup, Update, Auto-Improvement), explaining what each one does and why it exists — not just features, but the specific failure mode each skill prevents. Spend extra time on two concepts most listeners won't have encountered: semantic decay and the interview-as-investment principle. End with the honest caveat: this system amplifies whatever you feed it — rigour in, rigour out — and the practical next step: clone the GitHub repo, run setup, type /interview. Keep it conversational, not lecture-style. Dry humour is welcome.

---

## 2. MIND MAP

Generate a mind map centred on "The TPM's New Hire" system. The first level should show the six skills in flywheel order: Interview → Draft Project Brief → Next Milestone → Hooksetup → Update → Auto-Improvement. For each skill, branch into three things: what it takes as input, what it produces as output, and the specific failure mode it prevents (e.g., Interview prevents shallow briefs, Hooksetup prevents semantic decay, Update prevents planning from fiction). Add a separate branch for the foundational layer: claude.md as the load-bearing wall, the .claude/commands/ directory structure, and the DECISIONS.md log. Add a final branch for the core doctrine: volume belongs to the machine, value belongs to the human — with sub-branches showing what counts as volume (tickets, docs, research, sprint planning) and what counts as value (judgement, relationships, strategy, taste). Make the connections between skills explicit — each output arrow should name the specific artifact that feeds the next skill.

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
