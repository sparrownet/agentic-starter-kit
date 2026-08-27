#!/usr/bin/env bash
set -euo pipefail

# Agentic SDLC Project Initializer
# Usage: ./init-project.sh /path/to/target-project-dir

TARGET_DIR="${1:-.}"

echo "🚀 Initializing Agentic SDLC Environment in: $TARGET_DIR"

mkdir -p "$TARGET_DIR/.agents/rules"
mkdir -p "$TARGET_DIR/docs/templates"
mkdir -p "$TARGET_DIR/skills/agentic-sdlc"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Safe copy function: prevents accidental overwrites by creating backups if files differ
safe_copy() {
  local src="$1"
  local dest="$2"

  if [ -f "$dest" ]; then
    if cmp -s "$src" "$dest"; then
      echo "  ℹ️  $dest is already up to date."
      return 0
    else
      local backup="${dest}.bak.$(date +%s)"
      echo "  ⚠️  $dest exists and differs. Backing up to $backup"
      cp "$dest" "$backup"
    fi
  fi

  cp "$src" "$dest"
}

# Copy AGENTS.md, rules, docs dashboard, templates, and skills safely
safe_copy "$SCRIPT_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"

for rule in "$SCRIPT_DIR/.agents/rules/"*.md; do
  [ -f "$rule" ] && safe_copy "$rule" "$TARGET_DIR/.agents/rules/$(basename "$rule")"
done

safe_copy "$SCRIPT_DIR/docs/INITIATIVES.md" "$TARGET_DIR/docs/INITIATIVES.md"

for tmpl in "$SCRIPT_DIR/docs/templates/"*.md; do
  [ -f "$tmpl" ] && safe_copy "$tmpl" "$TARGET_DIR/docs/templates/$(basename "$tmpl")"
done

safe_copy "$SCRIPT_DIR/skills/agentic-sdlc/SKILL.md" "$TARGET_DIR/skills/agentic-sdlc/SKILL.md"

echo ""
echo "✅ Agentic SDLC files successfully installed!"
echo "📁 Structure:"
echo "   - $TARGET_DIR/AGENTS.md"
echo "   - $TARGET_DIR/.agents/rules/ (3 rules)"
echo "   - $TARGET_DIR/docs/INITIATIVES.md"
echo "   - $TARGET_DIR/docs/templates/ (PRD & Execution Plan templates)"
echo "   - $TARGET_DIR/skills/agentic-sdlc/SKILL.md"
echo ""
echo "🎉 You can now start pair-programming with Antigravity!"
