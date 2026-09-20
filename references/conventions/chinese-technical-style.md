# Chinese Technical Style Conventions

This file adapts the public-domain
[`ruanyf/document-style-guide`](https://github.com/ruanyf/document-style-guide)
at commit `571951731efb4b83b1939af1d3dd830441ebef45`. Use it as a final clarity and
consistency pass. It is not the author's voice and must not flatten a
problem-led explanatory article into a product manual.

## Headings And Paragraphs

- Keep heading levels continuous. Do not jump from `#` to `###`.
- Avoid a heading with only one child heading, a child that repeats its parent,
  or more than four levels. Most articles need only two or three levels.
- Give each paragraph one main job. Split it when it mixes setup, mechanism,
  exception, and conclusion.
- Put the point early in reference material. In an explanatory article, an
  observation or genuine question may come first when the paragraph resolves it
  promptly.
- Treat four lines as a readability target and seven lines as a warning, not a
  renderer-independent limit.

## Sentences And Voice

- Prefer active constructions and name the actor when responsibility matters.
- Keep pronouns such as `其`, `该`, `此`, and `这` only when they have one clear
  referent.
- Prefer ordinary modern Chinese over formal padding, rare words, and adjective
  stacks.
- Prefer positive statements to double negatives.
- Treat 20 to 30 Chinese characters between major pauses as a useful rhythm,
  not a hard limit. Split sentences over roughly 40 characters when the causal
  relation or subject becomes hard to follow.
- Personal technical articles may use mild conversational language. Manuals,
  API references, and runbooks should remain neutral.

## Chinese, English, And Code

- Use full-width punctuation in a Chinese sentence and half-width punctuation
  in a fully English sentence.
- Put one half-width space between Chinese and adjacent Latin letters. Apply one
  consistent spacing style around Arabic numerals.
- Do not insert a space before Chinese punctuation.
- Put identifiers, commands, paths, options, APIs, and literal values in inline
  code. Do not change their contents for typography.
- On first use, define an unfamiliar English term or abbreviation; use one
  stable form afterward. Established audience terms do not need ceremonial
  expansion.
- Use Chinese quotation marks for prose quotations. Preserve literal quote
  characters inside code and data.

## Numbers And Units

- Use half-width Arabic numerals.
- Add thousands separators to numbers with five or more digits when they are
  quantities rather than identifiers. Four-digit grouping is optional but must
  remain consistent.
- Keep units and percentage signs on both ends of a range when omission could
  be ambiguous.
- Distinguish amount from destination: `增加了` describes the increment;
  `增加到` describes the resulting value. Apply the same distinction to
  `降低了` and `降低到`.
- Do not write that a quantity `降低 N 倍`; state the percentage or the resulting
  value.

## Punctuation

- Avoid a paragraph joined only by commas. Use periods when the subject,
  reasoning step, or time changes.
- Use `、` for parallel terms inside a Chinese sentence and usually connect the
  final item with `和` when it reads naturally.
- Do not stack exclamation marks. Prefer calm emphasis supported by evidence.
- Use the standard Chinese ellipsis `⋯⋯` in prose; do not combine it with `等`.
- Preserve hyphens, dashes, and punctuation inside commands, paths, code,
  versions, protocols, and identifiers.

## Sources And Files

- Attribute direct quotations, third-party diagrams, external images, and
  copied material near the use or in a clear references section.
- When creating a documentation repository, prefer lowercase ASCII filenames
  with hyphens and no spaces. Do not rename existing files unless the user asks.
- Use manual-scale structures such as introduction, getting started, reference,
  FAQ, troubleshooting, and changelog only for a documentation set. Do not force
  them onto a single article.

## Final Convention Pass

Correct inconsistency without erasing deliberate rhythm. If a convention
conflicts with factual fidelity, code integrity, a supplied house style, or the
author's current sample, preserve the higher-priority source and note the tradeoff
only when it matters to the user.
