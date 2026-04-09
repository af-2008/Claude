# Workflow 08: Performance Analyst

**Role in Chain:** Feedback loop — runs after content has been posted and the user provides performance data.
**Trigger Condition:** User asks "why did this post flop?", "analyse my last [N] posts", or provides engagement metrics.
**Reads From:** User-provided metrics, `resources/winning_posts_log.md`, `resources/failed_ideas_log.md`
**Writes To:** `[WORKFLOW-08 OUTPUT]` — passed to Workflow 09 and 10

---

## Purpose

Raw numbers mean nothing without interpretation. This workflow turns engagement metrics into specific, actionable lessons — not generic advice like "post more consistently" but specific diagnoses like "the hook was generic fitness, not boxing-specific, which explains why saves were low but reach was okay". Over time, these lessons feed the Memory Agent and become the intelligence layer that improves every future content decision.

---

## Input Required

Ask the user to provide the following for each post being analysed:
1. Platform (Instagram / TikTok / Facebook / YouTube Shorts)
2. Date posted
3. Content type (Reel, carousel, talking head, montage, caption-only)
4. Hook used (exact text of the first line or text overlay)
5. Topic / concept (what the post was about)
6. Metrics: Reach, Likes, Comments, Shares, Saves (or plays/views for TikTok)
7. Follower change on that day (if known)
8. Any comments or feedback that stood out

If the user can't provide all metrics, work with what's available — note which data is missing.

---

## Performance Benchmarks (Heathrow Boxing Club Context)

These are working benchmarks for an Instagram account around 3K followers. Adjust as the account grows.

**Instagram Reels:**
- Reach: 500–2K = normal | 2K–5K = above average | 5K+ = strong
- Likes: 2–3% of reach = normal | 4%+ = above average
- Saves: 0.5–1% of reach = normal | 2%+ = high interest (educational content tends to drive saves)
- Shares: any shares = good | shares > likes = viral potential
- Watch time: full-watch rate above 30% = strong hook; below 15% = hook or pacing issue

**TikTok:**
- Views: 500–2K = normal for small account | 5K+ = breaking out of follower circle
- Completion rate: 50%+ = strong; below 30% = hook or pacing problem
- Shares: higher weight than Instagram — any share is positive signal

---

## Process

### Step 1: Collect and Organise the Data
Create a simple table with each post as a row and metrics as columns. If data is partial, note gaps. Do not guess or fill in missing numbers.

### Step 2: Identify the Best and Worst Performers
Compare across all posts provided:
- Which post had the highest reach? Why might that be?
- Which post had the highest saves? What type of content was it?
- Which post had the highest shares? What emotional trigger was at play?
- Which post had the lowest engagement rate despite decent reach? What might explain the drop-off?

### Step 3: Hypothesise Why Each Performed as It Did
For each post, analyse at least 3 of the following factors:
- **Hook quality** — was the hook specific/emotional, or generic?
- **Hook type** — which hook type was used (curiosity / transformation / direct address / etc.)
- **Topic relevance** — was the topic aligned with what the audience cares about right now?
- **Format match** — was the format right for the platform and content type?
- **CTA clarity** — was there a clear next step, or was it vague?
- **Posting time** — was it posted at an optimal time?
- **Audience segment targeted** — which segment was it aimed at, and did the metrics suggest that segment responded?
- **Uniqueness** — was this obviously boxing/Heathrow BC content, or could it have been any gym?

Be specific. Do not say "the hook wasn't good" — say "the hook was 'boxing is great for fitness' which is a generic benefit statement rather than a curiosity gap or direct address, which likely led to low initial retention".

### Step 4: Extract 3–5 Lessons
Write 3–5 specific, actionable lessons from this analysis. Format:

**Lesson N:** [Specific observation]
**Evidence:** [Which post, which metric]
**Action:** [What to do differently next time — specific, not generic]

Good examples:
- "Hooks that start with 'POV:' got 40% more reach than hooks that start with a direct statement. Test more POV hooks on Reels this month."
- "The technique tutorial post got 3x the saves of the motivational post. Educational = saves. Schedule at least one technique tutorial per week."
- "The post tagged with local hashtags (westdrayton, uxbridge) reached more non-followers than the one without. Always include Tier 3 hashtags."

Bad examples (too vague):
- "Post more consistently."
- "Use better hooks."
- "Engage with your audience."

### Step 5: Identify the Top Performer for Memory Agent
Identify the single best-performing post from this batch. Write a memory entry ready for Workflow 09 to log:
- Hook used (exact text)
- Hook type
- Metrics summary
- Why it worked (2 sentences max)
- Reuse potential: HIGH / MEDIUM / LOW and under what conditions

---

## Output Format

```
[WORKFLOW-08 OUTPUT]

Posts analysed: [N] posts | Platform(s): [list]

DATA TABLE:
| Post | Platform | Type | Hook | Reach | Likes | Saves | Shares | Comments |
|------|----------|------|------|-------|-------|-------|--------|----------|
| [1]  | [...]    | [...] | "[hook text]" | [#] | [#] | [#] | [#] | [#] |
[continue for each post]

BEST PERFORMER: Post [N] — [brief reason]
WORST PERFORMER: Post [N] — [brief reason]

ANALYSIS:
Post 1: [hypothesis — 2–4 sentences covering 3 factors]
Post 2: [hypothesis]
... (for each post)

LESSONS:
Lesson 1: [observation] | Evidence: [post + metric] | Action: [specific next step]
Lesson 2: [repeat]
Lesson 3: [repeat]
(up to 5 lessons)

MEMORY AGENT ENTRY (Top Performer):
Platform: [platform] | Date: [date] | Type: [type]
Hook: "[exact text]" | Hook type: [type]
Metrics: Reach [#] | Likes [#] | Saves [#] | Shares [#]
Why it worked: [2 sentences]
Reuse potential: [HIGH/MEDIUM] — [condition]
```

---

## Quality Gate

Before passing to Workflow 09, verify:
- [ ] Every lesson cites a specific post and specific metric (no generic advice)
- [ ] Every hypothesis mentions at least 3 specific factors
- [ ] The top performer memory entry is complete and ready for Workflow 09 to log
- [ ] At least one lesson produces a specific recommendation for future content
- [ ] Missing data is noted, not guessed
