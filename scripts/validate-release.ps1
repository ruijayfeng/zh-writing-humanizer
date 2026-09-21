$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $root

$requiredFiles = @(
    "SKILL.md",
    "agents/openai.yaml",
    "references/routes/technical-article.md",
    "references/routes/public-account-article.md",
    "references/routes/experience-narrative.md",
    "references/routes/article-share-copy.md",
    "references/profiles/technical-article-voice.md",
    "references/profiles/public-account-voice.md",
    "references/conventions/chinese-technical-style.md",
    "docs/adaptation-map.md",
    "docs/validation/quality-gate.md",
    "docs/validation/2026-06-22-release-check.md",
    "docs/validation/2026-09-20-release-check.md",
    "docs/validation/officialese.md",
    "docs/validation/marketing.md",
    "docs/validation/personal-essay.md",
    "docs/validation/technical.md",
    "docs/validation/technical-article-route.md",
    "docs/validation/public-account-route.md",
    "docs/validation/mixed-zh-en.md",
    "docs/validation/blind-tests.md"
)

foreach ($file in $requiredFiles) {
    if (-not (Test-Path -LiteralPath $file)) {
        throw "Missing required file: $file"
    }
}

$skill = Get-Content -LiteralPath "SKILL.md" -Raw -Encoding utf8
if ($skill -notmatch "(?s)^---\nname: zh-writing-humanizer\ndescription: Use when .+?\n---") {
    throw "SKILL.md frontmatter is missing or malformed"
}

if ($skill -notmatch 'Version: `3\.1\.1-zh\.1`') {
    throw "SKILL.md version marker is missing"
}

$ruleCount = ([regex]::Matches($skill, "(?m)^### \d+\. ")).Count
if ($ruleCount -ne 16) {
    throw "Expected 16 Chinese rule groups, found $ruleCount"
}

$mustHaveSections = @(
    "## Core Contract",
    "## Voice Calibration",
    "## Register Rules",
    "## Writing Routes",
    "## Mixed Chinese-English Handling",
    "## False Positives To Preserve",
    "## Quality Gate"
)

foreach ($section in $mustHaveSections) {
    if (-not $skill.Contains($section)) {
        throw "Missing SKILL.md section: $section"
    }
}

$map = Get-Content -LiteralPath "docs/adaptation-map.md" -Raw -Encoding utf8
$mappedRules = ([regex]::Matches($map, "(?m)^\| \d+\. ")).Count
if ($mappedRules -ne 33) {
    throw "Expected 33 upstream mappings, found $mappedRules"
}

foreach ($phrase in @("op7418/Humanizer-zh", "Prior-Art Parity Check", "Chinese-First Additions")) {
    if (-not $map.Contains($phrase)) {
        throw "Missing adaptation-map parity evidence: $phrase"
    }
}

$fixtureFiles = Get-ChildItem -LiteralPath "docs/validation" -Filter "*.md" |
    Where-Object { $_.Name -ne "quality-gate.md" -and $_.Name -notlike "*-release-check.md" }

if ($fixtureFiles.Count -ne 8) {
    throw "Expected 8 validation fixtures, found $($fixtureFiles.Count)"
}

foreach ($fixture in $fixtureFiles) {
    $content = Get-Content -LiteralPath $fixture.FullName -Raw -Encoding utf8
    $requiredSections = @("## Input")
    if ($fixture.Name -eq "blind-tests.md") {
        $requiredSections += @("## Scoring", "## Blind-Test Findings")
    } else {
        $requiredSections += @("## Expected AI Traces", "## Acceptable Rewrite", "## Gate")
    }
    foreach ($section in $requiredSections) {
        if (-not $content.Contains($section)) {
            throw "$($fixture.Name) is missing section: $section"
        }
    }
}

$runtimeFiles = @(
    "SKILL.md",
    "references/routes/technical-article.md",
    "references/routes/public-account-article.md",
    "references/routes/experience-narrative.md",
    "references/routes/article-share-copy.md",
    "references/profiles/technical-article-voice.md",
    "references/profiles/public-account-voice.md"
)
$runtime = ($runtimeFiles | ForEach-Object {
    Get-Content -LiteralPath $_ -Raw -Encoding utf8
}) -join "`n"

foreach ($requiredMarker in @(
    "技术文章写作风格",
    "公众号写作风格",
    "凯冰"
)) {
    if (-not $runtime.Contains($requiredMarker)) {
        throw "Runtime writing guidance is missing: $requiredMarker"
    }
}

Write-Output "Release structure validation passed."
