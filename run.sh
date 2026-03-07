#!/bin/bash
# ICAI — run a theater prompt via claude in headless mode
# Usage: ./run.sh theaters/benchmarks.md
set -e

THEATER_FILE="${1:?Usage: ./run.sh <theater-file>}"

if [ ! -f "$THEATER_FILE" ]; then
  echo "File not found: $THEATER_FILE"
  exit 1
fi

THEATER=$(basename "$THEATER_FILE" .md)
DATE=$(date +%Y-%m-%d)
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)

# Compute prompt hash (system prompt + theater brief)
PROMPT_HASH=$(cat "$SCRIPT_DIR/prompt.md" "$THEATER_FILE" | git hash-object --stdin)
REPO_URL=$(git remote get-url origin 2>/dev/null | sed 's/\.git$//' | sed 's|git@github.com:|https://github.com/|')

# Build settings with system prompt from prompt.md
SYSTEM_PROMPT=$(cat "$SCRIPT_DIR/prompt.md")
jq -n --arg sp "$SYSTEM_PROMPT" '{
  systemPrompt: $sp,
  allowedTools: ["Agent","Bash","Read","Write","WebSearch","Glob","Grep"]
}' > /tmp/icai-settings.json

THEATER_BRIEF=$(cat "$THEATER_FILE")

echo "ICAI — $(date -u +%Y-%m-%dT%H:%MZ)"
echo "Theater: $THEATER"
echo "Prompt hash: $PROMPT_HASH"
echo "---"

claude --settings /tmp/icai-settings.json \
       -p "Today: ${DATE}. Write report to _reports/${DATE}-${THEATER}.md

## Theater Brief
${THEATER_BRIEF}

## Metadata (include in front matter)
prompt_hash: ${PROMPT_HASH}
prompt_url: ${REPO_URL}"

# Commit and push the report
git pull --rebase
git add -A
git commit -m "${THEATER} — ${DATE}"
git push
