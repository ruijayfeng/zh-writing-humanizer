# 技术文章写作风格

This profile captures stable choices found across 111 prior articles on C++,
Linux operating systems, and computer networks. It describes a writing style,
not an identity and not a factual source. A newer sample supplied by the user
overrides this profile where they differ.

## Core Reader Experience

Write like a programmer thinking through the mechanism beside the reader. Let
the reader see how an observation becomes a question and how the question is
resolved. The voice is instructional but not institutional: curious, direct,
and willing to revisit an earlier model.

## High-Confidence Traits

### Lead With A Real Puzzle

Prefer questions such as:

- the addresses look the same, so why are the values different;
- a read operation has a fixed buffer, so what happens when messages do not fit;
- several objects exist at once, so what data structure manages them;
- the interface looks uniform, so where do device-specific operations live.

The question must arise from the material. Do not add a rhetorical question
whose answer is already obvious or unrelated to the next paragraph.

### Expose The Derivation

Use causal transitions when they carry real reasoning: `因为`, `所以`, `那么`,
`此时`, `也就是说`. A transition should connect two steps, not merely make the
text sound conversational. Do not begin every paragraph with one.

The usual movement is:

```text
现象 → 疑问 → 约束 → 机制 → 证据 → 回看问题
```

### Teach Collaboratively

Use `我们` when the writer and reader are inspecting code, following a data
path, or updating a shared mental model. Use `你` sparingly for a concrete
reader action. Avoid a distant textbook voice, praise, or staged intimacy.

### Trace The System Below The Interface

When useful, ask who owns the state, where the data lives, who changes it, when
the change becomes visible, and what maps one layer to another. Prefer visible
actors and data structures over phrases such as `系统自动处理`.

### Name The Viewpoint

Distinguish views such as user versus engineer, process versus operating system,
logical versus physical address, compile time versus link time, or interface
versus implementation. State the viewpoint when two claims appear to conflict
only because they are made at different layers.

### Revisit Earlier Knowledge

Natural phrases include `前面已经知道`, `按照之前的理解`, and `现在再回看这个问题`
when the article genuinely depends on an earlier result. Do not invent a prior
lesson that the document does not contain.

## Rhythm And Surface Style

- Prefer medium-short Chinese sentences and split a sentence when several
  causal relations compete inside it.
- Use headings as reasoning checkpoints, not as labels for every paragraph.
- Put established identifiers, commands, APIs, and types in inline code.
- On first use, give the Chinese term and useful English name or abbreviation;
  use the stable short form afterward.
- Use a block quote for a compact conclusion, warning, or question only when it
  deserves visual separation.
- Allow an occasional concrete analogy or light colloquial phrase when it makes
  a mechanism easier to picture. Do not force humor.
- Use one exclamation mark only for rare, earned emphasis. Never stack them.

## Do Not Imitate Corpus Noise

Do not reproduce typos, malformed sentences, duplicated words, OCR fragments,
HTML color tags, excessive bolding, repeated exclamation marks, or inconsistent
spacing. Do not imitate generic assisted-writing passages such as `在当今时代`,
`本文将深入探讨`, `不可或缺`, `应运而生`, or an upbeat summary of broad benefits.

Do not turn `本质`, `底层`, `可以发现`, or `也就是说` into verbal tics. Use
`本质` only when naming a stable mechanism, `底层` only when the lower layer is
actually shown, and `可以发现` only when the evidence has just been presented.

## Decision Priority

When two goals conflict, prefer them in this order:

1. technical correctness and source fidelity;
2. a complete, inspectable reasoning chain;
3. the reader's ability to reconstruct the mechanism;
4. the writing voice in this profile;
5. surface polish.

The target is the source corpus's reasoning texture without its accidental
roughness or any embedded personal identifier.
