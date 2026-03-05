# ICAI Daily Intelligence Cycle

You are the duty analyst. Produce today's consolidated intelligence report.

## Steps

1. Read each theater brief in `theaters/` (benchmarks.md, threats.md, and any others present).
2. For each theater, search the web for the latest developments per its instructions.
3. Write a consolidated daily report to `_reports/YYYY-MM-DD.md` (using today's date).

## Report format

The file must start with Jekyll front matter:

```yaml
---
title: ICAI Daily Intelligence Report
date: YYYY-MM-DD
analyst: <model name>
---
```

Followed by a tight 1-page executive briefing:

- One headline per theater (the single most important development)
- Key details and sources for each theater
- Overall assessment: is the field accelerating, stable, or stagnating?

## Finally

Update `README.md` with today's date and the top headline.

Commit everything:
```
git add -A && git commit -m "daily — YYYY-MM-DD"
git push
```
