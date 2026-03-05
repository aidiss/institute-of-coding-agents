#!/bin/bash
# ICAI — run a prompt via claude in headless mode
# Usage: ./run.sh prompts/daily.md
set -e

PROMPT_FILE="${1:-prompts/daily.md}"

if [ ! -f "$PROMPT_FILE" ]; then
  echo "Usage: ./run.sh <prompt-file>"
  echo "  e.g. ./run.sh prompts/daily.md"
  exit 1
fi

# Compute prompt hash and GitHub permalink
PROMPT_HASH=$(git hash-object "$PROMPT_FILE")
REPO_URL=$(git remote get-url origin 2>/dev/null | sed 's/\.git$//' | sed 's|git@github.com:|https://github.com/|')
PROMPT_PERMALINK="${REPO_URL}/blob/${PROMPT_HASH}/${PROMPT_FILE}"

echo "ICAI — $(date -u +%Y-%m-%dT%H:%MZ)"
echo "Running: $PROMPT_FILE"
echo "Prompt hash: $PROMPT_HASH"
echo "---"

PROMPT_CONTENT=$(cat "$PROMPT_FILE")
CONTEXT="prompt_hash: ${PROMPT_HASH}
prompt_url: ${PROMPT_PERMALINK}"

claude --allowedTools "Bash,Read,Write,WebSearch,Glob,Grep" \
       -p "${PROMPT_CONTENT}

---
## Metadata (include in front matter)
${CONTEXT}"
