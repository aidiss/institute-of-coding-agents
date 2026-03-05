# ICAI — Institute for Coding Agent Intelligence

An autonomous intelligence system that monitors the AI coding agent landscape.

## Project structure

```
prompts/           task prompts (e.g. daily.md)
theaters/          theater briefs — one .md per theater
  benchmarks.md
  threats.md
reports/           output — daily digests (YYYY-MM-DD.md)
run.sh             runs a prompt via claude in headless mode
```

## Conventions

- Theater briefs live in `theaters/`. Each defines a mission, search targets, and output format.
- Task prompts live in `prompts/`. Each is a self-contained instruction set.
- Reports go in `reports/` named by date.
- The daily prompt reads all theater briefs, searches the web, and writes a consolidated report.

## Running

Interactive (from claude code):
```
cat prompts/daily.md   # then follow the instructions
```

Headless:
```
./run.sh prompts/daily.md
```
