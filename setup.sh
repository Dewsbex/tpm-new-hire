#!/bin/bash
# TPM's New Hire — One-command setup
# Installs six Claude Code skills and a starter constitution into your project.
# Requires: Claude Code licence (https://claude.ai)

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
COMMANDS_SRC="$SCRIPT_DIR/commands"

# Determine target: argument, or current directory
TARGET="${1:-.}"
TARGET_DIR="$(cd "$TARGET" && pwd)"
DEST="$TARGET_DIR/.claude/commands"

echo ""
echo "  The TPM's New Hire — Setup"
echo "  ========================="
echo ""
echo "  Target project: $TARGET_DIR"
echo ""

# Create commands directory
mkdir -p "$DEST"

# Copy skills
SKILLS=(interview.md draft-project-brief.md next-milestone.md hooksetup.md update.md auto-improvement.md)
COPIED=0

for skill in "${SKILLS[@]}"; do
  if [ -f "$DEST/$skill" ]; then
    echo "  ⏭  $skill already exists — skipping (won't overwrite)"
  else
    cp "$COMMANDS_SRC/$skill" "$DEST/$skill"
    echo "  ✅  $skill installed"
    COPIED=$((COPIED + 1))
  fi
done

echo ""

# Copy claude.md template if no claude.md exists
if [ -f "$TARGET_DIR/claude.md" ]; then
  echo "  ⏭  claude.md already exists — skipping"
else
  cp "$SCRIPT_DIR/claude.md.template" "$TARGET_DIR/claude.md"
  echo "  ✅  claude.md template installed — customise it for your project"
fi

echo ""
echo "  Done. $COPIED skills installed."
echo ""
echo "  Next steps:"
echo "    1. cd $TARGET_DIR"
echo "    2. Edit claude.md with your project details"
echo "    3. Open Claude Code: claude"
echo "    4. Type /interview to start your first project"
echo ""
