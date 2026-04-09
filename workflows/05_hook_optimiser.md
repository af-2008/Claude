# Workflow 05: Hook Optimiser

**Role in Chain:** Fifth workflow — maximises the first 2–3 seconds, which determines whether anyone watches at all.
**Trigger Condition:** Runs after Workflow 04 in all content creation chains. Also runs standalone for "give me hook ideas" requests (after Workflow 02).
**Reads From:** `[WORKFLOW-04 OUTPUT]`, `resources/hook_templates.md`, `resources/winning_posts_log.md` (proven hook styles)
**Writes To:** `[WORKFLOW-05 OUTPUT]` — passed to Workflow 06

---

## Purpose

The first 2–3 seconds determine whether someone keeps watching or scrolls past. Hook quality is the single highest-leverage variable in short-form content. This workflow takes the rough hooks from Workflow 04, categorises them, rewrites each one using its strongest possible structure, adds experimental hooks, scores every option, and recommends one primary hook with a clear reason.

---

## Input Required

- `[WORKFLOW-04 OUTPUT]` — the rough hooks (Hook A, B, C) and the content format/audience
- `resources/hook_templates.md` — the hook type library with boxing-specific templates
- `resources/winning_posts_log.md` — if available, check which hook types have worked at Heathrow BC

---

## Hook Type Definitions

**Curiosity Gap** — withholds information to create the need to know more
- Structure: "The [thing] most boxers get wrong about..." / "Nobody talks about what..."
- Best for: educational content, technique breakdowns, myth-busting

**Transformation Claim** — promises a before/after or measurable outcome
- Structure: "[N] weeks of boxing changed my..." / "This is what [timeframe] of real boxing looks like"
- Best for: fitness seekers (Segment A), results content

**Direct Address** — speaks directly to a specific person as if they were the only viewer
- Structure: "If you're in [location] and want to..." / "For anyone who thinks boxing is only for fighters..."
- Best for: local discovery, beginner conversion, Segment A and B

**Controversy / Pattern Interrupt** — challenges a common belief or disrupts expectations
- Structure: "Boxing is NOT a fitness class. And that's why it works." / "Stop going to the gym. Do this instead."
- Best for: shares, comments, reaching new audiences, challenging gym culture

**Question Hook** — poses a question the viewer wants to see answered
- Structure: "What happens to your body after [N] weeks of boxing?" / "Can a complete beginner keep up?"
- Best for: curious viewers, educational formats, driving watch time

**POV Hook** — places the viewer inside an experience
- Structure: "POV: you just walked into your first boxing session" / "POV: first day at Heathrow Boxing Club"
- Best for: immersive, experiential content, lifestyle aspiration

**Number / List Hook** — uses a specific number to imply organised, digestible value
- Structure: "3 reasons boxing beats the gym for weight loss" / "5 mistakes I made in my first month of boxing"
- Best for: carousels, educational Reels, saves

---

## Process

### Step 1: Categorise Existing Hooks
For each rough hook from `[WORKFLOW-04 OUTPUT]`:
- Identify its current hook type
- Rate it on three dimensions (1–5 each):
  - **Curiosity** — does it make you need to know what comes next?
  - **Emotional pull** — does it connect to a desire, pain, or identity?
  - **Specificity** — is it specific to boxing / this gym (not generic fitness)?

### Step 2: Rewrite Each Hook
Rewrite each rough hook using the strongest version of its identified type:
- Sharpen the language (shorter, more active, more specific)
- Ensure it is under 12 words for the spoken/text-overlay version
- Ensure it does not start with "I", "We", or "Welcome"
- Ensure it can work as silent text overlay (does it make sense without audio?)

### Step 3: Add Experimental Hooks
Write 2 additional hooks using hook types NOT already represented in Hooks A/B/C.
Label them: Hook D, Hook E

At least one experimental hook must:
- Be suitable for silent autoplay (text overlay only, no spoken context needed)
- Reference boxing specifically (not just fitness)

### Step 4: Check Against Proven Patterns
If `winning_posts_log.md` has entries:
- Note which hook types have historically performed well for Heathrow BC
- Flag if any of the current hooks match a proven type
- Flag if any hook type has consistently underperformed → note this

### Step 5: Score and Recommend
Score all hooks (original rewrites + experimental) on Curiosity / Emotional pull / Specificity (1–5 each, max 15).

Select the PRIMARY RECOMMENDED HOOK:
- Highest total score
- Plus: should it be the written recommendation AND the reasoning should be one sentence

Also note: the SILENT AUTOPLAY OPTION — the best hook for silent viewing (for TikTok and IG where many viewers have sound off)

---

## Output Format

```
[WORKFLOW-05 OUTPUT]

OPTIMISED HOOKS:

Hook A (rewritten): "[text]"
Type: [type] | Curiosity: [/5] | Emotion: [/5] | Specificity: [/5] | Total: [/15]

Hook B (rewritten): "[text]"
Type: [type] | Curiosity: [/5] | Emotion: [/5] | Specificity: [/5] | Total: [/15]

Hook C (rewritten): "[text]"
Type: [type] | Curiosity: [/5] | Emotion: [/5] | Specificity: [/5] | Total: [/15]

EXPERIMENTAL:

Hook D: "[text]"
Type: [type] | Curiosity: [/5] | Emotion: [/5] | Specificity: [/5] | Total: [/15]

Hook E: "[text]"
Type: [type] | Curiosity: [/5] | Emotion: [/5] | Specificity: [/5] | Total: [/15]

PRIMARY RECOMMENDED HOOK: Hook [letter] — "[text]"
Reason: [one sentence]

SILENT AUTOPLAY OPTION: Hook [letter] — "[text]"

Proven pattern note: [any insight from winning_posts_log.md — or "No data yet"]
```

---

## Quality Gate

Before passing to Workflow 06, verify:
- [ ] No hook starts with "I", "We", or "Welcome"
- [ ] No hook exceeds 12 words for the spoken/text-overlay version
- [ ] At least one hook is suitable as a silent text overlay
- [ ] At least one hook references boxing specifically (not just general fitness)
- [ ] At least 5 distinct hooks are available (covering at least 3 different hook types)
- [ ] A primary recommendation is clearly stated with one-line reasoning
