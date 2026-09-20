# Validation Quality Gate

Use these fixtures before publishing a new release or claiming parity with
`humanizer-zh`.

## Required Fixtures

- `officialese.md`
- `marketing.md`
- `personal-essay.md`
- `technical.md`
- `technical-article-route.md`
- `public-account-route.md`
- `mixed-zh-en.md`
- `blind-tests.md`

Record release checks in dated files such as
`docs/validation/2026-06-22-release-check.md`.

## Manual Verification Steps

For each fixture:

1. Invoke `SKILL.md` on the input.
2. Confirm the output identifies the expected AI traces or equivalent stronger
   traces.
3. Confirm the rewrite satisfies every gate item in the fixture.
4. Confirm no unsupported facts, dates, numbers, names, or sources were added.
5. Confirm the register matches the fixture.

## Release Bar

A release is acceptable only if all fixtures pass. If a fixture fails, update
`SKILL.md` or the fixture expectation, then rerun all fixtures.

## Parity Bar

The release is not below `op7418/Humanizer-zh` if it:

- covers all prior-art pattern families listed in `docs/adaptation-map.md`;
- adds Chinese-native officialese, marketing, mixed-language, and false-positive
  handling;
- preserves the prior-art scoring dimensions through the `Quality Gate`;
- refuses to invent specifics when the input is vague.
