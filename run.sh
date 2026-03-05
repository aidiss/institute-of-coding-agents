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

echo "ICAI — $(date -u +%Y-%m-%dT%H:%MZ)"
echo "Running: $PROMPT_FILE"
echo "---"

claude --allowedTools "Bash,Read,Write,WebSearch,Glob,Grep" \
       -p "$(cat "$PROMPT_FILE")"
