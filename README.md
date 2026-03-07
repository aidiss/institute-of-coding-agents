# ICAI — Institute for Coding Agent Intelligence

Autonomous intelligence reports on the AI coding agent landscape, produced by Claude Code.

## Quick start

```bash
# Run a single theater
./run.sh theaters/benchmarks.md

# Run all theaters
for t in theaters/*.md; do ./run.sh "$t"; done
```

## Structure

- `prompt.md` — shared report template (role, front matter, instructions)
- `theaters/` — theater briefs (releases, benchmarks, security, funding)
- `_reports/` — generated reports (Jekyll collection, `YYYY-MM-DD-theater.md`)
- `run.sh` — headless runner: stitches prompt + theater, runs claude, commits

## Theaters

| Theater | Question |
|---|---|
| releases | What shipped? Models, products, open source |
| benchmarks | Who's winning? Scores, leaderboards, methodology |
| security | What broke? Vulns, supply chain, exploits |
| funding | Where's the money? Deals, acquisitions, talent |

## Latest report

**2026-03-05** — OpenClaw open-source agent surpasses React on GitHub stars (247k in 100 days); SWE-bench Pro displaces Verified as Claude Opus 4.5 leads at 45.9%.

- [2026-03-05 — Daily Intelligence Report](_reports/2026-03-05.md)
