# Workflow 10: Strategy Evolution

**Role in Chain:** Final workflow — closes the feedback loop and upgrades the entire system based on accumulated data.
**Trigger Condition:** User requests a strategy review. Also triggered automatically after Workflow 08 when the performance analysis reveals a clear strategic shift is needed.
**Reads From:** `resources/winning_posts_log.md`, `resources/failed_ideas_log.md`, `resources/content_idea_bank.md`, `resources/hook_templates.md`, `[WORKFLOW-08 OUTPUT]` (if available), `[WORKFLOW-01 OUTPUT]` (if available from same session)
**Writes To:** `output/YYYY-MM-DD_strategy_update.md`. May recommend updates to `CLAUDE.md`.

---

## Purpose

Data accumulates. Without a workflow to interpret it strategically, it just sits in log files. This workflow synthesises everything — performance history, hook patterns, content type results, audience segment data — into an updated strategic brief that reshapes future content decisions. It answers: what should the gym double down on, what should it stop doing, and what new approach should it test next?

Run this workflow every 3–5 performance analyses (roughly monthly). Do not run it on insufficient data — flag this if fewer than 3 posts have been analysed.

---

## Input Required

- `resources/winning_posts_log.md` — all entries
- `resources/failed_ideas_log.md` — all entries
- `[WORKFLOW-08 OUTPUT]` — most recent performance analysis (if available)
- `[WORKFLOW-01 OUTPUT]` — current trend data (if run in this session)
- Current follower count and platform context (ask user if not provided)

---

## Minimum Data Requirement

Before running a full strategy evolution, check: are there at least 3 entries in `winning_posts_log.md` OR `failed_ideas_log.md`?

If not: output a brief note — "Insufficient data for a full strategy update. Run at least 3 performance analyses first. Proceeding with a directional review based on available data." Then continue with whatever data exists.

---

## Process

### Step 1: Identify Winning Content Pillars
From `winning_posts_log.md`, look for patterns across:
- **Content type** — do Reels outperform carousels? Does technique content outperform motivation?
- **Hook type** — which hook types appear most in winning posts?
- **Audience segment** — do Segment A posts (fitness seekers) consistently outperform Segment B/C, or vice versa?
- **Emotional driver** — do transformation posts get more saves? Do community/social proof posts get more shares?

Identify the top 3 content pillars that are consistently winning. A "content pillar" = a combination of content type + emotional driver + audience segment. E.g., "Tutorial Reels targeting Segment B with a curiosity gap hook" or "Community social proof Reels targeting Segment A with a transformation claim".

### Step 2: Identify What to Stop
From `failed_ideas_log.md`, look for:
- Content types that have failed more than once
- Hook styles that consistently underperform
- Topics that failed to attract qualified followers (high reach, low saves/follows)
- Formats that are difficult to film AND don't reward the effort

For each "stop doing" recommendation, state the evidence clearly (number of failures, type of failure).

### Step 3: Identify One New Approach to Test
Based on the winning patterns and the current trend data (if available from Workflow 01), recommend ONE new content approach to test in the next 2 weeks:
- Must be genuinely new (not a variation on something already in the winning log)
- Must be realistic to execute on iPhone at the gym
- Must have a clear hypothesis: "We're testing this because [pattern from data] suggests [audience segment] responds to [content type] and we haven't tried [new approach] yet"

### Step 4: Review Content Cadence
Based on the data, recommend:
- How many posts per week per platform (Instagram, TikTok, Facebook)
- Which content types to rotate (e.g., 2x Reels + 1x carousel per week on Instagram)
- Whether the current posting schedule is optimal or needs adjusting

### Step 5: Flag CLAUDE.md Updates (if needed)
Review whether any new insight should update the master CLAUDE.md file:
- New audience insight that changes who the gym should target
- New constraint discovered from failures (e.g., a topic area that consistently fails)
- New brand voice learning (e.g., a phrase or CTA that outperforms others)
- Updated platform priority (e.g., TikTok showing stronger growth than expected)

Only recommend CLAUDE.md updates if the data clearly supports a change. Do not suggest updates based on a single post. Note: Claude does not automatically update CLAUDE.md — present the recommendation and ask the user to approve.

---

## Output Format

Save to `output/YYYY-MM-DD_strategy_update.md`

```
[STRATEGY EVOLUTION OUTPUT]
Date: [date]
Posts analysed to date: [N winning + N failed]
Account status: [current follower count, primary platform]

---

TOP 3 CONTENT PILLARS (Double down on these):

Pillar 1: [Content type + Emotional driver + Audience segment]
Evidence: [Which posts, which metrics]
Recommendation: [Specific action — how often, what format, what hook type]

Pillar 2: [repeat]
Pillar 3: [repeat]

---

STOP DOING (Retire these):

1. [Specific content type / hook style / topic]
Evidence: [Number of failures, type of failure]

2. [repeat if applicable]

---

NEW APPROACH TO TEST:

Test: [Description of new content type or format]
Hypothesis: [Why we think this will work — based on what pattern]
How to test: [Specific — 2 posts, same week, compare metrics]
Success metric: [What result would confirm this works]

---

CONTENT CADENCE RECOMMENDATION:

Instagram: [N posts/week — mix of content types]
TikTok: [N posts/week]
Facebook: [N posts/week — type]
Best posting days/times: [specific]

---

CLAUDE.MD UPDATE RECOMMENDATIONS:
[List any suggested updates with evidence — or "No updates recommended based on current data"]

---

SUMMARY (3 sentences):
[What's working, what to stop, what to test — for quick reference at start of next session]
```

---

## Quality Gate

Before saving the output file, verify:
- [ ] Every recommendation is backed by specific logged data (not assumptions)
- [ ] "Stop doing" recommendations cite at least 2 failures (not a single data point)
- [ ] The new test has a clear hypothesis and success metric
- [ ] CLAUDE.md update recommendations are clearly labelled as recommendations (not automatic changes)
- [ ] The summary is 3 sentences and can be read in under 10 seconds
- [ ] Output file is saved with correct date-prefixed filename in `output/`
