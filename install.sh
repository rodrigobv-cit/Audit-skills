#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="audit-skills"
SKILLS_DIR=".claude/skills"
TARGET_DIR="${SKILLS_DIR}/${SKILL_NAME}"

echo "Installing $SKILL_NAME into $TARGET_DIR..."

mkdir -p "$TARGET_DIR"

if [[ -f "SKILL.md" ]]; then
    cp SKILL.md "$TARGET_DIR/SKILL.md"
else
    echo "Error: SKILL.md not found in the current directory."
    exit 1
fi

echo "Installation complete!"
echo "You can now run the auditor in Claude Code using:"
echo "  /audit-skills *"
