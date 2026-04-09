# Workflow 07: Format & Platform

**Role in Chain:** Seventh workflow — final formatting stage. Turns the scripted content into platform-ready posts.
**Trigger Condition:** All content creation chains. Final creative step before the content is ready to post.
**Reads From:** `[WORKFLOW-06 OUTPUT]`, `resources/hashtag_bank.md`, `resources/platform_specs.md`, `resources/brand_voice_guide.md`
**Writes To:** Final formatted content — saved to `output/` folder. Also writes `[WORKFLOW-07 OUTPUT]` for Workflow 09.

---

## Purpose

Every platform has different rules for caption length, hashtag count, pacing, and CTA placement. Content formatted for Instagram and copy-pasted to TikTok performs worse than platform-native content. This workflow takes each variation and produces a fully formatted, ready-to-post version for each relevant platform — with correct captions, hashtag sets, posting time, and any platform-specific notes.

This is the last step before posting. The output goes directly into the `output/` folder.

---

## Input Required

- `[WORKFLOW-06 OUTPUT]` — all variations with platform best-fit tags
- `resources/hashtag_bank.md` — all four tiers with platform-specific usage rules
- `resources/platform_specs.md` — technical specs per platform
- `resources/brand_voice_guide.md` — caption tone, emoji rules, length targets

---

## Process

### Step 1: Identify Which Platforms to Format For
Based on `[WORKFLOW-06 OUTPUT]` platform best-fit tags and the user's original request:
- **Always format for:** Instagram (primary platform)
- **Format for TikTok if:** the content is Reel-format (short video) and the hook is strong enough for cold TikTok audiences
- **Format for Facebook if:** the content has a community / local angle OR the user requests it
- **Format for YouTube Shorts if:** the content is a strong tutorial or transformation clip

For content calendars: format each piece for at least Instagram + TikTok unless the content type only suits one platform.

### Step 2: Instagram Formatting (Required for all video content)

**Caption structure:**
1. Hook line (first line — same as the recommended hook, adapted for text reading)
2. Line break (blank line)
3. Body copy (3–5 sentences, punchy, hype-driven, boxing-specific)
4. Line break
5. CTA (specific action)
6. Line break / dots separator
7. Hashtags (below the caption — never inline)

**Caption length:** 100–150 words for Reels. Can be longer for carousel/educational content (up to 200 words).

**Hashtag selection from `resources/hashtag_bank.md`:**
- Tier 1 (boxing-specific): 8–10 tags
- Tier 2 (fitness/transformation): 4–5 tags
- Tier 3 (local/geographic): 3–4 tags
- Tier 4 (viral/trend): 3–4 tags
- Total: max 30 tags

**Posting time recommendation:** Tuesday–Friday, 6–9pm UK time. Saturday 9–11am. Avoid Monday and Sunday evenings.

**Cover frame note:** Specify what the first frame / thumbnail should show (the most visually striking moment that makes someone stop scrolling).

### Step 3: TikTok Formatting (for video content)

**Caption:** Under 150 characters. Must include the hook again (TikTok captions are read before watching). Keep it conversational.

**Hashtag selection:** 3–5 tags only. Mix: 1–2 from Tier 1 (boxing-specific) + 1–2 from Tier 4 (viral/trend). No local tags on TikTok (reduces discovery reach).

**Audio note:** If a trending audio track fits the content tone, note it. Do not force trending audio onto content where it clashes. Original audio (coach talking, training sounds) can perform well on TikTok for authentic boxing content.

**Text overlay note:** First 2 seconds MUST have text hook overlaid (many TikTok viewers have sound off). Recommend exact text and placement (top or bottom of frame).

**Posting time:** TikTok's algorithm is less time-sensitive than Instagram. Post any time between 7am–10pm UK time. Evenings slightly better for engagement.

### Step 4: Facebook Formatting (if applicable)

**Caption:** Can be longer (200–400 words). More storytelling is appropriate. Write like a community update, not a hype post.

**Structure:** Opening hook → brief story or context → value / information → CTA → location tag
**Location tag:** Always tag "West Drayton" or "Uxbridge" in the post location

**Hashtags:** 3–5 max. Tier 1 + Tier 3 (local) only. Facebook hashtags have limited discovery value but help local search.

**Cross-post note:** Can use the same video as Instagram but the caption must be rewritten for Facebook's more community-oriented audience. Do not copy-paste Instagram captions.

### Step 5: YouTube Shorts Formatting (if applicable)

**Title:** Write like a search query. Include: boxing + specific topic + outcome. E.g., "Boxing footwork drill for beginners — Heathrow Boxing Club" or "What 30 days of boxing does to a beginner (West London)"

**Description:** 2–3 sentences. Include gym name, location (West Drayton, Uxbridge, West London), and one relevant keyword phrase.

**Pinned comment CTA:** "First class free — DM us or visit [location]" — note this should be added as a pinned comment post-upload.

### Step 6: Compile and Save
Compile all platform versions into a single output file.
Save to `output/` with the naming convention: `YYYY-MM-DD_[type]_[description].md`

---

## Output Format

```
[WORKFLOW-07 OUTPUT]
Output file saved: output/[filename].md

---

VARIATION A — [Brief title]

INSTAGRAM VERSION:
Caption:
[Hook line]

[Body — 3–5 sentences]

[CTA]

.
.
.
[Hashtags — one per line or grouped]

Posting time: [day, time UK]
Cover frame: [description of best thumbnail moment]

---

TIKTOK VERSION:
Caption: [under 150 characters]
Hashtags: [3–5 tags]
Text overlay (first 2 seconds): "[exact text]"
Audio note: [trending audio suggestion or "original audio works well here"]

---

FACEBOOK VERSION (if applicable):
Caption:
[Hook]
[Story/context]
[Value]
[CTA]
[Location: West Drayton / Uxbridge]
Hashtags: [3–5]

---

YOUTUBE SHORTS VERSION (if applicable):
Title: [SEO-style title]
Description: [2–3 sentences]
Pinned comment: [CTA text]

---

VARIATION B — [repeat structure for each variation]
VARIATION C — [if applicable]
```

---

## Quality Gate

Before saving and closing this session, verify:
- [ ] Instagram caption is 100–150 words (or up to 200 for educational content)
- [ ] Instagram hashtag count is correct (max 30, correct tier mix including 3–4 local tags)
- [ ] TikTok caption is under 150 characters
- [ ] TikTok has a text overlay note for the first 2 seconds
- [ ] At least 3 local hashtags appear in Instagram version (westdrayton, uxbridge, etc.)
- [ ] Every platform version has its own distinct CTA (not copy-pasted)
- [ ] Output file is saved to `output/` with correct date-prefixed filename
- [ ] Cover frame / thumbnail is specified for Instagram and Shorts
