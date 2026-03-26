# NotebookLM Prompts for "The TPM's New Hire"
# Copy each prompt into the relevant NotebookLM generation tool

---

## 1. AUDIO OVERVIEW (Deep Dive — 2 host discussion)

Generate a deep-dive audio discussion between two hosts exploring the concept of Taste in AI-assisted product management. Structure the conversation around this central argument: when AI removes the execution bottleneck, the new bottleneck is taste — knowing what to build and having the discipline to verify that what came back is what you asked for.

Open with the problem: TPMs are drowning in managerial overhead — context-switching, fragmented tickets, documentation nobody reads. Introduce the doctrine early: volume belongs to the machine, value belongs to the human. Then ask the question the whole episode explores: if the machine handles the volume, what exactly is the human's job? The answer is taste.

Walk through the six-skill flywheel, but frame each skill as a taste decision point rather than a feature description:

- After /interview: did I ask the right questions, or did I let Claude fill in the blanks with convenient assumptions? That's taste.
- After /draft-project-brief: are these the real constraints, or the ones that were easiest to articulate? That's taste.
- After /next-milestone: is this sprint solving the highest-value problem, or just the most obvious one? That's taste.
- After /hooksetup: are the stop hooks checking what actually matters, or just what's easy to lint? That's taste.
- After /update: does this log reflect what actually happened, or a sanitised version? That's taste.
- After /auto-improvement: will I act on these patterns, or file them and forget? That's taste.

Spend time on semantic decay — the silent rot that happens when AI forgets your constraints over long sessions. Explain why this is the most dangerous failure mode: the output still looks plausible while quietly drifting from the brief. Connect this back to taste: recognising decay requires a human who remembers what was originally specified.

Include the honest caveat: this system amplifies whatever you feed it. Rigour in, rigour out. Fiction in, well-formatted fiction out. The flywheel guarantees consistency, not quality. Quality is taste. Output-per-token is unit economics — it sits next to ROI on the ledger. If you're not measuring it, you're guessing.

End practically: clone the GitHub repo, run setup, type /interview. The machine generates. The human evaluates. The flywheel turns.

Keep it conversational — two people working this out together over coffee, not a lecture. Dry humour is welcome.

---

## 2. VIDEO OVERVIEW

Generate a video overview that opens with the central argument: when AI removes the execution bottleneck, the new bottleneck is taste. Not aesthetic preference — the discipline to evaluate whether what the machine produced is what you actually need. The machine generates volume. The human applies taste. That frame should take 30 seconds, then the rest of the video is showing how the system works in practice.

Walk through each skill as a practical demonstration, but at each step pause briefly to name the taste checkpoint — the human decision that determines whether the output is worth keeping:

- /interview: show the command, show Claude asking probing questions, show the Capture Summary output. Taste checkpoint: are these the right questions, or did you let Claude fill in convenient assumptions?
- /draft-project-brief: show the command, show the canonical brief structure. Taste checkpoint: are these the real constraints, or the ones that were easiest to articulate?
- /next-milestone: show the command, show the sprint plan with task table. Taste checkpoint: is this sprint solving the highest-value problem, or just the most obvious one?
- /hooksetup: show the detection report, the audit scores, the installed hooks. Taste checkpoint: are the stop hooks checking what actually matters, or just what's easy to lint?
- /update: show the debrief questions, the structured log output. Taste checkpoint: does this log reflect what actually happened, or a sanitised version?
- /auto-improvement: show the five-lens analysis, the skills-to-build table. Taste checkpoint: will you act on these patterns, or file them and forget?

Dedicate a segment to semantic decay. Explain it as the silent rot when AI forgets your constraints over long sessions — the output still looks plausible while quietly drifting. Show how Hooksetup's session gates catch it at the start of every session. Connect it back to taste: recognising decay requires a human who remembers what was originally specified.

Include the honest caveat: this system guarantees consistency with whatever you feed it, not quality. Fiction in, well-formatted fiction out. Quality is the human's job.

Close with the practical setup: clone the repo, run setup.sh, type /interview. The machine generates. The human evaluates. Every second of the video should either show a command being run, an output being produced, or a taste decision being made. No filler.

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

Taste:
- "The flywheel produced a polished, confident, wrong deliverable. Where did taste fail?"
- "You ran /next-milestone and it proposed a sprint. How do you apply taste before confirming?"
- "Your stop hooks all pass green but the output doesn't match what stakeholders need. What broke?"

Failure modes:
- "A naming convention has silently drifted across three sessions. Which hooksetup component should have caught this?"
- "Your DECISIONS.md shows a reversed architectural decision with no explanation. What protocol was violated?"
- "The /auto-improvement report flags the same blocker three sprints running. What does this tell you?"

System setup:
- "Where do skill files live in a project? Where for global access?"
- "What does setup.sh do and what is the only prerequisite?"
- "What is the difference between claude.md and DECISIONS.md?"

Generate 20 cards minimum. Prioritise scenario-based questions over recall. Include at least 5 cards specifically testing taste — the human evaluation step at each stage of the flywheel.
