# zh-writing-humanizer Skill Design Grilling

## Verdict

The current design is directionally useful, but not yet implementation-ready.
It is practical as a repository and maintenance strategy. It is not yet proven
as a Chinese writing skill because the core Chinese rule taxonomy, examples,
false-positive rules, and validation fixtures have not been written.

The strongest design choice is to track `blader/humanizer` for workflow,
version discipline, and pattern evolution while treating the old Chinese
localization as prior art. The weakest part is that "adapt upstream to Chinese"
can still collapse into a translated checklist unless we force the design to
answer real Chinese writing scenarios.

## Evidence Checked

- Local repository exists on `main` with remote
  `https://github.com/ruijayfeng/zh-writing-humanizer.git`.
- Primary upstream `blader/humanizer` currently resolves to commit
  `9600f2b7241cb4eed6ad803abee5ea01d67fe8e4`.
- Upstream `SKILL.md` is version `2.8.0` and contains 33 patterns.
- Latest upstream change added patterns for manufactured punchlines, aphorism
  formulas, and conversational rhetorical openers.
- `op7418/Humanizer-zh` still presents itself as translated from
  `blader/humanizer` and referencing `hardikpandya/stop-slop`, but its content
  is much shorter and lacks the current upstream structure.

## Core Practicality Test

This skill is useful only if it can answer five jobs better than the existing
Chinese localization:

1. Rewrite Chinese text without sounding like translated English.
2. Preserve all original claims unless the user explicitly asks to condense.
3. Avoid injecting "personality" into technical, legal, academic, or reference
   prose.
4. Detect Chinese-native AI tells, not only English tells translated into
   Chinese.
5. Explain briefly what remained AI-like before giving the final rewrite.

If any one of these fails, maintaining a new repo is mostly ceremony.

## Questions The Design Must Answer

### 1. What is the actual user job?

Is the skill mainly for:

- rewriting already-written Chinese prose;
- translating English humanizer behavior into Chinese;
- detecting AI writing in Chinese;
- creating a stricter editing checklist for agents;
- or matching a user's personal Chinese voice?

Current answer: the repo says all of these indirectly. The first release should
choose one primary job: **rewrite Chinese prose while preserving meaning and
register**. Detection and scoring should support that job, not become the main
product.

### 2. What counts as "human" in Chinese?

Bad answer: more colloquial, more emotional, more casual.

Better answer: appropriate register, concrete nouns, clear actor/action,
natural rhythm, fewer ceremonial transitions, fewer slogan-like conclusions,
and less translated-English sentence logic.

Required design constraint: the skill must say that official, technical, and
academic prose can be human while remaining plain and neutral.

### 3. Which upstream rules should not be directly translated?

The following upstream rules need Chinese adaptation, not direct translation:

- `-ing` padding: map to trailing explanation padding such as "从而...",
  "进一步...", "这也体现了...", "为...提供了..." when it adds no claim.
- Passive voice: map to hidden actor, subjectless officialese, and stiff
  "被/由/受到/得以" constructions when they obscure responsibility.
- Em/en dash: keep as a mixed-language formatting tell, but do not ban normal
  Chinese punctuation.
- Title case: demote to English heading and mixed-text guidance.
- Hyphenated compounds: demote to English/mixed copy and translated noun-clump
  guidance.
- Manufactured punchlines: adapt to Chinese short-sentence drama, slogan-like
  paragraph endings, and fake profundity.

### 4. What Chinese-native patterns are missing?

The first `SKILL.md` should include at least these Chinese-specific groups:

- officialese padding: "高度重视", "持续推进", "切实加强", "赋能", "抓手";
- generic significance inflation: "具有重要意义", "标志着", "为...奠定基础";
- mechanical contrast: "不是...而是...", "既...又...", "一方面...另一方面";
- explanation padding: "可以说", "事实上", "从某种程度上", "这意味着";
- slogan closers: "未来可期", "行稳致远", "开启新篇章";
- marketing/startup copy: "全链路", "闭环", "生态", "场景化", "降本增效";
- fake-candid openers: "说实话", "讲真", "不得不说", when used as a hook;
- Chinese-English mixed tells: awkward spaces, untranslated SaaS jargon, English
  terms used to dodge clear Chinese wording.

### 5. How do we prevent over-editing?

The skill needs explicit false positives:

- Human Chinese writers do use idioms, parallelism, and four-character phrases.
- Official documents often require institutional wording.
- Technical docs should stay boring when boring is correct.
- Some marketing copy legitimately has a brand voice.
- Regional and internet slang can be human, but should not be forced into every
  rewrite.
- A single formal transition is not an AI tell; clusters are.

### 6. What output shape is useful?

The upstream draft -> audit -> final loop is useful, but Chinese users may want
less ceremony. The recommended default output should be:

1. `AI traces found`: short bullets, only if useful.
2. `Rewrite`: final Chinese rewrite.
3. `Notes`: optional, only for changed claims, tone tradeoffs, or uncertain
   source facts.

For short user text, skip the long explanation and return the rewrite plus one
brief note.

## Hard No

Do not make the first release a literal copy of `Humanizer-zh`. That would
inherit the exact maintenance failure this repo is meant to fix.

Do not make the first release a full translation of all 33 English patterns.
That would be comprehensive but not practical. The practical shape is:

- keep upstream process;
- classify all 33 upstream rules;
- fully adapt the high-value Chinese rules;
- keep English-only rules under mixed-language handling;
- validate against five Chinese fixtures before publishing.

## Recommended First Release Scope

First version: `2.8.0-zh.1`.

Must include:

- `SKILL.md` with Chinese-first instructions.
- 12 to 16 rule groups, not 33 one-to-one translated sections.
- A compact upstream mapping table in docs.
- Validation fixtures for officialese, marketing, personal essay, technical
  prose, and Chinese-English mixed copy.
- False-positive guidance strong enough to stop the agent from flattening real
  voice.

Should not include yet:

- automated scoring;
- a large test harness;
- exhaustive examples for every upstream pattern;
- claims that the skill can reliably detect AI authorship.

## Design Decision

Proceed with the repo, but tighten the next implementation step:

1. Write an adaptation map before writing `SKILL.md`.
2. Reduce the first `SKILL.md` to Chinese-first rule groups.
3. Treat upstream 2.8.0 as the version baseline, not the section layout.
4. Add validation examples before publishing the skill as ready.

