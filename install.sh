#!/usr/bin/env bash
set -e

PLUGIN_DIR="$HOME/.claude/plugins/cavepowers"
REPO_URL="https://raw.githubusercontent.com/mateuscaldasassessoria/cavepowers/main"

echo "Installing CavePowers..."

skills=(cavepowers brainstorming systematic-debugging test-driven-development writing-plans executing-plans subagent-driven-development dispatching-parallel-agents)

for skill in "${skills[@]}"; do
  mkdir -p "$PLUGIN_DIR/skills/$skill"
  curl -fsSL "$REPO_URL/skills/$skill/SKILL.md" -o "$PLUGIN_DIR/skills/$skill/SKILL.md"
done

mkdir -p "$PLUGIN_DIR/hooks"
curl -fsSL "$REPO_URL/plugin.json" -o "$PLUGIN_DIR/plugin.json"
curl -fsSL "$REPO_URL/hooks/session-start.js" -o "$PLUGIN_DIR/hooks/session-start.js"

echo "✓ CavePowers installed."
echo "  Type /cavepowers to activate. Brain big. Mouth small."
