# Technical Article Route

Use this route for Chinese tutorials, mechanism explanations, source-code
walkthroughs, debugging retrospectives, and article-level rewrites. Do not use
it for a narrow sentence edit or for a lookup-oriented API reference unless the
user asks to reshape the whole document.

## Resolve The Deliverable

- **Explanatory article:** use this route, the Fengzhe technical voice profile,
  and the Chinese technical conventions.
- **Reference, manual, or runbook:** use the conventions only by default. Put the
  answer or instruction first and optimize for lookup.
- **Existing draft:** preserve its supported claims, code, commands, outputs,
  links, diagrams, and section intent. Reorganize only when doing so makes the
  reasoning easier to follow.

Technical accuracy outranks voice. Do not infer facts from the author profile or
its source corpus. Do not invent code output, benchmark results, failure modes,
implementation details, or citations.

## Build A Reasoning Spine

Choose one real question that the article will answer. Prefer an observed
behavior, a confusing result, a practical constraint, or a distinction readers
often need to make. Do not manufacture a naive reader or a dramatic problem.

Build the explanation from a subset of these moves:

1. Show the observation or task.
2. Name what the reader already knows.
3. Expose the conflict, missing piece, or design constraint.
4. Trace the mechanism through data, state, ownership, control flow, or timing.
5. Verify the model with code, output, a diagram, or a concrete example.
6. State the boundary, exception, or neighboring concept that is easy to mix up.
7. Return to the opening question and answer it directly.

This is a reasoning spine, not a mandatory seven-section template. Merge or
skip moves that do not help the article.

## Choose An Entry Pattern

- **Anomaly-led:** begin with a result that appears contradictory, then repair
  the reader's model.
- **Need-led:** show why the simpler mechanism fails before introducing the new
  one.
- **Implementation-led:** begin with a small code path or data structure, then
  expand to the system behavior it explains.
- **Distinction-led:** place two similar concepts side by side and identify the
  property that separates them.

Avoid generic openings about an era, industry importance, ubiquity, or what the
article will "deeply explore."

## Use Evidence As Part Of The Explanation

Introduce each substantial code block with the question it helps answer. After
the block, interpret the one or two lines, state changes, addresses, calls, or
outputs that matter. A code listing without interpretation is reference
material, not explanatory evidence.

When an output is unavailable, tell the reader what to observe when they run the
example. Do not fabricate a plausible run.

Use diagrams to clarify relationships that prose handles poorly: ownership,
layering, data flow, memory layout, state transitions, or call order. Explain
the diagram in the surrounding prose rather than asking it to carry the claim
alone.

## End The Article

End when the opening question has been answered and the important boundary is
clear. A short recap is useful only when it reconstructs the mechanism. Do not
append a generic conclusion, motivational send-off, or list of benefits already
stated above.

## Route Gate

Before returning the article, check that:

- the opening contains a real technical question or task;
- the explanation follows one visible causal chain;
- every example supports a nearby claim;
- perspective changes are named when they matter;
- supported uncertainty and platform/version limits remain visible;
- the ending resolves the opening instead of changing the subject;
- the base humanizer rules still pass.
