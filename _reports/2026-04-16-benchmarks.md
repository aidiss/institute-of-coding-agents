---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-16
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 16, 2026

The headline today is a significant SEAL leaderboard refresh: GPT-5.4 (xHigh) has jumped to #1 on SWE-bench Pro at 59.1%, up roughly 13 pp from the previous SEAL leader (Claude Opus 4.5 at 45.9% in March). Muse Spark (Meta) enters at #2 at 55.0%. Both results carry the caveat that "xHigh" and uncapped-cost modes are not directly comparable to prior standardized runs. Elsewhere, Epoch AI published preliminary MirrorCode results, a new long-horizon benchmark measuring autonomous reimplementation of real codebases — Claude Opus 4.6 is the strongest performer documented to date. SWE-bench Verified remains retired and contaminated; scores on it continue to be published but should not be used for capability comparisons.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23**

Included for historical and trending reference only. OpenAI retired this benchmark after confirming training-data contamination across all frontier models and finding 59.4% of the hardest unsolved tasks had flawed tests. All scores below should be treated as contaminated.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| — | Claude Mythos Preview | SWE-bench Verified | 93.9% | 2026-04-07 | Self-reported; model not publicly available |
| — | GPT-5.3 Codex | SWE-bench Verified | 85.0% | 2026-04 | Self-reported |
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | 2026-02-17 | Self-reported; last reading before retirement |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-17 | Self-reported |
| 3 | GPT-5.2 | SWE-bench Verified | 80.0% | 2026-02-17 | Self-reported |
| 4 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | 2026-04-13 | Self-reported |
| 5 | Qwen3.6 Plus | SWE-bench Verified | 78.8% | 2026-04-13 | Self-reported; Alibaba |
| 6 | MiMo-V2-Pro | SWE-bench Verified | 78.0% | 2026-04-13 | Self-reported; Xiaomi |
| 7 | GLM-5 | SWE-bench Verified | 77.8% | 2026-04-13 | Self-reported; Z.AI |
| 8 | Muse Spark | SWE-bench Verified | 77.4% | 2026-04-13 | Self-reported; Meta |

*Source: BenchLM.ai snapshot dated 2026-04-13 (31 models tracked). Scores after February retirement are entirely self-reported with no independent verification. Gap between top-4 is <1.1 pp — ordering is not meaningful.*

---

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Primary active benchmark for frontier coding evaluation. **New entries observed April 2026**; dates of individual submissions not published by Scale AI. Confidence intervals overlap for most ranks — treat ordering below rank 1 with caution.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | GPT-5.4 (xHigh) | SWE-bench Pro | 59.10% ±3.56% | 2026-04 | Uncapped cost; not directly comparable to prior standard runs |
| 2 | Muse Spark | SWE-bench Pro | 55.00% ±3.60% | 2026-04 | New entry; Meta |
| 3 | Claude Opus 4.6 (thinking) | SWE-bench Pro | 51.90% ±3.61% | 2026-04 | Extended thinking mode |
| 4 | Gemini 3.1 Pro (thinking) | SWE-bench Pro | 46.10% ±3.60% | 2026-04 | Extended thinking mode |
| 5 | Claude Opus 4.5 | SWE-bench Pro | 45.89% ±3.60% | 2026-03 | Prior SEAL leader |
| 6 | Claude Sonnet 4.5 | SWE-bench Pro | 43.60% ±3.60% | 2026-03 | |
| 7 | Gemini 3 Pro Preview | SWE-bench Pro | 43.30% ±3.60% | 2026-03 | |
| 8 | Claude Sonnet 4 | SWE-bench Pro | 42.70% ±3.59% | 2026-03 | |
| 9 | GPT-5 (High) | SWE-bench Pro | 41.78% ±3.49% | 2026-03 | |
| 10 | GPT-5.2-Codex | SWE-bench Pro | 41.04% ±3.57% | 2026-03 | |

*Asterisked entries on the Scale AI page use mini-SWE-agent harness. Rows 1–4 use uncapped cost limits with 250-turn maximum. Rows 5–10 are from the March 2026 SEAL standardized run. The jump from 45.9% → 59.1% partly reflects the "xHigh" compute tier, not model capability alone.*

---

### SWE-bench Pro — Custom Agent Systems (self-reported, non-comparable to SEAL)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | 2026-04-07 | Self-reported; model not publicly available |
| 2 | GPT-5.4 | SWE-bench Pro | 59.1% | 2026-04 | xHigh uncapped-cost mode |
| 3 | GLM-5.1 | SWE-bench Pro | 58.4% | 2026-04 | Self-reported; Z.AI |
| 4 | GPT-5.3-Codex CLI | SWE-bench Pro | 57.0% | 2026-03 | Self-reported |
| 5 | GPT-5.2-Codex (custom) | SWE-bench Pro | 56.4% | 2026-03 | Self-reported |
| 6 | Claude Code (Opus 4.5) | SWE-bench Pro | 55.4% | 2026-03 | Self-reported |
| 7 | Muse Spark | SWE-bench Pro | 55.0% | 2026-04 | New entry |
| 8 | Claude Opus 4.6 | SWE-bench Pro | 53.4% | 2026-03 | Self-reported |

---

### SWE-Rebench (contamination-resistant, continuously updated; Jan–Mar 2026 window)

Nebius benchmark using fresh GitHub issues under fixed ReAct scaffolding. Reported metric is Resolved Rate (best pass@1 across 5 runs). Problem set: 57 tasks across 46 repositories.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-Rebench | 65.3% | Jan–Mar 2026 |
| 2 | GPT-5.2 (medium) | SWE-Rebench | 64.4% | Jan–Mar 2026 |
| 3 | GLM-5 | SWE-Rebench | 62.8% | Jan–Mar 2026 |
| 4 | GPT-5.4 (medium) | SWE-Rebench | 62.8% | Jan–Mar 2026 |
| 5 | GLM-5.1 | SWE-Rebench | 62.7% | Jan–Mar 2026 |
| 6 | Gemini 3.1 Pro Preview | SWE-Rebench | 62.3% | Jan–Mar 2026 |
| 7 | DeepSeek-V3.2 | SWE-Rebench | 60.9% | Jan–Mar 2026 |
| 8 | Claude Sonnet 4.6 | SWE-Rebench | 60.7% | Jan–Mar 2026 |
| 9 | Claude Sonnet 4.5 | SWE-Rebench | 60.0% | Jan–Mar 2026 |
| 10 | Qwen3.5-397B-A17B | SWE-Rebench | 59.9% | Jan–Mar 2026 |

*Evaluation window noted as Jan 2 – Mar 2026. Scores are not directly comparable to SWE-bench Pro because of different task sets, scaffolding, and pass@k methodology.*

---

### LiveCodeBench v6 (contamination-resistant competitive programming)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Qwen3.6 Plus | LiveCodeBench v6 | 87.1% | 2026-04-09 |
| 2 | Kimi K2.5 | LiveCodeBench v6 | 85.6% | 2026-04-09 |
| 3 | Claude Opus 4.5 | LiveCodeBench v6 | 84.8% | 2026-04-09 |
| 4 | Gemini 3.1 Pro | LiveCodeBench v6 | 81.3% | 2026-04 |
| 5 | Claude Opus 4.6 | LiveCodeBench v6 | 76.0% | 2026-03 |

*March entries (Gemini 3 Pro Preview at 91.7%, DeepSeek V3.2 Speciale at 89.6%) have dropped out of the current top. Most likely cause: rolling-window refresh adding post-training-cutoff problems. Self-reported except where noted.*

---

### Terminal-Bench 2.0 (89 realistic terminal tasks, Docker-sandboxed)

No new entries since March. Verified results remain authoritative reference.

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| 2 | Claude Opus 4.6 | Terminal-Bench 2.0 | 65.4% ±2.9% | 2026-03 | **Verified** |
| — | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported only |
| — | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported only |

*Infrastructure resource allocation can swing scores up to 6 pp (Anthropic audit finding). Self-reported entries have not been reproduced under fixed resource constraints.*

---

### HumanEval (saturated — not recommended for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-03 |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-03 |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-03 |
| 5 | Claude Opus 4.6 | HumanEval | 95.0% | 2026-03 |

*All scores self-reported. Benchmark is saturated — all frontier models score 95%+; it no longer differentiates capability. HumanEval+ (EvalPlus, 80× more tests) provides more signal: Kimi K2 Base leads at 80.3%.*

---

## New Benchmarks & Methodology

**MirrorCode** (Epoch AI / METR, preliminary results published April 2026)
Long-horizon coding tasks: AI agents must autonomously reimplement existing software without access to source code, using only execute-only binary access and documentation. Tasks are estimated at 2–17 weeks for skilled human engineers. Preliminary results show Claude Opus 4.6 is the strongest performer — it solved gotree (16,905-line bioinformatics toolkit) with 99.95% test passage. A 61,461-line configuration language (Pkl) reached 35% test passage with 1 billion tokens. Key design feature: contamination is structurally impossible since the reimplemented code is novel, not a copy of the original.

**SWE-Rebench** (Nebius, ongoing)
Continuously updated software engineering benchmark using fresh GitHub issues. Fixed ReAct scaffolding, 5 evaluation runs per problem, reports Resolved Rate (pass@1 best). Designed to minimize contamination by sourcing problems not yet in training data. The January–March 2026 window covers 57 problems across 46 repos.

**SWE-bench Multilingual** (emerging)
An extension of SWE-bench covering Go, Rust, TypeScript, and Java repositories. Several labs have begun reporting scores (Cursor Composer 2: 73.7%, self-reported). No independent evaluation framework established yet.

**FeatureBench** (LiberCoders / ICLR 2026, active)
200 feature-development tasks across 24 repositories. Tests realistic engineering work (not patch application). Claude Opus 4.5 scores 11.0% despite 80.9% on SWE-bench Verified — the starkest published illustration of the gap between benchmark performance and real engineering capability.

---

## Notable Movements

**GPT-5.4 jumps to #1 on SEAL at 59.1% — but mode matters.**
The previous SEAL leader was Claude Opus 4.5 at 45.9% (March). GPT-5.4 in "xHigh" mode (uncapped cost, 250-turn limit) posts 59.1% ±3.56%. The "xHigh" compute tier is not directly comparable to the standardized run used for prior entries. OpenAI has not published what "xHigh" costs per task. Treat this as an upper bound for GPT-5.4 under generous compute, not a head-to-head improvement on a fixed scaffold.

**Muse Spark (Meta) enters SEAL at #2 (55.0%) — unverified submission date.**
Meta's Muse Spark appears in the Scale AI SEAL leaderboard at 55.0% ±3.60%, above Claude Opus 4.6 (thinking) at 51.9%. No submission date is published. This is the first time a Meta model has appeared in the SEAL top 3. Methodology (scaffold, cost tier) is not documented in the public leaderboard.

**Claude Opus 4.6 (thinking) rises to #3 on SEAL (51.9%).**
With extended thinking enabled, Claude Opus 4.6 posts 51.9% — up from Claude Opus 4.5's 45.9% (prior SEAL leader, March 2026). This is a verified SEAL result, unlike the custom-agent scores in the self-reported table.

**MirrorCode signals a qualitative shift in evaluation ambition.**
Epoch AI's preliminary results (published this week) show Claude Opus 4.6 solving a 16,905-line bioinformatics toolkit that would take human engineers "2–17 weeks." This is the first credible evidence of sustained multi-week-equivalent autonomous coding at scale. The benchmark is not contaminated by design. Results are preliminary; broader model comparisons have not yet been published.

**SWE-bench Verified contamination continues after retirement.**
New self-reported entries — Claude Sonnet 4.6 (79.6%), Qwen3.6 Plus (78.8%), MiMo-V2-Pro (78%), GLM-5 (77.8%) — keep appearing on the BenchLM.ai tracking page. These models were trained after February 2026, when the benchmark was already retired and contamination was public knowledge. The scores are therefore even less meaningful than pre-retirement entries. Do not use for any comparative claim.

**SWE-Rebench shows a tighter field than SEAL.**
Across the January–March 2026 window, the top 10 models on SWE-Rebench are clustered between 59.9% and 65.3% — a 5.4 pp spread. On SEAL the gap between rank 1 and rank 10 is ~18 pp. The tighter spread likely reflects the smaller and more varied task set (57 problems vs 731) combined with the pass@1 best-of-5 metric. Claude Opus 4.6 leads (65.3%), with GPT-5.2 and GLM-5 within 1 pp.

**Scaffold gap documented at 10–17 pp on SWE-bench Pro.**
GPT-5.4: 59.1% (SEAL xHigh uncapped) vs. ~42–44% estimated standardized — approximately 15–17 pp attributable to compute/scaffold. The prior March data showed 10–12 pp gaps. As labs compete on the leaderboard with increasingly specialized and uncapped scaffolds, the gap appears to be widening.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Verified — BenchLM.ai (31 models, April 13, 2026)](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-Bench Pro analysis: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [OpenAI Drops SWE-bench Verified: What It Means for AI — AdwaitX](https://www.adwaitx.com/openai-swe-bench-verified-retired-ai-benchmarks/)
- [Is SWE-bench Verified Contaminated? OpenAI Shifts to SWE-bench Pro — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [SWE-bench Scores and Leaderboard Explained (2026) — DEV Community](https://dev.to/rahulxsingh/swe-bench-scores-and-leaderboard-explained-2026-54of)
- [SWE-rebench Leaderboard — Nebius](https://swe-rebench.com/)
- [MirrorCode preliminary results — Epoch AI](https://epoch.ai/blog/mirrorcode-preliminary-results)
- [SWE-bench Verified — Epoch AI tracker](https://epoch.ai/benchmarks/swe-bench-verified)
- [LiveCodeBench official leaderboard](https://livecodebench.github.io/)
- [LiveCodeBench — vals.ai](https://www.vals.ai/benchmarks/lcb)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [SWE-bench & LiveCodeBench — BenchLM.ai (coding)](https://benchlm.ai/coding)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [Best AI for Coding 2026 — LLM-Stats](https://llm-stats.com/leaderboards/best-ai-for-coding)
- [AI Coding Benchmarks 2026: Every Major Eval Explained — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [AI Benchmarks 2026: Top Evaluations and Their Limits — Kili Technology](https://kili-technology.com/blog/ai-benchmarks-guide-the-top-evaluations-in-2026-and-why-theyre-not-enough)
