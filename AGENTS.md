# zh-writing-humanizer - Chinese Writing Humanizer Skill
Markdown-based Codex/agent skill repository.

<directory>
docs/ - Planning and maintenance documentation (1 subdirectory: plans)
</directory>

<config>
README.md - Project overview, positioning, and planned repository contract.
LICENSE - MIT license for the skill and documentation.
</config>

## Project Contract

This repository will maintain a Chinese writing humanizer skill based on the
active upstream `blader/humanizer` project. The goal is not a literal
translation. The goal is a Chinese-language writing optimization skill that
tracks upstream workflow and version discipline while adapting pattern rules to
Chinese prose, Chinese internet writing, officialese, marketing copy, and
Chinese-English mixed text.

## Upstream Policy

- Treat `blader/humanizer` as the primary upstream.
- Treat `op7418/Humanizer-zh` as prior-art localization reference only.
- Treat `hardikpandya/stop-slop` as an already-consumed source of checklist and
  scoring ideas, not as an active upstream.
- Record the upstream baseline before implementing or updating `SKILL.md`.

## Documentation Protocol

- Update this file when top-level repository structure or maintenance policy
  changes.
- Keep planning documents in `docs/plans/`.
- When adding the actual skill files, document the intended agent-facing
  structure here.
