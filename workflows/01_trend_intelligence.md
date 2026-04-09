# Workflow 01: Trend Intelligence

**Role in Chain:** First workflow — provides the trend foundation everything else builds on
**Trigger Condition:** Any content creation request (calendar, ideas, scripts). Also runs alone when user asks "what's trending?"
**Reads From:** `resources/content_idea_bank.md` (avoid repeating recent ideas), `resources/winning_posts_log.md` (avoid repeating what recently worked)
**Writes To:** `[WORKFLOW-01 OUTPUT]` block — passed to Workflow 03

---

## Purpose

Identify what is currently working on boxing and fitness social media (TikTok, Instagram Reels, YouTube Shorts). Synthesise trends by format, hook style, and topic. Filter everything to what is genuinely filmable at a boxing gym on an iPhone. Surface seasonal and event-driven opportunities. This workflow prevents creating content nobody wants.

---

## Input Required

- Current date / week (to identify seasonal context)
- Any upcoming boxing events (world title fights, local amateur cards, Heathrow Boxing Club fights)
- `resources/content_idea_bank.md` — check "Status: Used" entries to avoid duplication
- `resources/winning_posts_log.md` — skim for recently posted formats to avoid recycling too soon

---

## Process

### Step 1: Seasonal & Event Context
- Identify the current month and any boxing events in the next 2–4 weeks
- UK boxing calendar touchpoints: ABA amateur season (Oct–May), major world title fights, local shows
- Seasonal fitness triggers: January (new year), April–May (summer body), September (back to routine), December (gift memberships)
- Note any relevant context that could be tied into content this week

### Step 2: Active Format Trends (Boxing / Fitness TikTok + IG)
Identify 6–8 currently active content formats. For each format, note:
- **Format name** (e.g., "Day in the life", "3 mistakes beginners make", "POV: your first boxing class")
- **Hook style** (curiosity gap / transformation / direct address / controversy / question)
- **Why it gets shared** (relatability / education / aspiration / entertainment / social proof)
- **Primary engagement driver** (saves / shares / comments / follows)
- **Ideal length** (15s / 30s / 60s)

Current format categories to scan across:
- Tutorial / technique breakdowns
- Transformation / results content
- "POV" immersive content (e.g., "POV: you walked into your first boxing gym")
- Reaction / challenge content
- Behind-the-scenes / day-in-the-life
- "X mistakes" / "X things I wish I knew" educational lists
- Comparison content (boxing vs. regular gym, before vs. after)
- Community / social proof content (member spotlights, class atmosphere)

### Step 3: iPhone + Boxing Gym Filter
Remove any trend that:
- Requires professional production, drone footage, or complex editing
- Cannot be filmed in a boxing gym setting (ring, bags, pads, mirror wall)
- Would take more than 15 minutes to capture
- Requires participants other than trainer + 1–2 members

Flag each surviving trend: EASY / MEDIUM to film on iPhone.

### Step 4: Ukrainian Boxing / Unique Angle Filter
For each surviving trend, assess whether it can incorporate the gym's unique angle:
- Ukrainian-style boxing — footwork, defensive style, technical precision
- Community-driven atmosphere (not just a fitness class)
- Coach credibility and authentic boxing knowledge
- West Drayton / Uxbridge local identity

At least one trend must incorporate this unique angle directly.

### Step 5: Prioritisation
Select the top 5 trends. Rank them:
1. Best fit for current season/events
2. Highest shareability potential
3. Easiest to film
4. Most likely to attract new qualified followers (not just casual viewers)
5. Most aligned with the gym's unique identity

---

## Output Format

```
[WORKFLOW-01 OUTPUT]

Seasonal Context: [1–2 sentences on current timing/events]

TREND 1: [Format Name]
- Hook style: [type]
- Why it works: [1 sentence]
- Engagement driver: [saves / shares / comments]
- Filming difficulty: EASY / MEDIUM
- Ukrainian angle opportunity: [yes — how / no]
- Recommended for Heathrow BC because: [1 sentence]

TREND 2: [repeat structure]
... (up to 5 trends)

Top Priority This Week: TREND [N] — [one-line reason]
```

---

## Quality Gate

Before passing to Workflow 03, verify:
- [ ] All 5 trends are boxing-specific (not generic fitness)
- [ ] All 5 trends are iPhone-filmable in under 15 minutes
- [ ] At least one trend uses the Ukrainian boxing / unique style angle
- [ ] At least one trend is seasonal or event-relevant
- [ ] No trend duplicates a post from `winning_posts_log.md` in the last 3 weeks
