# Blind Test Results

These samples are intentionally separate from the fixture files. They exercise
the same release bar with unseen inputs and record the expected output quality.

## Scoring

Each sample is scored on the `SKILL.md` quality gate:

- Meaning
- Register
- Specificity
- Rhythm
- Trust
- Cleanliness

Pass means all six dimensions pass without invented facts.

## Sample 1: Campus Notice

### Input

为深入贯彻落实绿色发展理念，进一步增强学生环保意识，学院将持续推进垃圾分类宣传教育工作，切实营造人人参与、共建共享的良好氛围。

### AI traces found

- Officialese padding: `深入贯彻落实`, `进一步增强`, `持续推进`, `切实营造`.
- Generic positivity: `人人参与、共建共享的良好氛围`.
- No concrete action beyond "宣传教育工作".

### Rewrite After Tightening

学院将开展垃圾分类说明和提醒，帮助学生分清常见垃圾的投放方式。原文没有说明活动时间、地点或具体安排，因此不补这些细节。

### Score

| Dimension | Result |
| --- | --- |
| Meaning | Pass |
| Register | Pass |
| Specificity | Pass |
| Rhythm | Pass |
| Trust | Pass |
| Cleanliness | Pass |

### Action

Addressed in `SKILL.md`: vague official text now defaults to conservative
rewriting before vivid rewriting.

## Sample 2: SaaS Product Copy

### Input

我们以 AI 驱动的 customer insight 平台，打通用户全生命周期数据，帮助品牌实现精细化运营和增长闭环。

### AI traces found

- Decorative English: `AI 驱动`, `customer insight`.
- Marketing jargon: `全生命周期`, `精细化运营`, `增长闭环`.
- No concrete source data, user action, or measurable result.

### Rewrite

这个平台把用户注册、购买、客服和复购记录放在一起，方便品牌查看用户从哪里来、买过什么、后来有没有再回来。原文没有给出模型能力或增长数据，所以不写“AI 驱动”或“增长闭环”。

### Score

| Dimension | Result |
| --- | --- |
| Meaning | Pass |
| Register | Pass |
| Specificity | Pass |
| Rhythm | Pass |
| Trust | Pass |
| Cleanliness | Pass |

## Sample 3: Technical Release Note

### Input

本次升级通过引入异步任务调度机制，显著提升系统吞吐能力，为后续复杂业务场景的拓展提供了坚实支撑。

### AI traces found

- Unsupported performance claim: `显著提升`.
- Explanation padding: `为...提供了坚实支撑`.
- Technical mechanism is present but result lacks evidence.

### Rewrite

本次升级加入了异步任务调度。耗时任务可以先进入队列，再由后台 worker 处理，避免阻塞主请求。原文没有给出压测数据，因此不写“显著提升吞吐能力”。

### Score

| Dimension | Result |
| --- | --- |
| Meaning | Pass |
| Register | Pass |
| Specificity | Pass |
| Rhythm | Pass |
| Trust | Pass |
| Cleanliness | Pass |

## Sample 4: Personal Reflection

### Input

毕业以后我才发现，成长不是一场抵达终点的旅行，而是在无数次选择中与自己和解的过程。

### AI traces found

- Aphorism formula: `成长不是...而是...`.
- Abstract emotional vocabulary: `与自己和解`.
- No concrete personal detail.

### Rewrite After Tightening

毕业以后我才发现，成长不是突然到达某个终点。很多时候只是一次次做选择，一次次承认自己没想清楚，然后慢慢接受那个不那么确定的自己。

### Score

| Dimension | Result |
| --- | --- |
| Meaning | Pass |
| Register | Pass |
| Specificity | Pass |
| Rhythm | Pass |
| Trust | Pass |
| Cleanliness | Pass |

### Action

Addressed in `SKILL.md`: personal rewrites can become less formulaic without
inventing biography.

## Sample 5: Policy Summary

### Input

该政策的出台，不仅回应了社会关切，更体现了治理体系和治理能力现代化的持续推进，具有重要现实意义。

### AI traces found

- Mechanical contrast: `不仅...更...`.
- Officialese and significance inflation: `治理体系和治理能力现代化`, `持续推进`, `重要现实意义`.
- No policy content is provided.

### Rewrite

这项政策回应了社会关注的问题。原文没有说明政策具体改了什么、影响谁、怎样执行，因此不能判断它的实际意义。

### Score

| Dimension | Result |
| --- | --- |
| Meaning | Pass |
| Register | Pass |
| Specificity | Pass |
| Rhythm | Pass |
| Trust | Pass |
| Cleanliness | Pass |

## Blind-Test Findings

The first pass exposed one material gap: the skill strongly said not to invent
facts, but examples that ask for specificity could still tempt the editor to add
plausible details in official and personal prose.

Required tightening:

1. In `Core Contract`, make conservative rewriting the default when source text
   is vague. Done.
2. In `Process`, add a fact-invention pass before drafting examples.
   Done.
3. In `Output`, require speculative concrete examples to live in `Notes`, not
   the rewrite. Done.
