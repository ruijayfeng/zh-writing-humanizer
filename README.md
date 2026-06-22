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

## Artifacts

- `SKILL.md` - agent-facing skill instructions
- `agents/openai.yaml` - optional Codex UI metadata
- `UPSTREAM.md` - upstream baseline and sync notes
- `docs/adaptation-map.md` - upstream and prior-art mapping
- `docs/validation/` - validation fixtures and release gate
- `docs/plans/` - development planning documents
- `scripts/validate-release.ps1` - local structure and coverage checks

## Status

First implementation in progress: `2.8.0-zh.1`, based on the reviewed
`blader/humanizer` `2.8.0` baseline. The release target is a Chinese-first
skill that is not lower in coverage than `op7418/Humanizer-zh`.

## Validation

Run local release checks with:

```powershell
.\scripts\validate-release.ps1
```

For skill frontmatter validation on Windows, force UTF-8 mode:

```powershell
$env:PYTHONUTF8='1'; python C:\Users\administered\.codex\skills\.system\skill-creator\scripts\quick_validate.py .
```

## Install

Use `npx` to install the skill into your local Codex skills directory:

```bash
npx zh-writing-humanizer
```

The installer copies `SKILL.md` and `agents/openai.yaml` into
`$CODEX_HOME/skills/zh-writing-humanizer` or `~/.codex/skills/zh-writing-humanizer`.
