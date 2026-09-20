#!/usr/bin/env node

const fs = require("fs");
const path = require("path");

function resolveSkillHome() {
  if (process.env.CODEX_HOME && process.env.CODEX_HOME.trim()) {
    return path.join(process.env.CODEX_HOME, "skills");
  }

  const home = process.env.USERPROFILE || process.env.HOME;
  if (!home) {
    throw new Error("Cannot determine home directory. Set CODEX_HOME or USERPROFILE/HOME.");
  }

  return path.join(home, ".codex", "skills");
}

function copyFile(src, dest) {
  fs.mkdirSync(path.dirname(dest), { recursive: true });
  fs.copyFileSync(src, dest);
}

function copyDirectory(src, dest) {
  fs.mkdirSync(dest, { recursive: true });

  for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
    const sourcePath = path.join(src, entry.name);
    const destinationPath = path.join(dest, entry.name);

    if (entry.isDirectory()) {
      copyDirectory(sourcePath, destinationPath);
    } else if (entry.isFile()) {
      copyFile(sourcePath, destinationPath);
    }
  }
}

function main() {
  const repoRoot = path.resolve(__dirname, "..");
  const destRoot = resolveSkillHome();
  const skillDir = path.join(destRoot, "zh-writing-humanizer");

  fs.mkdirSync(skillDir, { recursive: true });
  copyFile(path.join(repoRoot, "SKILL.md"), path.join(skillDir, "SKILL.md"));
  copyFile(path.join(repoRoot, "agents", "openai.yaml"), path.join(skillDir, "agents", "openai.yaml"));
  copyDirectory(path.join(repoRoot, "references"), path.join(skillDir, "references"));

  console.log(`Installed zh-writing-humanizer to ${skillDir}`);
}

if (require.main === module) {
  main();
}

module.exports = { copyDirectory };
