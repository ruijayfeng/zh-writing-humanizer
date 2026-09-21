# zh-writing-humanizer Adaptation Map

This map records how upstream `blader/humanizer` `3.0.0` maps into the Chinese
adaptation. It is a maintenance document, not the runtime skill.

## Baseline

- Primary upstream: `blader/humanizer`
- Reviewed version: `3.0.0`
- Reviewed commit: `9862685f575c65a8247f90369951df1b3416e3d6`
- Prior-art floor: `op7418/Humanizer-zh`
- Current Chinese release: `3.0.0-zh.3`

## Technical Article Route

The `3.0.0-zh.2` release added a progressively loaded technical-article route.
The `3.0.0-zh.3` release removes personal names from runtime profile names and
adds a separate public-account writing route without weakening the technical
route:

| Source or layer | Role | Runtime reference |
| --- | --- | --- |
| Existing humanizer contract | Factual fidelity, register control, and AI-tell removal | `SKILL.md` |
| 111 personal articles across C++, Linux, and computer networks | Evidence for a problem-led, mechanism-first technical voice; never a factual source | `references/profiles/technical-article-voice.md` |
| `ruanyf/document-style-guide` at `571951731efb4b83b1939af1d3dd830441ebef45` | Chinese headings, paragraphs, punctuation, numbers, attribution, and documentation conventions | `references/conventions/chinese-technical-style.md` |
| Route-specific synthesis | Deliverable classification, reasoning spine, evidence use, and completion gate | `references/routes/technical-article.md` |
| Public technology writing research plus the user's stable reasoning habits | Evidence for an accessible, practitioner-led public voice; never permission to impersonate another creator | `references/profiles/public-account-voice.md` |
| Public-account route synthesis | WeChat topic checks, article shapes, source boundaries, platform pacing, and Zhihu adaptation | `references/routes/public-account-article.md` |
| Experience narrative extension | Event-led sequencing, changed judgment, and evidence-backed emotional movement for tests and project stories | `references/routes/experience-narrative.md` |
| Article share-copy extension | Downstream extraction of honest, platform-aware short copy from a finalized public article | `references/routes/article-share-copy.md` |

The route deliberately separates explanatory articles from manuals and API
references. Personal voice is the default for tutorials and mechanism
explanations, while lookup-oriented documents remain neutral unless the user
asks otherwise.

The public-account route borrows only general techniques found across strong
public technology writing: quick entry, concrete experience, clear judgment,
honest limits, and reader momentum. It explicitly rejects copied catchphrases,
signature endings, fabricated first-person scenes, and creator impersonation.
The public identity is `凯冰` only when a byline or self-introduction is
requested; the skill does not store or emit a legal name.

### Public Writing Research

Public sources reviewed on 2026-09-20 informed the route at the technique level:

| Public source | Transferable observation | Explicit exclusion |
| --- | --- | --- |
| 苍何 public site and public article mirrors | Result-led entry, visible project outcomes, stepwise demonstrations, and fast explanation of reader value | Do not copy hype density, jokes, catchphrases, or fixed engagement prompts |
| 阿真 Irene public article mirrors | Friendly practitioner perspective, approachable setup, candid product judgment, and concrete limitations | Do not manufacture intimacy, personal reactions, or supplied-experience claims |
| `KKKKhazix/khazix-skills` public `khazix-writer` | Strong source boundaries, first-hand practice, topic viability checks, and deliberate reader momentum | Do not impersonate the creator, import signature language, or adopt fixed punctuation and endings |

The runtime route contains the resulting decisions, not creator-specific voice
samples. The research sources are comparative references rather than factual
sources for generated articles.

## 3.0 Rebase Delta

Upstream 3.0 reduces the catalog to 25 patterns and orders them by evidence
strength. The Chinese skill preserves its Chinese-native grouping, but adopts
the following workflow and pattern changes:

| Upstream 3.0 change | Chinese adaptation |
| --- | --- |
| Strong tells can justify one edit; weak tells need a cluster | Added strength guidance before the Chinese pattern map. Vocabulary, punctuation, and formatting remain weak alone. |
| Arguing with no one | Added `Arguing With Nobody Or Rejecting A Fake Alternative` under mechanical contrast. |
| Repeated sentence openings | Added to `Rule Of Three And Decorative Completeness`; Chinese repetition remains acceptable when it is deliberate rhythm. |
| Stacked qualifiers and current AI vocabulary | Retained in `Hedging, Filler, And Empty Positivity` and mixed-text handling; `gated` is decorative only outside its technical meaning. |
| Preserve ranks, simultaneity, and other factual relations | Added explicit preservation and final-audit checks for rankings, quantities, dates, quotations, citations, and simultaneity. |
| File and embedded invocation modes | Added file-mode protection for code, inline code, commands, paths, YAML, data, and link targets; embedded use returns only the rewrite by default. |

The older rule table below remains a historical crosswalk for the 2.8.0
baseline. Use the delta above when maintaining the 3.0.0 release.

## Mapping Classes

- **Direct**: rule applies to Chinese with normal wording changes.
- **Adapted**: upstream rule is useful but needs Chinese-native examples.
- **Mixed-only**: keep mainly for English or Chinese-English mixed text.
- **Merged**: represented inside a broader Chinese rule group.

## Upstream Rule Mapping

| Upstream rule | Class | Chinese implementation |
| --- | --- | --- |
| 1. Significance, legacy, broader trends | Adapted | `Significance Inflation`; Chinese phrases such as `具有重要意义`, `标志着`, `开启新篇章`. |
| 2. Notability and media coverage | Direct | `Generic Notability Or Authority`; require concrete source or cut authority costume. |
| 3. Superficial `-ing` analyses | Adapted | `Explanation Padding`; maps to `从而`, `进一步`, `这也体现了`, `为...提供了`. |
| 4. Promotional language | Adapted | `Promotional And Startup Jargon`; adds `全链路`, `生态`, `闭环`, `降本增效`. |
| 5. Vague attribution | Direct | `Generic Notability Or Authority`; keep only sourced or limited claims. |
| 6. Formulaic challenges/future prospects | Merged | `Slogan Closers` and `Significance Inflation`; cut generic outlook sections. |
| 7. AI vocabulary | Adapted | Spread across officialese, marketing jargon, explanation padding, and empty positivity. |
| 8. Copula avoidance | Adapted | `Translated-English Sentence Logic`; prefer direct Chinese verbs and visible actors. |
| 9. Negative parallelism and tailing negations | Adapted | `Mechanical Contrast`; covers `不是...而是...`, `不仅...更...`, `既...又...`. |
| 10. Rule of three | Direct | `Rule Of Three And Decorative Completeness`. |
| 11. Elegant variation | Merged | Handled by rhythm and trust checks; avoid synonym cycling that hides one actor or object. |
| 12. False ranges | Adapted | `Mechanical Contrast`; covers fake `从...到...` ranges. |
| 13. Passive voice and subjectless fragments | Adapted | `Hidden Actor And Subjectless Officialese`. |
| 14. Em/en dashes | Adapted | `Formatting Tells`; avoid in final Chinese rewrites, but do not ban normal Chinese punctuation. |
| 15. Boldface overuse | Direct | `Formatting Tells`. |
| 16. Inline-header vertical lists | Direct | `Formatting Tells`; keep only useful procedural/reference lists. |
| 17. Title case in headings | Mixed-only | `Formatting Tells`; applies to English headings in mixed text. |
| 18. Emojis | Direct | `Formatting Tells`; remove decorative emoji bullets. |
| 19. Curly quotation marks | Mixed-only | Mentioned under formatting normalization only when it clusters with other tells. |
| 20. Collaborative artifacts | Direct | `Chatbot Artifacts`. |
| 21. Knowledge cutoff and speculative gap-filling | Direct | `Chatbot Artifacts`; no invented gap filling. |
| 22. Sycophantic tone | Adapted | `Chatbot Artifacts`; cut `好问题`, `您说得完全正确`, `当然可以`. |
| 23. Filler phrases | Adapted | `Explanation Padding` and `Hedging, Filler, And Empty Positivity`. |
| 24. Excessive hedging | Direct | `Hedging, Filler, And Empty Positivity`. |
| 25. Generic positive conclusions | Adapted | `Slogan Closers`; Chinese closers such as `未来可期`, `行稳致远`. |
| 26. Hyphenated word pairs | Mixed-only | `Mixed Chinese-English Handling`; preserve useful technical English, cut decorative jargon. |
| 27. Persuasive authority tropes | Adapted | `Aphorism Formulas` and `Fake-Candid Openers`; cut fake depth. |
| 28. Signposting and announcements | Adapted | `Chatbot Artifacts`; cut `下面是`, `我来帮你`, `让我们来看`. |
| 29. Fragmented headers | Direct | `Formatting Tells`; remove heading restatement warm-ups. |
| 30. Diff-anchored writing | Direct | Covered by process and quality gate for documentation-like text. |
| 31. Manufactured punchlines | Adapted | `Manufactured Punchlines And Short-Sentence Drama`. |
| 32. Aphorism formulas | Adapted | `Aphorism Formulas`; Chinese formulas such as `底层逻辑`, `...的语言`. |
| 33. Conversational rhetorical openers | Adapted | `Fake-Candid Openers`; Chinese hooks such as `讲真`, `说实话`, `问题来了`. |

## Prior-Art Parity Check

The first release must be at least as capable as `op7418/Humanizer-zh`.

| Prior-art capability | Covered in `3.0.0-zh.3` |
| --- | --- |
| Preserve meaning and tone | Core Contract, Register Rules, Quality Gate |
| Add voice only where appropriate | Register Rules, False Positives |
| Significance inflation | Rule 1 |
| Promotional language | Rule 3 |
| `-ing` style shallow analysis | Rule 5 |
| Vague attribution | Rule 4 |
| Challenges/future outlook | Rules 1 and 10 |
| AI vocabulary | Rules 2, 3, 5, 16 |
| Copula avoidance | Rule 8 |
| Negative parallelism | Rule 6 |
| Rule of three | Rule 7 |
| Synonym cycling | Quality Gate: rhythm and trust |
| False ranges | Rule 6 |
| Dashes, bold, inline headers, title case, emoji | Rule 15 |
| Chatbot artifacts, cutoff disclaimers, sycophancy | Rule 14 |
| Filler, hedging, positive conclusions | Rules 10 and 16 |
| Scoring dimensions | Quality Gate |

## Chinese-First Additions Beyond Prior Art

- Officialese padding and responsibility hiding.
- Startup and SaaS jargon common in Chinese product copy.
- Chinese slogan closers and generic political/organizational uplift.
- Fake-candid Chinese hooks.
- Chinese-English mixed text handling.
- Strong false-positive guardrails for technical, legal, academic, official,
  regional, and personal writing.
