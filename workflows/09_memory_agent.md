# Workflow 09: Memory Agent

**Role in Chain:** The system's long-term intelligence layer. Runs in READ MODE at the start of creative sessions and in WRITE MODE at the end of creative or analytical sessions.
**Trigger Condition:** READ MODE — before Workflow 03 in any creative chain. WRITE MODE — after Workflow 07 (content created) or after Workflow 08 (performance analysed).
**Reads From:** `resources/winning_posts_log.md`, `resources/failed_ideas_log.md`, `resources/content_idea_bank.md`, `resources/hook_templates.md`
**Writes To:** Same resource files above (append-only)

---

## Purpose

This workflow replaces the need to "train a model". By systematically logging what works, what fails, and what ideas are waiting, the system gets smarter every session. After 4–6 weeks of use, the Content Strategist (Workflow 03) and Hook Optimiser (Workflow 05) stop working from generic templates and start working from proven-at-this-gym data. The Memory Agent is what separates a one-off content tool from a system that evolves.

**Critical rule: never overwrite. Always append. Every entry is dated.**

---

## READ MODE (Run Before Workflow 03)

### When to Run Read Mode
At the start of any creative session (content calendar, Reel ideas, caption writing) — before Workflow 03 executes.

### Read Mode Process

**Step 1:** Open `resources/winning_posts_log.md`
- Read the most recent 5 entries (or all entries if fewer than 5)
- Identify: which hook types have performed best, which content types got the most saves/shares, which audience segments responded most
- Summarise the top 3 patterns in one line each

**Step 2:** Open `resources/failed_ideas_log.md`
- Read all entries
- Note: any content types, hook styles, or topics that have repeatedly failed
- Flag these as "avoid" in the memory context

**Step 3:** Open `resources/content_idea_bank.md`
- Check for any ideas with Status: Ready (not yet used)
- If a banked idea fits the current session brief → surface it as a ready-to-use option

**Step 4:** Produce the `[MEMORY-CONTEXT]` Block
This block is injected into Workflow 03 (Content Strategist) before it begins its process. It must be specific — not "use engaging hooks" but "POV hooks have outperformed question hooks 3:1 in recent posts".

---

## WRITE MODE (Run After Workflow 07 or 08)

### When to Run Write Mode
- After Workflow 07 produces final formatted content (log unused ideas, bank generated hooks)
- After Workflow 08 produces performance analysis (log wins and fails from the top/bottom performer entries)

### Write Mode Process

**After a creative session (post-Workflow 07):**

**Step 1:** Review the ideas generated in Workflow 03 that were NOT selected for scripting
- Add each unselected idea to `resources/content_idea_bank.md` as a new entry with Status: Ready
- Format: see Content Idea Bank entry format below

**Step 2:** Review hooks generated in Workflow 05 that were not used as the primary hook
- These do NOT need to be logged unless they scored 12+/15 on the scoring rubric
- If a high-scoring hook was not used, add it to `resources/hook_templates.md` under its type with a note: "Generated [date] — untested"

**After a performance analysis session (post-Workflow 08):**

**Step 1:** Log the top performer to `resources/winning_posts_log.md`
Use the memory entry prepared by Workflow 08. Format: see Winning Post entry format below.

**Step 2:** Log underperformers (if relevant) to `resources/failed_ideas_log.md`
Only log a failed entry if the post clearly underperformed AND there is a specific hypothesis for why. Format: see Failed Idea entry format below.

**Step 3:** Update hook templates if a new hook type is proven
If a specific hook performed exceptionally (saves or shares 2x+ above average), find it in `resources/hook_templates.md` and add the tag `[PROVEN — [date]]` next to that template.

---

## Entry Formats

### Winning Post Entry (`winning_posts_log.md`)
```
## [Date] — [Platform] — [Content Type]
Hook used: "[exact hook text]"
Hook type: [curiosity / transformation / direct address / POV / controversy / question / number-list]
Reach: [#] | Likes: [#] | Saves: [#] | Shares: [#]
Why it worked: [1–2 sentences — specific reason, not generic]
Reuse potential: [HIGH — same hook type works again / MEDIUM — adapt the angle / LOW — one-time topical]
```

### Failed Idea Entry (`failed_ideas_log.md`)
```
## [Date] — [Platform] — [Content Type]
Concept: [brief description of what the post was about]
Hook used: "[exact hook text]"
What likely failed: [specific hypothesis — hook type, topic irrelevance, format mismatch, bad timing, etc.]
Do not repeat: [specific element — e.g., "generic benefit statement hooks", "technique posts without local angle"]
```

### Content Idea Bank Entry (`content_idea_bank.md`)
```
## [Idea Title]
Type: [Reel / carousel / talking head / montage / tutorial]
Audience: [Segment A / B / C]
Emotional driver: [pain / desire / identity / social proof / fear]
Hook angle: [one-line concept]
Filming: [what to capture, who, how long]
Status: Ready
Added: [date]
```

---

## Output Formats

### [MEMORY-CONTEXT] Block (Read Mode Output)
```
[MEMORY-CONTEXT]

Winning patterns (from winning_posts_log.md):
1. [Pattern 1 — specific hook type or format with evidence]
2. [Pattern 2]
3. [Pattern 3]

Avoid (from failed_ideas_log.md):
- [Specific content type or hook style that has failed]
- [Another specific element to avoid]

Banked ideas available (from content_idea_bank.md):
- "[Idea title]" — [Audience segment, hook angle] — Status: Ready
(list up to 3 relevant banked ideas)

Instruction for Workflow 03: [Any specific direction based on the above — e.g., "Prioritise transformation hooks this session — they've outperformed 4:1 recently"]
```

If resource files are empty (early in system use): `[MEMORY-CONTEXT] — No prior data yet. Proceed with Workflow 03 using templates from resources/hook_templates.md.`

### [WORKFLOW-09 WRITE COMPLETE] Block (Write Mode Output)
```
[WORKFLOW-09 WRITE COMPLETE]

Winning post logged: [Yes — [brief title] / No — no qualifying winner this session]
Failed idea logged: [Yes — [brief description] / No]
Banked ideas added: [N new ideas added to content_idea_bank.md / None]
Hook templates updated: [Yes — [which hook, what change] / No]
```

---

## Quality Gate

- [ ] All entries are dated
- [ ] Nothing is overwritten — only appended
- [ ] Winning post entries include the exact hook text (not a paraphrase)
- [ ] Failed idea entries include a specific hypothesis (not just "it didn't perform well")
- [ ] MEMORY-CONTEXT block is specific (names actual patterns, not generic advice)
- [ ] Banked ideas are formatted correctly and tagged Status: Ready
