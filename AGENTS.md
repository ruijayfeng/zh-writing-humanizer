# zh-writing-humanizer - Chinese Writing Humanizer Skill
Markdown-based Codex/agent skill repository.

<directory>
agents/ - Product-specific skill metadata (1 file: openai.yaml)
docs/ - Planning, adaptation, and validation documentation (2 subdirectories:
plans, validation)
references/ - Runtime guidance loaded by route (routes, author profiles, and
Chinese writing conventions)
scripts/ - Local release validation helpers (1 file: validate-release.ps1)
</directory>

<config>
SKILL.md - Agent-facing Chinese writing humanizer skill.
README.md - Project overview, positioning, artifacts, and validation commands.
UPSTREAM.md - Upstream baseline, prior-art policy, and sync checklist.
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
- Keep validation fixtures in `docs/validation/`.
- Update `docs/adaptation-map.md` when upstream rules are added, removed, or
  reclassified.
- Keep route-specific runtime instructions in `references/` and link them from
  `SKILL.md`; do not duplicate the full route in the entrypoint.
- Treat the personal article corpus as voice evidence only, never as a source of
  technical facts.
