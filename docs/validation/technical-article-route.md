# Technical Article Route Fixture

## Input

Draft a Chinese technical article that explains why parent and child processes
can print the same virtual address while observing different values after the
child writes to a global variable. The source provides code and real output but
does not provide benchmark data. Use the project's personal technical-article
voice.

## Expected AI Traces

- A generic opening about the importance of process isolation would hide the
  actual puzzle.
- A definition-first encyclopedia structure would lose the observed-result
  reasoning path.
- An unsupported performance claim or fabricated run would violate factual
  fidelity.
- Repeated `本质`, `底层`, bold labels, or exclamation marks would caricature the
  profile instead of matching it.

## Acceptable Rewrite

The article begins with the real output: the printed virtual addresses match,
but the values diverge after the child writes. It asks why those two facts can
coexist, distinguishes virtual from physical addresses, traces the page-table
mapping and copy-on-write transition, interprets the supplied code and output,
and returns to the opening result. It uses collaborative language and causal
transitions where they help the derivation. It does not invent timings,
addresses, commands, or kernel implementation details.

For an API-reference version of the same material, the acceptable output starts
with a neutral definition and lookup-oriented sections. It does not apply the
personal tutorial voice unless requested.

## Gate

- The explanatory route and reference-document route produce meaningfully
  different organization.
- The personal profile changes reasoning shape without weakening accuracy.
- Code, output, identifiers, and source-supported relationships remain intact.
- The ending answers the initial technical question without a generic summary.
