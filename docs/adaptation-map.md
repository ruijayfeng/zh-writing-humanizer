# zh-writing-humanizer Adaptation Map

This map records how upstream `blader/humanizer` `2.8.0` maps into the first
Chinese adaptation. It is a maintenance document, not the runtime skill.

## Baseline

- Primary upstream: `blader/humanizer`
- Reviewed version: `2.8.0`
- Reviewed commit: `9600f2b7241cb4eed6ad803abee5ea01d67fe8e4`
- Prior-art floor: `op7418/Humanizer-zh`
- First Chinese release target: `2.8.0-zh.1`

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

| Prior-art capability | Covered in `2.8.0-zh.1` |
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
