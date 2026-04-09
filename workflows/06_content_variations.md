# Workflow 06: Content Variations

**Role in Chain:** Sixth workflow — multiplies one idea into 2–3 distinct posts from the same filming session.
**Trigger Condition:** All content creation chains. Runs after Workflow 05.
**Reads From:** `[WORKFLOW-04 OUTPUT]` (script + production note), `[WORKFLOW-05 OUTPUT]` (optimised hooks)
**Writes To:** `[WORKFLOW-06 OUTPUT]` — passed to Workflow 07

---

## Purpose

One filming session should produce more than one piece of content. By creating distinct variations from the same footage — different hook, different tone, different angle — the gym gets more output from less filming time. This is how small gyms compete with content creators who post daily. More shots at virality without extra work.

Variations must be genuinely distinct. Not just a different caption on the same video. Different emotional angle, different hook type, different audience segment, or different format structure.

---

## Input Required

- `[WORKFLOW-04 OUTPUT]` — the full script, production note (what footage will be captured)
- `[WORKFLOW-05 OUTPUT]` — all the optimised hooks with their types and scores

---

## Process

### Step 1: Identify the Core Footage
From the production note in `[WORKFLOW-04 OUTPUT]`, identify what footage will actually be captured in this filming session:
- What physical moments / clips will be filmed?
- Who is in the footage?
- What training element / topic does it cover?

This is the raw material that all variations must be built from — no variation should require additional filming beyond the original production note.

### Step 2: Create Variation A (Primary)
Variation A = the primary version from `[WORKFLOW-04 OUTPUT]` with the recommended hook from `[WORKFLOW-05 OUTPUT]`.
- No changes needed — this is already scripted
- Confirm: which platform it is best suited to (primary platform)
- Confirm: which audience segment it primarily targets

### Step 3: Create Variation B (Different Emotional Angle)
Take the same footage concept, apply a different hook type and tone.
- Choose a hook from `[WORKFLOW-05 OUTPUT]` that uses a DIFFERENT type than Variation A
- Adjust the tone: if Variation A is hype/motivation → Variation B might be educational or relatable
- Adjust the body emphasis: if Variation A leads with transformation → Variation B might lead with technique or community
- The CTA can also shift (e.g., if A targets new sign-ups, B might target people already considering it)
- Note: which platform Variation B suits best (may differ from A — e.g., A is TikTok, B is Instagram)
- Note: which audience segment Variation B primarily targets (may differ from A)

### Step 4: Create Variation C (Optional — Different Format)
Only create Variation C if the original filming session can support it without extra effort.
Variation C uses a genuinely different format from A and B:
- If A and B are Reels → C might be a carousel (screenshots of key technique moments + text)
- If A and B are talking head → C might be a training montage version of the same topic
- If A and B are motivational → C might be a "before / during / after" split format
- If a third distinct variation cannot be created from the same footage → skip Variation C and note why

---

## Output Format

```
[WORKFLOW-06 OUTPUT]

Core footage session: [1–2 sentences describing what will be filmed]

VARIATION A (Primary):
Hook: "[text from WORKFLOW-05 recommended hook]"
Format: [same as WORKFLOW-04]
Tone: [hype / educational / emotional / relatable / aspirational]
Platform best-fit: [Instagram / TikTok / Facebook / Shorts]
Target segment: [A / B / C]
Script: [reference WORKFLOW-04 OUTPUT — no need to rewrite unless tone changes]
What makes it distinct: [Primary version — benchmark for B and C]

VARIATION B (Alternative Angle):
Hook: "[different hook from WORKFLOW-05]"
Format: [same or adjusted]
Tone: [different from A]
Platform best-fit: [may differ from A]
Target segment: [may differ from A]
Body adjustment: [describe what changes from Variation A's body — tone shift, different emphasis, etc.]
CTA adjustment: [if different]
What makes it distinct: [One sentence — different hook type + different tone/emphasis]

VARIATION C (Different Format — if possible):
Hook: "[hook option]"
Format: [genuinely different from A and B]
Platform best-fit: [platform]
Target segment: [segment]
Format note: [why this format works differently — e.g., carousel gets saves, montage gets shares]
What makes it distinct: [One sentence]

OR: Variation C not created — [reason: requires additional filming / footage doesn't support a third format]
```

---

## Quality Gate

Before passing to Workflow 07, verify:
- [ ] Variations A and B are genuinely distinct (different hook type AND different tone)
- [ ] No variation requires footage outside the original production note
- [ ] Each variation is tagged with its best-fit platform
- [ ] Each variation is tagged with its target audience segment
- [ ] If Variation C is skipped, the reason is stated
