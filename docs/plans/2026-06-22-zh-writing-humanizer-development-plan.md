# zh-writing-humanizer Development Plan

## Goal

Create a maintained Chinese writing humanizer skill that tracks
`blader/humanizer` as the active upstream while adapting detection and rewrite
rules for Chinese prose.

## Design Decision

Use `blader/humanizer` as the primary baseline. Do not continue the old
`op7418/Humanizer-zh` project as-is, because it is an early localization and has
not tracked upstream changes. Do not use `hardikpandya/stop-slop` as an active
upstream, because its useful checklist and scoring concepts have already been
identified and it has not been the active source of Humanizer's recent changes.

## Repository Shape

Initial repository:

- `README.md` - public project overview and status
- `AGENTS.md` - project protocol and maintenance map
- `UPSTREAM.md` - upstream baseline, prior-art policy, and sync checklist
- `LICENSE` - MIT license
- `docs/plans/2026-06-22-zh-writing-humanizer-development-plan.md` - this plan

Planned implementation files:

- `SKILL.md` - final agent-facing skill
- `agents/openai.yaml` - optional Codex UI metadata
- `docs/validation/` - validation prompts and sample outputs if needed

## Implementation Phases

### Phase 1: Baseline Capture

1. Fetch latest `blader/humanizer` `SKILL.md`.
2. Record exact upstream version and commit SHA.
3. Extract upstream sections into categories:
   - frontmatter and metadata
   - task contract
   - voice calibration
   - personality and soul
   - content patterns
   - language and grammar patterns
   - style patterns
   - communication artifacts
   - filler and hedging
   - detection guidance
   - process and output
4. Compare with `op7418/Humanizer-zh` to identify reusable Chinese wording.

### Phase 2: Chinese Adaptation Map

Create a rule mapping table with three classes:

- Direct translation: upstream rule applies cleanly to Chinese.
- Chinese adaptation: upstream rule is valid but needs Chinese examples and
  detection language.
- English/mixed-text only: upstream rule should remain available for English or
  Chinese-English mixed text but should not dominate Chinese rewriting.

Expected adaptation hotspots:

- `-ing` endings become mechanical trailing analysis and Chinese connective
  padding.
- passive voice becomes hidden actor, subjectless officialese, and overused
  passive constructions.
- title case becomes English heading and mixed-text formatting guidance.
- hyphenated word pairs become mixed English compound terms and stiff translated
  noun clusters.
- em/en dash becomes Chinese long-dash, English dash, and `--` handling.

### Phase 3: Skill Authoring

1. Create `SKILL.md` with frontmatter:
   - `name: zh-writing-humanizer`
   - description focused on triggers, not workflow summary.
   - version and attribution metadata only if compatible with the target skill
     runtime.
2. Keep the body concise enough for agent use.
3. Preserve upstream's draft/audit/final loop.
4. Add Chinese-specific pattern groups:
   - officialese and policy padding
   - marketing/startup jargon
   - mechanical contrast and three-part structures
   - explanation padding
   - fake-candid conversational openers
   - generic positive conclusions
   - Chinese-English mixed formatting tells
5. Add false-positive guidance so the skill does not flatten real human voice.

### Phase 4: Validation

Prepare validation prompts before claiming the skill is ready:

1. Officialese rewrite: remove padding while preserving factual content.
2. Marketing copy rewrite: cut hype and add concrete details.
3. Personal essay rewrite: preserve voice and mixed feelings.
4. Technical Chinese rewrite: keep neutral precision, avoid injecting
   personality.
5. Chinese-English mixed copy: clean formatting without mistranslating terms.

Success criteria:

- The rewrite keeps all original claims unless the user asks for condensation.
- The output sounds like natural Chinese rather than translated English.
- The skill does not force opinions into technical, legal, academic, or
  reference text.
- The final answer identifies remaining AI tells before producing the final
  rewrite.

### Phase 5: Publishing

1. Validate skill frontmatter and file layout.
2. Commit local files.
3. Create GitHub repository `zh-writing-humanizer`.
4. Push local `main` branch.
5. Add repository topics if available:
   - `agent-skills`
   - `claude-skills`
   - `codex-skills`
   - `humanizer`
   - `chinese-writing`

## Current Status

The GitHub repository has been created and pushed:

- Remote: `https://github.com/ruijayfeng/zh-writing-humanizer.git`
- Branch: `main`
- Initial commit: `dde74dc chore: initialize zh-writing-humanizer planning`

Current implementation files now include:

- `SKILL.md` - first Chinese-first runtime skill draft, version `2.8.0-zh.1`
- `agents/openai.yaml` - Codex UI metadata
- `docs/adaptation-map.md` - upstream and prior-art coverage map
- `docs/validation/` - fixture-based quality gate

Next step: run validation against the fixture set and tighten the skill where
the output falls below the `op7418/Humanizer-zh` parity bar.
