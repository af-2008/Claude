# Workflow 04: Script Writer

**Role in Chain:** Fourth workflow — turns a content idea into an actual deliverable script with hook, body, and CTA.
**Trigger Condition:** Any request for a full script, captions, or content calendar. Runs after Workflow 03 for idea-driven requests, or directly after Workflow 02 when the user provides existing footage.
**Reads From:** `[WORKFLOW-03 OUTPUT]` (or user-provided brief), `[WORKFLOW-02 OUTPUT]` (audience state of mind brief), `resources/hook_templates.md`, `resources/brand_voice_guide.md`
**Writes To:** `[WORKFLOW-04 OUTPUT]` — passed to Workflow 05

---

## Purpose

Write the actual content — not the idea, not the strategy, but the words, visuals, and instructions that get posted. Every output from this workflow must be usable immediately: hooks written for the first 2–3 seconds, body structured for the format, CTA specific and actionable, and production notes so specific the user knows exactly what to film and how.

---

## Input Required

- The selected content idea from `[WORKFLOW-03 OUTPUT]` (or user-specified brief if skipping 01–03)
- `[WORKFLOW-02 OUTPUT]` — the audience state of mind brief (what they're feeling before they see this)
- `resources/hook_templates.md` — reference for hook type structures
- `resources/brand_voice_guide.md` — tone, phrases to use/avoid, emoji rules

---

## Process

### Step 1: Confirm the Format
Based on the selected idea, confirm the content format:
- **Short Reel / TikTok (15–30s):** 3–5 visual moments, fast cuts, text overlay hook
- **Mid Reel (30–60s):** more developed body, can include technique or mini-story
- **Tutorial / educational Reel:** step-by-step structure, each step = one visual moment
- **Talking head:** coach or member speaks directly to camera, text overlays optional
- **Montage + voiceover:** training footage with narrated script over the top
- **Caption-only (no script):** for carousel posts or still images

Format determines how the body is structured.

### Step 2: Write 2–3 Hook Options
Write 2–3 rough hooks — first 1–3 seconds, spoken aloud or as text overlay. These are NOT optimised yet (Workflow 05 handles that), but they should:
- Not start with "I", "We", or "Welcome"
- Be under 12 words for the spoken / text overlay version
- Directly address the emotional trigger identified in `[WORKFLOW-02 OUTPUT]`
- Be distinct from each other (different hook types — see `resources/hook_templates.md`)

Label each: Hook A, Hook B, Hook C

### Step 3: Write the Body
Structure the body based on the confirmed format:

**For Reels/TikTok (visual-led):**
Write 3–5 visual moments as numbered instructions. Each moment = one shot or clip, described in filming terms.
Format per moment: `[MOMENT N]: [What to film] — [Text overlay if any] — [Duration: Xs]`

**For talking head:**
Write the spoken script word-for-word. Keep sentences short (under 12 words each). Mark pauses [PAUSE], emphasis [STRONG], and any visual cues.

**For captions (no video script):**
Write 3–5 punchy sentences. First sentence = hook. Middle = value/story. Last sentence before CTA = social proof or aspiration.

**Body rules (all formats):**
- At least one boxing-specific reference (a technique name, a training element, the gym)
- No filler words ("basically", "literally", "kind of")
- No corporate gym language ("we offer", "our facilities", "world-class")
- Keep it specific to Heathrow Boxing Club — not a generic gym

### Step 4: Write the CTA
One clear next step. Match the platform's expected action:
- Instagram: "DM us 'TRAIN' to book your first class" / "Link in bio — first session free" / "Tag someone who needs to start boxing"
- TikTok: "Follow for more boxing content" / "Comment 'GYM' if you want the details"
- Facebook: "Message us or call in — West Drayton, open 7 days"
- All platforms: avoid vague CTAs like "follow us", "check us out", "hit the link"

### Step 5: Write the Strategic Rationale
2–3 sentences explaining:
- Why this content works for the specific audience segment
- Why it fits the platform it's being created for
- What makes it specific to Heathrow Boxing Club (not copy-paste for any gym)

### Step 6: Write the Production Note
Specific iPhone filming instructions. Must be detailed enough that someone with no film experience can execute it in under 15 minutes. Include:
- Who is in the shot (coach, member, specific drill)
- Where in the gym (ring, bags, mirror, outside)
- Camera angle / orientation (vertical 9:16, eye level / low angle / overhead)
- Any specific moments to capture (a clean combination, a reaction, a sweat shot)
- Approximate clips needed (e.g., "5 clips, 3–5 seconds each")
- Editing note: any text overlays, captions, or audio type (trending / original / silence)

---

## Output Format

```
[WORKFLOW-04 OUTPUT]

Format: [Reel 15–30s / Reel 30–60s / Talking head / Montage / Caption-only]
Target segment: [A / B / C]

HOOKS (rough — Workflow 05 will optimise):
Hook A: "[text]" — Type: [curiosity / transformation / direct address / etc.]
Hook B: "[text]" — Type: [type]
Hook C: "[text]" — Type: [type]

BODY:
[Numbered visual moments OR spoken script OR caption body, depending on format]

CTA: "[exact CTA text]"

STRATEGIC RATIONALE:
[2–3 sentences]

PRODUCTION NOTE:
[Specific iPhone filming instructions]
```

---

## Quality Gate

Before passing to Workflow 05, verify:
- [ ] No hook starts with "I", "We", or "Welcome"
- [ ] Body contains at least one boxing-specific reference
- [ ] CTA includes a specific next action (not just "follow us")
- [ ] Production note is specific enough to execute today
- [ ] Tone matches `resources/brand_voice_guide.md` (hype-driven, punchy, boxing-authentic)
- [ ] Content passes the Distribution Test from CLAUDE.md
