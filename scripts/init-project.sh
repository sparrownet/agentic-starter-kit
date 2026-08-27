#!/usr/bin/env bash
set -e

# Agentic SDLC Project Initializer
# Usage: ./init-project.sh /path/to/target-project-dir

TARGET_DIR="${1:-.}"

echo "🚀 Initializing Agentic SDLC Environment in: $TARGET_DIR"

mkdir -p "$TARGET_DIR/.agents/rules"
mkdir -p "$TARGET_DIR/docs/templates"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Copy rules, AGENTS.md, and docs dashboard
cp "$SCRIPT_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
cp "$SCRIPT_DIR/.agents/rules/"*.md "$TARGET_DIR/.agents/rules/"
cp "$SCRIPT_DIR/docs/INITIATIVES.md" "$TARGET_DIR/docs/INITIATIVES.md"
cp "$SCRIPT_DIR/docs/templates/PRD_TEMPLATE.md" "$TARGET_DIR/docs/templates/PRD_TEMPLATE.md"

echo "✅ Agentic SDLC files successfully installed!"
echo "📁 Created:"
echo "   - $TARGET_DIR/AGENTS.md"
echo "   - $TARGET_DIR/.agents/rules/ (4 rules)"
echo "   - $TARGET_DIR/docs/INITIATIVES.md"
echo "   - $TARGET_DIR/docs/templates/PRD_TEMPLATE.md"
echo ""
echo "🎉 You can now start pair-programming with Antigravity!"
