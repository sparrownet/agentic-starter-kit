#!/usr/bin/env bash
set -e

# Agentic SDLC Project Initializer
# Usage: ./init-project.sh /path/to/target-project-dir

TARGET_DIR="${1:-.}"

echo "🚀 Initializing Agentic SDLC Environment in: $TARGET_DIR"

mkdir -p "$TARGET_DIR/.agents/rules"
mkdir -p "$TARGET_DIR/docs/templates"
mkdir -p "$TARGET_DIR/skills/agentic-sdlc"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Copy rules, AGENTS.md, docs dashboard, templates, and skills
cp "$SCRIPT_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
cp "$SCRIPT_DIR/.agents/rules/"*.md "$TARGET_DIR/.agents/rules/"
cp "$SCRIPT_DIR/docs/INITIATIVES.md" "$TARGET_DIR/docs/INITIATIVES.md"
cp "$SCRIPT_DIR/docs/templates/"*.md "$TARGET_DIR/docs/templates/"
cp "$SCRIPT_DIR/skills/agentic-sdlc/SKILL.md" "$TARGET_DIR/skills/agentic-sdlc/SKILL.md"

echo "✅ Agentic SDLC files successfully installed!"
echo "📁 Created:"
echo "   - $TARGET_DIR/AGENTS.md"
echo "   - $TARGET_DIR/.agents/rules/ (3 rules)"
echo "   - $TARGET_DIR/docs/INITIATIVES.md"
echo "   - $TARGET_DIR/docs/templates/ (PRD & Execution Plan templates)"
echo "   - $TARGET_DIR/skills/agentic-sdlc/SKILL.md"
echo ""
echo "🎉 You can now start pair-programming with Antigravity!"
