# 2026-09-20 Release Check

Target: `3.0.0-zh.3`

## Scope

- Keep the existing technical-article writing style intact while removing a
  personal name from runtime files and filenames.
- Add a separate public-account writing style for WeChat long-form work.
- Support requested Zhihu adaptation inside the public-account route instead of
  creating a third style.
- Use `凯冰` only when a byline, self-introduction, or public author identity is
  requested.
- Prevent invented first-person tests, reactions, conversations, metrics, and
  biographical scenes.

## Runtime Files

- `SKILL.md`
- `references/routes/technical-article.md`
- `references/routes/public-account-article.md`
- `references/profiles/technical-article-voice.md`
- `references/profiles/public-account-voice.md`
- `references/conventions/chinese-technical-style.md`

## Validation

The release is checked with the skill-creator validator, the repository release
validator, package metadata checks, runtime identity scans, and a project-local
installation sync check. Actual results are recorded after execution.

## Results

```text
Skill is valid!
Cross-platform release structure validation passed.
Current project files contain no prior personal-name marker.
```

The host does not provide PowerShell, so `validate-release.ps1` could not run
natively. An equivalent read-only Node check verified its required files,
version marker, route links, 16 rule groups, eight fixture structures, package
version, identity markers, and required writing-style labels. `git diff --check`
also passed.

The repository and project-local installation were then compared for
`SKILL.md`, agent metadata, and every runtime reference. The obsolete named
profile was removed from the installed copy.
