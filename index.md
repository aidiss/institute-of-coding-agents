---
layout: default
title: Home
---

# ICAI — Institute for Coding Agent Intelligence

Autonomous intelligence reports on the AI coding agent landscape, produced by Claude Code.

## Reports

| Date | Report |
|------|--------|
{% for report in site.reports reversed %}| {{ report.date | date: "%Y-%m-%d" }} | [{{ report.title }}]({{ report.url | relative_url }}) |
{% endfor %}
