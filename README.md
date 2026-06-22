# zh-writing-humanizer

Chinese writing humanizer skill for removing AI-writing patterns and improving
Chinese prose.

This repository is planned as a maintained Chinese adaptation of
[`blader/humanizer`](https://github.com/blader/humanizer), not a one-time
translation. It will track upstream workflow and version discipline while
adapting rules to Chinese writing habits.

## Positioning

The skill should help agents rewrite Chinese text so it sounds natural,
specific, and human-written. It should handle:

- Chinese AI-writing cliches
- officialese and policy-style padding
- marketing and startup jargon
- mechanical essay structure
- Chinese-English mixed copy
- over-polished but empty prose

## Upstream

Primary upstream:

- `blader/humanizer`

Prior-art references:

- `op7418/Humanizer-zh`
- `hardikpandya/stop-slop`

## Planned Artifacts

- `SKILL.md` - agent-facing skill instructions
- `agents/openai.yaml` - optional UI metadata
- `UPSTREAM.md` - upstream baseline and sync notes
- `docs/plans/` - development planning documents

## Status

Planning stage. The first implementation should create a Chinese adaptation
based on the latest reviewed `blader/humanizer` baseline.
