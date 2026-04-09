# ORCHESTRATION.md — Heathrow Boxing Club Workflow Router

This is the first file Claude reads before executing any content task. It determines which workflows run, in what order, and how output flows between them.

---

## Workflow Chain Reference

| ID  | File                          | Role                                    |
|-----|-------------------------------|-----------------------------------------|
| 01  | 01_trend_intelligence.md      | Research current boxing/fitness trends  |
| 02  | 02_audience_psychology.md     | Identify pain points, desires, triggers |
| 03  | 03_content_strategist.md      | Combine trend + psychology into ideas   |
| 04  | 04_script_writer.md           | Write hook, body, CTA                   |
| 05  | 05_hook_optimiser.md          | Rewrite hooks for retention/emotion     |
| 06  | 06_content_variations.md      | Create 2–3 variations of the same idea  |
| 07  | 07_format_platform.md         | Adapt output per platform               |
| 08  | 08_performance_analyst.md     | Analyse post results after publishing   |
| 09  | 09_memory_agent.md            | Log wins/fails; read back insights      |
| 10  | 10_strategy_evolution.md      | Update strategy based on accumulated data |

---

## How to Use This System

When you receive a user request:
1. Read this file first
2. Match the request to a trigger pattern below
3. Confirm the chain in one line before starting (e.g., "Running: 01 → 02 → 03 → 04 → 05 → 06 → 07 → 09")
4. Load each workflow file in sequence and execute it fully before moving to the next
5. Label every output block clearly: `[WORKFLOW-01 OUTPUT]`, `[WORKFLOW-02 OUTPUT]`, etc.
6. Save the final deliverable to `output/` with the filename format: `YYYY-MM-DD_[type]_[description].md`
7. Always end creative sessions by running Workflow 09 (write mode) to bank unused ideas and log results

**If a request is ambiguous** — ask a clarifying question before starting. Do not guess the platform, audience, or format.

---

## Trigger Routing Table

### "Create a content calendar for a week / month"
**Chain:** 09(read) → 01 → 02 → 03 → 04 → 05 → 06 → 07 → 09(write)
**Output file:** `YYYY-MM-DD_content_calendar_weekly.md`
**Notes:** Ask upfront: how many posts per platform, any specific events or fights that week, any footage already filmed?

### "Generate [N] Instagram Reel / TikTok / Shorts ideas"
**Chain:** 09(read) → 01 → 02 → 03 → 04 → 05 → 06 → 07
**Output file:** `YYYY-MM-DD_reel_ideas.md`

### "Write captions for [specific clip / footage]"
**Chain:** 02 → 04 → 05 → 06 → 07
**Output file:** `YYYY-MM-DD_captions_[description].md`
**Notes:** Skip trend research — user already has footage. Ask: what's in the clip, which platforms to post on.

### "What's trending on TikTok / IG for boxing?"
**Chain:** 01 only
**Output file:** `YYYY-MM-DD_trend_report.md`

### "Analyse my last [N] posts / why did [post] flop or perform well?"
**Chain:** 08 → 09(write) → 10
**Output file:** `YYYY-MM-DD_performance_analysis.md`
**Notes:** Ask user to provide: platform, date posted, content type, reach, likes, comments, saves/shares for each post.

### "Update my strategy / strategy review"
**Chain:** 09(read) → 10
**Output file:** `YYYY-MM-DD_strategy_update.md`
**Notes:** Only run this after at least 3–5 performance analyses have been logged. Flag if insufficient data.

### "Give me hook ideas for [topic / content type]"
**Chain:** 02 → 05
**Output file:** `YYYY-MM-DD_hook_ideas_[topic].md`

### "Write a script for [specific video idea]"
**Chain:** 02 → 04 → 05
**Output file:** `YYYY-MM-DD_script_[description].md`

---

## Data Handoff Convention

Each workflow produces a structured output block labelled `[WORKFLOW-NN OUTPUT]`. The next workflow in the chain reads the previous block(s) before executing. Claude must not skip ahead or merge steps silently — each step is shown to the user so they can see the reasoning.

**Memory context injection:** When Workflow 09 runs in read mode (start of session), it produces a `[MEMORY-CONTEXT]` block. This block is injected into Workflow 03 (Content Strategist) to prevent repeating failed ideas and to surface proven patterns.

---

## Quality Rules (Apply to Every Session)

- Never produce generic fitness content — everything must be boxing-specific and relevant to Heathrow Boxing Club
- Every content piece must be filmable on an iPhone in under 15 minutes
- If a request is unclear about platform, audience, or format — ask before proceeding
- Pass the Distribution Test (from CLAUDE.md) before delivering any piece:
  - Will it reach people who don't follow the gym yet?
  - Does it attract qualified followers (people who might actually train)?
  - Is it interesting without being over-produced?
  - Can it be filmed today with just an iPhone?

---

## 🇺🇦 Ukrainian Translation Rule

**Every output must be fully duplicated in Ukrainian.** See CLAUDE.md for the full rule. This applies in every workflow, every session, with no exceptions. After every English content piece, add the `🇺🇦 UKRAINIAN VERSION` block with a complete natural-language translation.

---

## Output Format & UI

All output files are saved as **HTML** to `output/` for clean reading on desktop and iPhone. Use the template structure defined in `resources/output_template.html`.

HTML outputs:
- Open in any browser including iPhone Safari
- Have clear visual hierarchy — day cards, post cards, colour-coded platform tags
- Are mobile-responsive (readable on a 390px iPhone screen without zooming)
- Show English content first, Ukrainian version collapsed below each section

**File naming:** `YYYY-MM-DD_[type]_[description].html`

For reference/editing purposes, also save a `.md` version with the same name.

**After saving any new HTML output file:** add a new `<a class="card">` entry to `index.html` in the correct section (Calendars / Reel Ideas / Captions / Performance). This keeps the Content Hub up to date with clickable links to every generated file.

**Hosting:** The workspace is designed to be hosted on GitHub Pages. Once set up, the Content Hub URL is `https://[username].github.io/[repo-name]/` and each output file has its own URL at `https://[username].github.io/[repo-name]/output/[filename].html`.

---

## Output File Naming Convention

```
YYYY-MM-DD_[type]_[short-description].html   ← primary (readable on iPhone)
YYYY-MM-DD_[type]_[short-description].md     ← reference copy
```

Examples:
- `2026-04-08_content_calendar_weekly.html`
- `2026-04-08_captions_pad_work_clip.html`
- `2026-04-08_reel_ideas_beginner_content.html`
- `2026-04-08_performance_analysis_week12.html`
