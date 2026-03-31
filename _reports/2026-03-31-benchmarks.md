---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-03-31
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — March 31, 2026

The dominant story this cycle is not who scored highest — it is the collapse of SWE-bench Verified as a credible signal. OpenAI formally retired it in February 2026 citing saturation and contamination. The cleaner benchmarks (SWE-bench Pro, SWE-rebench, LiveCodeBench) tell a more honest but humbler story.

---

## Leaderboard

### SWE-bench Verified (standardized scaffold — mini-SWE-agent v2.0.0)

Self-reported scores diverge 4–8 pp from standardized runs. Self-reported figures noted separately. **Treat this leaderboard with caution** — OpenAI retired it on 2026-02-23 citing contamination.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 76.8% (standardized) / 80.9% (self-reported) | 2026-02-17 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 75.6% (standardized) / 80.8% (self-reported) | 2026-02-17 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | 2026-02-17 |
| 4 | MiniMax M2.5 (high reasoning) | SWE-bench Verified | 80.2% | 2026-02-17 |
| 5 | GPT-5.2 | SWE-bench Verified | 72.8% (standardized) / 80.0% (self-reported) | 2026-02-17 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | — |
| 7 | Gemini 3 Flash (high reasoning) | SWE-bench Verified | 75.8% (standardized) / 78.0% (self-reported) | 2026-02-17 |
| 8 | GLM-5 (high reasoning) | SWE-bench Verified | 72.8% (standardized) / 77.8% (self-reported) | 2026-02-17 |
| 9 | Claude Sonnet 4.5 | SWE-bench Verified | 72.8% (standardized) / 77.2% (self-reported) | 2026-02-17 |
| 10 | Kimi K2.5 | SWE-bench Verified | 76.8% | — |

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Cleaner signal than Verified. Uses GPL-licensed code as contamination barrier; private set (276 instances) uses proprietary code.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60 | 2026-02 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60 | 2026-02 |
| 3 | Gemini 3 Pro | SWE-bench Pro | 43.3% ±3.60 | 2026-02 |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.7% ±3.59 | 2026-02 |
| 5 | GPT-5 High | SWE-bench Pro | 41.8% ±3.49 | 2026-02 |
| 6 | GPT-5.2-Codex | SWE-bench Pro | 41.0% ±3.57 | 2026-02 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.5% ±3.55 | 2026-02 |
| 8 | Qwen3-Coder-480B | SWE-bench Pro | 38.7% ±3.55 | 2026-02 |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.8% ±3.55 | 2026-02 |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% ±3.55 | 2026-02 |

*Self-reported with custom scaffolding (non-comparable): GPT-5.3-Codex 56.8%, GPT-5.4 57.7%. Standardized vs. custom gap is 10–12 pp.*

### SWE-rebench v2 (rolling window: 2026-01-02 – 2026-03-01, 128 tasks, 46 repos)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%) | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%) | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench v2 | 60.9% (pass@5: 73.7%) | 2026-03 |
| 6 | Claude Sonnet 4.6 | SWE-rebench v2 | 60.7% | 2026-03 |

### Terminal-Bench 2.0 (89 realistic terminal tasks; accepted ICLR 2026)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% | 2026-03-12 |
| 1 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% | 2026-03-12 |
| 3 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% | 2026-03-13 |
| 4 | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% | 2026-02-06 |

*"Hard" tasks only (Artificial Analysis): GPT-5.4 57.6% — reveals large easy/hard split.*

### LiveCodeBench v6 (contamination-resistant; competitive programming; updated 2026-03-30)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 0.878 | 2026-03-30 |
| 2 | Step-3.5-Flash (StepFun) | LiveCodeBench v6 | 0.864 | 2026-03-30 |
| 3 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | 0.850 | 2026-03-30 |
| 4 | GLM-4.7 (Zhipu AI) | LiveCodeBench v6 | 0.849 | 2026-03-30 |
| 5 | Qwen3.5-397B-A17B (Alibaba) | LiveCodeBench v6 | 0.836 | 2026-03-30 |

*LiveCodeBench Pro Elo (Elo-based): Gemini 3.1 Pro leads at Elo 2887. Average across 36 evaluated models: 0.670.*

### HumanEval (164 Python problems — near-saturated)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-Q1 |
| 3 | OpenAI o3-mini (high) | HumanEval | 97.6% | 2026-Q1 |

*Effectively deprecated as a frontier differentiator. Top models cluster 95–99%. Community has migrated to BigCodeBench, LiveCodeBench, SWE-bench Pro.*

---

## New Benchmarks & Methodology

**GDPval** (OpenAI, ~2026-02)
Tasks spanning 44 knowledge-work occupations across 9 industries (selected by U.S. GDP contribution). Evaluates documents, spreadsheets, slides, code, and diagrams with reference files. Claude Sonnet 4.6 leads GDPval-AA Elo at ~1,633 points. **Conflict-of-interest flag:** OpenAI both built the leading models and designed the benchmark; no independent validation yet. Self-reported.

**SWE-bench Live** (2026)
Continuously updated issue-resolution benchmark. Restricted to GitHub issues created between 2024-01-01 and 2025-04-20, with planned monthly updates. Designed as a rolling contamination barrier.

**SWE-rebench v2** (rolling, Jan–Mar 2026)
128 tasks from 46 repos; 128k context window; no step limit; no few-shot demonstrations (models no longer need them). Updated leaderboard every two months.

**BigCodeBench**
Positioned as "next-generation HumanEval" with diverse real-world library and API calls. Gaining adoption as HumanEval saturates.

**Terminal-Bench 2.0** (ICLR 2026)
Hard/easy split exposes large variance between agentic systems on realistic shell tasks. The original v1 is no longer used for new evaluations.

---

## Notable Movements

**The Verified–Pro gap is the headline number.**
Claude Opus 4.5: 80.9% on SWE-bench Verified → 45.9% on SWE-bench Pro (standardized). A ~35 percentage-point delta explained almost entirely by contamination and task difficulty. This gap is now the single clearest signal that Verified has lost its usefulness as a frontier benchmark.

**OpenAI retires SWE-bench Verified** (2026-02-23).
Their Frontier Evals team cited saturation and contamination. Evidence: GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash could reproduce verbatim gold-patch solutions from task ID alone. In one documented case, GPT-5.2's chain-of-thought named an argument that was never in the problem description — it was in the training data.

**The "SWE-bench Illusion" paper** (2026).
Models achieve up to 76% accuracy identifying buggy file paths using only issue descriptions (no repo access), but drop to ~53% on out-of-distribution repos — a clear memorization signature. Verbatim 5-gram overlap on SWE-bench Verified: up to 35%, vs. 18% on comparable out-of-distribution benchmarks. ~32–33% of "successful" patches involve solution leakage; ~31% pass due to inadequate tests.

**Grok 4 disputed** (self-reported).
xAI self-reported 72–75% on SWE-bench Verified. Independent testing: 58.6%. Delta of 14–16 pp. Treat all xAI self-reported scores as unverified until independently reproduced.

**Scaffold gaming quantified.**
Same model (Opus 4.5): 45.9% SEAL standardized scaffold → 50.2–55.4% with custom scaffolding. A 4–10 pp lift from retrieval strategy, not model capability. Labs can inflate leaderboard positions by optimizing agent scaffolding rather than models.

**Public-to-private degradation on SWE-bench Pro.**
Claude Opus 4.1: 22.7% (public set) → 17.8% (private proprietary set). GPT-5: 23.1% → 14.9%. ~25% performance drop on unseen proprietary code is a consistent contamination signal across labs.

**Chinese labs competitive on LiveCodeBench.**
ByteDance (Seed 2.0 Pro), StepFun (Step-3.5-Flash), and Moonshot AI (Kimi K2.5) occupy the top 3 on LCB v6 as of 2026-03-30 — a notable shift from the Anthropic/OpenAI/Google dominance seen on SWE-bench.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/) — 2026-02-17 update
- [SWE-bench Verified March 2026 compilation — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-bench Live leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench (tbench.ai)](https://www.tbench.ai/)
- [Terminal-Bench ICLR 2026 paper — OpenReview](https://openreview.net/forum?id=a7Qa4CcHak)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench v6 — LLM Stats](https://llm-stats.com/benchmarks/livecodebench-v6)
- [HumanEval — BenchLM.ai](https://benchlm.ai/benchmarks/humaneval)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
