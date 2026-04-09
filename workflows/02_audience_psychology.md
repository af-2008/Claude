# Workflow 02: Audience Psychology

**Role in Chain:** Second workflow — adds emotional depth before content is written. Prevents generic output.
**Trigger Condition:** All content creation requests. Also runs for caption-writing requests (even without trend research).
**Reads From:** CLAUDE.md (audience section), `resources/brand_voice_guide.md`
**Writes To:** `[WORKFLOW-02 OUTPUT]` block — passed to Workflow 03 (or directly to 04 for caption requests)

---

## Purpose

Map the specific emotional driver behind the content being created. Without this, content is informational at best — it tells people about boxing but doesn't make them feel something. This workflow identifies which audience segment to target, what they are feeling right now, and what emotional trigger will pull them in. Trend + psychology = content that both reaches people AND converts them.

---

## Input Required

- The user's content brief or request (what kind of content, any specific topic)
- `[WORKFLOW-01 OUTPUT]` if available (to align psychology with the chosen trend)
- CLAUDE.md — audience section (three primary segments)

---

## The Three Audience Segments

**Segment A — The Fitness Seeker**
- Goal: lose weight, get fit, tone up, feel better in their body
- Pain: feels stuck in boring gym routines that don't work, intimidated by "real" combat sports gyms
- Desire: a fitness approach that's actually fun, that gets results, that they can stick to
- Fear: being out of place, embarrassing themselves, not being "fighter enough"
- Identity pull: "I'm someone who does something different — not just another gym goer"

**Segment B — The Aspiring Fighter**
- Goal: learn proper boxing, compete eventually or just spar confidently
- Pain: has been training but feels like their technique is wrong or they're not improving
- Desire: real coaching, proper technique, structured development, sparring partners
- Fear: training with coaches who don't take them seriously, wasting money on bad coaching
- Identity pull: "I'm a real boxer, not a fitness boxer"

**Segment C — The Fight-Prep Athlete**
- Goal: preparing for an actual bout — amateur, white collar, or semi-pro
- Pain: not feeling ready, not knowing if their gym is preparing them properly
- Desire: hard sparring, fight-specific conditioning, technical sharpening
- Fear: stepping in the ring underprepared, losing in front of people
- Identity pull: "I'm a fighter who trains at a serious gym"

---

## Process

### Step 1: Identify Primary Segment
Based on the content brief and trend output (if available), determine which segment is the primary target for this specific piece:
- A content calendar with diverse content may target all three across different pieces
- A single piece should have one primary segment for maximum emotional specificity
- If unclear, default to Segment A (largest audience, highest growth potential)

### Step 2: Map the Emotional Driver
For the chosen segment, identify the primary psychological trigger:
- **Pain** — they're suffering from something and need relief (e.g., "I hate the gym, I quit after 2 weeks every time")
- **Desire** — they want something aspirational (e.g., "I want to look and move like a boxer")
- **Identity** — who they want to become (e.g., "I want to be someone who boxes, not just someone who goes to the gym")
- **Social proof** — others like them are doing it (e.g., "Normal people from West Drayton train here")
- **Fear / loss** — what they're afraid of missing out on or getting wrong

### Step 3: Write the Audience State of Mind Brief
Write a short paragraph (3–5 sentences) that describes:
- What this person is thinking and feeling *before* they see the content
- What question they have in their head that the content could answer
- What they should think and feel *after* watching / reading

This brief is the emotional brief for Workflow 04 (Script Writer). It must be specific to a real person, not a demographic category.

### Step 4: Identify the Hook Angle
Based on the emotional driver, suggest the most powerful hook direction:
- Pain-based: lead with the problem ("Still feeling out of shape after months of trying?")
- Aspiration-based: lead with the outcome ("This is what 8 weeks of boxing actually does to your body")
- Identity-based: direct address to who they want to be ("For anyone who's always wanted to actually box")
- Social proof: normalise it ("Our members came in just like you")
- Pattern interrupt: challenge their assumption ("Boxing is not a fitness class — here's why that's better")

---

## Output Format

```
[WORKFLOW-02 OUTPUT]

Primary Segment: [A / B / C — name it]
Emotional Driver: [Pain / Desire / Identity / Social Proof / Fear]
Specific trigger: [one sentence — what exactly are they feeling]

Audience State of Mind:
[3–5 sentence paragraph — what they're thinking before and what they should feel after]

Recommended Hook Angle: [Pain / Aspiration / Identity / Social Proof / Pattern Interrupt]
One-line hook direction: "[example direction, not the final hook]"
```

---

## Quality Gate

Before passing to the next workflow, verify:
- [ ] A specific segment has been named (not "everyone")
- [ ] The emotional driver is specific (not "they want to get fit" — that is too vague)
- [ ] The audience state of mind paragraph describes a real person's inner monologue
- [ ] The hook angle is actionable and distinct from a generic fitness angle
