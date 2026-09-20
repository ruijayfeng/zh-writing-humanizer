# Upstream Tracking

## Primary Upstream

- Repository: `blader/humanizer`
- Current reviewed baseline: `3.0.0`
- Current reviewed commit: `9862685f575c65a8247f90369951df1b3416e3d6`
- Last reviewed date: 2026-09-13
- Role: source of workflow, pattern taxonomy, output contract, and version
  discipline.

## Prior-Art References

### `ruanyf/document-style-guide`

- Reviewed commit: `571951731efb4b83b1939af1d3dd830441ebef45`
- Last reviewed date: 2026-09-13
- Role: language, punctuation, number, heading, paragraph, attribution, and
  document-structure conventions for the technical-writing route.

Use as a conventions source, not as the author's voice. Adapt its manual-first
rules when they conflict with a problem-led explanatory article.

### `op7418/Humanizer-zh`

Role: Chinese localization reference for early Humanizer content.

Use selectively for:

- Chinese terminology that reads naturally
- existing examples that still match current rules
- historical attribution

Do not use as the structural baseline because it has not tracked upstream
Humanizer changes after January 2026.

### `hardikpandya/stop-slop`

Role: checklist and scoring inspiration already partially reflected in the old
Chinese localization.

Use selectively for:

- directness/rhythm/trust/authenticity/density scoring ideas
- quick-check style
- "cut quotables" and "trust readers" principles

Do not treat as an active upstream unless it resumes relevant maintenance.

## Versioning Policy

Use upstream-derived versions with a Chinese adaptation suffix:

- `2.8.0-zh.1` for the first Chinese adaptation based on upstream `2.8.0`
- `2.8.0-zh.2` for Chinese-only corrections on the same upstream baseline
- `2.9.0-zh.1` when rebasing onto upstream `2.9.0`

## Sync Checklist

When upstream changes:

1. Read upstream `SKILL.md`, `README.md`, and recent commit messages.
2. Classify changes as workflow, pattern, example, metadata, or docs.
3. Translate workflow changes directly unless they conflict with Chinese usage.
4. Adapt pattern changes into Chinese equivalents when direct translation is
   weak.
5. Mark English-only rules as English/mixed-text rules instead of forcing them
   into Chinese.
6. Update `UPSTREAM.md`, `README.md`, and the skill version.
7. Run validation scenarios before publishing.
