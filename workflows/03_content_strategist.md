# Workflow 03: Content Strategist

**Role in Chain:** Third workflow — the creative engine. Combines trend data and psychology into concrete, actionable content ideas.
**Trigger Condition:** All content creation requests that require original ideas (not caption-writing for existing footage).
**Reads From:** `[WORKFLOW-01 OUTPUT]`, `[WORKFLOW-02 OUTPUT]`, `[MEMORY-CONTEXT]` from Workflow 09 (read mode), `resources/content_idea_bank.md`
**Writes To:** `[WORKFLOW-03 OUTPUT]` — passed to Workflow 04

---

## Purpose

Turn trend formats + audience psychology into 3–5 specific, high-quality content ideas that are ready to script. This workflow prevents two common failures: trends with no emotional pull (nobody cares) and emotion with no format (no idea how to actually make it). Every idea must be boxing-specific, pass the Distribution Test, and be genuinely filmable at Heathrow Boxing Club today.

---

## Input Required

- `[WORKFLOW-01 OUTPUT]` — the 5 prioritised trends
- `[WORKFLOW-02 OUTPUT]` — the audience segment, emotional driver, and hook angle
- `[MEMORY-CONTEXT]` from Workflow 09 (if available) — what to avoid, what's working, banked ideas
- `resources/content_idea_bank.md` — check the "Ready" ideas before generating new ones (use a banked idea if it fits)

---

## Process

### Step 1: Check Memory Context First
If a `[MEMORY-CONTEXT]` block is available:
- Note which content types/formats have failed recently → do not propose those
- Note which hook types have performed well → favour those
- Check if a banked idea from `content_idea_bank.md` fits this brief → if yes, surface it as an option

### Step 2: Match Trends to Psychology
For each of the top 3 trends from `[WORKFLOW-01 OUTPUT]`:
- Cross-reference with the emotional driver from `[WORKFLOW-02 OUTPUT]`
- Ask: does this trend format express the emotion/desire of the target segment?
- If yes → strong match → develop into a content idea
- If no → can the trend be adapted to carry the emotion? If so, how?
- If adaptation is too forced → skip that trend

### Step 3: Develop 3–5 Content Ideas
For each strong match, develop a content idea with these components:

**Title/Concept** — one punchy line describing what the video/post is about
**Boxing angle** — specifically how it relates to Heathrow Boxing Club, Ukrainian style, or real boxing (not generic gym content)
**Primary segment** — which audience segment (A, B, or C) it targets most directly
**Emotional trigger** — which driver (pain / desire / identity / social proof / fear) it activates
**Format** — Reel, carousel, talking head, montage, tutorial, POV, etc.
**Hook direction** — one-line hook concept (not the final hook — Workflow 05 handles that)
**Filming estimate** — how long to capture the footage on iPhone at the gym

### Step 4: Score Each Idea
Score each idea out of 5 on three dimensions:
- **Shareability** — would someone show this to a friend who doesn't follow the gym?
- **Qualification** — does it attract people who might actually come train (not just fitness entertainment viewers)?
- **Filming ease** — how quickly and simply can this be captured on iPhone?

Total score out of 15. Rank the ideas.

### Step 5: Select Top Ideas
- For a content calendar: keep all 3–5 ideas, assign to different days/platforms
- For a single piece: take the top-scored idea and present it as the primary, with the second as an alternative
- Flag any banked idea from `content_idea_bank.md` that was surfaced — note it was previously banked

---

## Output Format

```
[WORKFLOW-03 OUTPUT]

Memory check: [Any patterns to avoid / hook types favoured / banked ideas surfaced — or "No prior data yet"]

IDEA 1: [Title/Concept]
- Boxing angle: [specific to Heathrow BC]
- Target segment: [A / B / C]
- Emotional trigger: [pain / desire / identity / social proof / fear]
- Format: [Reel / carousel / talking head / etc.]
- Hook direction: [one line]
- Filming: [time estimate + what to capture]
- Score: Shareability [/5] + Qualification [/5] + Filming ease [/5] = [total]/15

IDEA 2: [repeat structure]
IDEA 3: [repeat structure]
(up to 5 ideas)

Selected for scripting: IDEA [N] — [one-line rationale]
Alternative: IDEA [N] — [brief note]
```

---

## Quality Gate

Before passing to Workflow 04, verify:
- [ ] Each idea has a clear boxing-specific angle (not generic fitness content)
- [ ] Every idea passes the Distribution Test (from CLAUDE.md)
- [ ] No idea repeats a format/concept flagged as failed in `[MEMORY-CONTEXT]`
- [ ] At least one idea incorporates the Ukrainian boxing / unique style angle
- [ ] The selected idea has a clear emotional trigger (not just informational)
- [ ] Filming estimate is realistic (under 15 minutes on iPhone)
