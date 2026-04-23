---
date: 2026-04-23
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-23

## Leaderboard

### SWE-bench Verified (as of 2026-04-22, via third-party aggregators)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 93.9% | 2026-04 | Unverified preview; self-reported |
| 2 | Claude Opus 4.7 | 87.6% | 2026-04 | Third-party aggregated |
| 3 | GPT-5.3 Codex | 85.0% | 2026-04 | Third-party aggregated |
| 4 | Claude Opus 4.5 | 80.9% | 2026-04 | Third-party aggregated |
| 5 | Claude Opus 4.6 | 80.8% | 2026-04 | Third-party aggregated |
| 6 | Gemini 3.1 Pro | 80.6% | 2026-04 | Third-party aggregated |
| 7 | MiniMax M2.5 | 80.2% | 2026-04 | Third-party aggregated |
| 8 | GPT-5.2 | 80.0% | 2026-04 | Third-party aggregated |
| 9 | Claude Sonnet 4.6 | 79.6% | 2026-04 | Third-party aggregated |
| 10 | Qwen3.6 Plus | 78.8% | 2026-04 | Third-party aggregated |

> **Contamination caveat:** OpenAI formally retired SWE-bench Verified in February 2026, citing that 59.4%+ of remaining tasks are flawed or unsolvable under fair evaluation, and that GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash can reproduce gold patches verbatim — confirming training data overlap. Treat all Verified scores above ~70% with skepticism.

---

### SWE-bench Pro — Public Dataset (as of 2026-04-20, via Scale AI leaderboard)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 77.8% | 2026-04-20 | Unverified preview |
| 2 | Claude Opus 4.7 | 64.3% | 2026-04-20 | |
| 3 | Kimi 2.6 | 58.6% | 2026-04-20 | |

> SWE-bench Pro covers 1,865 tasks (731 public) across 41 repositories in Python, Go, TypeScript, and JavaScript. Average fix requires ~107 lines across 4.1 files. Scores are substantially lower than Verified for the same models (e.g., Claude Opus 4.5: 80.9% Verified → ~45.9% on Pro), demonstrating the difficulty gap.

---

### LiveCodeBench (as of 2026-04-14)

| Rank | Model | Score | Date Reported | Notes |
|------|-------|-------|---------------|-------|
| 1 | Gemini 3 Pro Preview | 91.7% | 2026-04-14 | |
| 2 | Gemini 3 Flash Preview | 90.8% | 2026-04-14 | |
| 3 | DeepSeek V3.2 Speciale | 89.6% | 2026-04-14 | |

> 218 models evaluated; average score 50.7 (σ = 23.5). LiveCodeBench continuously harvests fresh competitive-programming problems post-dating model training cutoffs, making it the most contamination-resistant mainstream coding signal.

---

### Terminal-Bench (latest available)

| Rank | Model | Score | Date Reported | Notes |
|------|-------|-------|---------------|-------|
| 1 | GPT-5.4 | 75.1% | 2026-04 | Third-party aggregated |
| 2 | Claude Opus 4.6 | 65.4% | 2026-04 | Third-party aggregated |

---

### HumanEval

Effectively saturated — all frontier models score 95%+. Kimi K2.5 reportedly reaches 99% (MIT-licensed). No longer a useful differentiator for frontier comparison.

---

## New Benchmarks & Methodology

### SWE-bench Pro (Scale AI, released Sept 2025)
The primary contamination-resistant successor to SWE-bench Verified. Uses copyleft-licensed and private commercial repositories that were legally inaccessible during training. Multi-language (Python, Go, TypeScript, JavaScript), multi-file tasks. OpenAI explicitly endorses it as the new standard for frontier coding evaluation.

### SWE-rebench
An independent re-evaluation effort (swe-rebench.com) auditing existing benchmark results with standardized scaffolding to strip out harness-specific inflation. Methodology: all agents are run on a fixed scaffold to isolate raw model capability from engineering of the evaluation wrapper.

### LiveBench (general-purpose, contamination-free)
Continuously updated with fresh problems across domains. Increasingly cited alongside LiveCodeBench as a preferred live-updating leaderboard.

---

## Notable Movements

- **OpenAI drops SWE-bench Verified (Feb 2026):** The most significant methodological shift of the quarter. OpenAI published a post explaining why it no longer evaluates on Verified, citing contamination and task quality collapse. This effectively deprecates the benchmark for frontier comparison.

- **Scaffold inflation acknowledged:** Multiple analyses confirm a 12+ point swing in SWE-bench scores depending on the agent harness used. Vendors can engineer scaffolding specifically to game benchmark tasks rather than improving the underlying model. SWE-rebench is the community response.

- **Gemini 3 dominates LiveCodeBench:** Gemini 3 Pro and Flash Preview hold the top two spots on the most contamination-resistant live benchmark, a notable departure from Claude-led SWE-bench rankings.

- **HumanEval officially irrelevant:** With Kimi K2.5 and others hitting 99%, HumanEval is no longer cited by serious evaluators for frontier model differentiation.

- **Claude Mythos Preview caveat:** The 93.9% SWE-bench Verified claim and 77.8% SWE-bench Pro claim appear in third-party aggregators but are flagged as unverified preview results — treat as unconfirmed until independently reproduced on the official leaderboard.

---

## Sources

- [SWE-bench Official Leaderboard](http://www.swebench.com)
- [SWE-Bench Pro Leaderboard — Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Verified Leaderboard — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Pro Benchmark — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-Bench Pro: Why 46% Beats 81% — MorphLLM](https://www.morphllm.com/swe-bench-pro)
- [Why SWE-bench Verified No Longer Measures Frontier Coding — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench Verified Contamination Debate — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [LiveCodeBench Leaderboard — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [SWE-bench & LiveCodeBench Leaderboard March 2026 — BenchLM.ai](https://benchlm.ai/coding)
- [SWE-bench Leaderboard 2026: All Scores & Rankings — CodeAnt](https://www.codeant.ai/blogs/swe-bench-scores)
- [AI Benchmarks 2026: Top Evaluations and Their Limits — Kili Technology](https://kili-technology.com/blog/ai-benchmarks-guide-the-top-evaluations-in-2026-and-why-theyre-not-enough)
- [SWE-bench February 2026 Update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
