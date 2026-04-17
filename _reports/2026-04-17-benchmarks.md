---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-17
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 17, 2026

No confirmed new leaderboard submissions were reported on April 17. The competitive picture is unchanged from April 16: GPT-5.4 (xHigh) leads SWE-bench Pro on Scale AI's SEAL at 59.1%, followed by Muse Spark at 55.0% and Claude Opus 4.6 (thinking) at 51.9%. SWE-bench Verified remains retired and contaminated; self-reported entries continue to appear but carry no comparative value. LiveCodeBench shows a flux at the top — March-era results from Gemini 3 Pro Preview (91.7%) may have dropped off the rolling window; current stable leaders are Qwen3.6 Plus (87.1%) and Kimi K2.5 (85.6%). Epoch AI's MirrorCode benchmark — which tests long-horizon autonomous reimplementation — remains the most significant methodological development of the past week.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23**

Included for historical reference only. OpenAI retired this benchmark after confirming training-data contamination across all frontier models and finding 59.4% of the hardest unsolved tasks had flawed tests. All scores below should be treated as contaminated.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| — | Claude Mythos Preview | SWE-bench Verified | 93.9% | 2026-04-07 | Self-reported; model not publicly available |
| — | GPT-5.3 Codex | SWE-bench Verified | 85.0% | 2026-04 | Self-reported |
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | 2026-02-17 | Self-reported; last reading before retirement |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-17 | Self-reported |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | 2026-02-17 | Self-reported |
| 4 | MiniMax M2.5 | SWE-bench Verified | 80.2% | 2026-02-17 | Self-reported |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | 2026-02-17 | Self-reported |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | 2026-04-13 | Self-reported; post-retirement |
| 7 | Qwen3.6 Plus | SWE-bench Verified | 78.8% | 2026-04-13 | Self-reported; Alibaba; post-retirement |
| 8 | MiMo-V2-Pro | SWE-bench Verified | 78.0% | 2026-04-13 | Self-reported; Xiaomi; post-retirement |
| 9 | GLM-5 | SWE-bench Verified | 77.8% | 2026-04-13 | Self-reported; Z.AI; post-retirement |
| 10 | Muse Spark | SWE-bench Verified | 77.4% | 2026-04-13 | Self-reported; Meta; post-retirement |

*Source: BenchLM.ai snapshot dated 2026-04-13 (31 models tracked). Entries from rank 6 onward were submitted after February 2026 retirement — they are post-contamination self-reports and should not be used for any capability comparison.*

---

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Primary active benchmark for frontier coding evaluation. Confidence intervals overlap for ranks 2–4; ordering is not statistically reliable in that range.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | GPT-5.4 (xHigh) | SWE-bench Pro | 59.10% ±3.56% | 2026-04 | Uncapped cost; not directly comparable to prior standard runs |
| 2 | Muse Spark | SWE-bench Pro | 55.00% ±3.60% | 2026-04 | New entry; Meta; submission date not published |
| 3 | Claude Opus 4.6 (thinking) | SWE-bench Pro | 51.90% ±3.61% | 2026-04 | Extended thinking mode |
| 4 | Gemini 3.1 Pro (thinking) | SWE-bench Pro | 46.10% ±3.60% | 2026-04 | Extended thinking mode |
| 5 | Claude Opus 4.5 | SWE-bench Pro | 45.89% ±3.60% | 2026-03 | Prior SEAL leader |
| 6 | Claude Sonnet 4.5 | SWE-bench Pro | 43.60% ±3.60% | 2026-03 | |
| 7 | Gemini 3 Pro Preview | SWE-bench Pro | 43.30% ±3.60% | 2026-03 | |
| 8 | Claude Sonnet 4 | SWE-bench Pro | 42.70% ±3.59% | 2026-03 | |
| 9 | GPT-5 (High) | SWE-bench Pro | 41.78% ±3.49% | 2026-03 | |
| 10 | GPT-5.2-Codex | SWE-bench Pro | 41.04% ±3.57% | 2026-03 | |

*Ranks 1–4 use uncapped cost limits (250-turn maximum). Ranks 5–10 are from the March 2026 SEAL standardized run. The ~13 pp jump from rank 5 (45.9%) to rank 1 (59.1%) is partly attributable to the "xHigh" compute tier, not model capability alone. No new SEAL submissions confirmed on April 17.*

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
| 7 | Muse Spark | SWE-bench Pro | 55.0% | 2026-04 | SEAL-verified; included for comparison |
| 8 | Claude Opus 4.6 | SWE-bench Pro | 53.4% | 2026-03 | Self-reported |

---

### SWE-Rebench (contamination-resistant, continuously updated; Jan–Mar 2026 window)

Fixed ReAct scaffolding; 57 tasks across 46 repositories. Metric: Resolved Rate (best pass@1 across 5 runs).

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

*Top 10 are clustered within 5.4 pp — a tighter field than SEAL. April 2026 window not yet published.*

---

### LiveCodeBench v6 (contamination-resistant competitive programming)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Qwen3.6 Plus | LiveCodeBench v6 | 87.1% | 2026-04-09 | Self-reported |
| 2 | Kimi K2.5 | LiveCodeBench v6 | 85.6% | 2026-04-09 | Self-reported |
| 3 | Claude Opus 4.5 | LiveCodeBench v6 | 84.8% | 2026-04-09 | Self-reported |
| 4 | GLM-4.7 | LiveCodeBench v6 | 84.9% | 2026-04 | Self-reported; Z.AI |
| 5 | Gemini 3.1 Pro | LiveCodeBench v6 | 81.3% | 2026-04 | Self-reported |
| 6 | Claude Opus 4.6 | LiveCodeBench v6 | 76.0% | 2026-03 | Self-reported |

*March peak entries (Gemini 3 Pro Preview at 91.7%, DeepSeek V3.2 Speciale at 89.6%) may have dropped off the rolling window as the problem set refreshed with post-training-cutoff problems. LiveCodeBench's continuous problem ingestion is its primary contamination defense.*

---

### Terminal-Bench 2.0 (89 realistic terminal tasks, Docker-sandboxed)

No new entries since March 2026. Verified results remain the authoritative reference.

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| 2 | Claude Opus 4.6 | Terminal-Bench 2.0 | 65.4% ±2.9% | 2026-03 | **Verified** |
| — | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported only |
| — | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported only |

*Infrastructure resource allocation can swing scores up to 6 pp (Anthropic audit finding). Self-reported ForgeCode entries have not been reproduced under fixed resource constraints.*

---

### HumanEval (saturated — not recommended for frontier comparison)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 | Self-reported |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-03 | Self-reported |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-03 | Self-reported |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-03 | Self-reported |
| 5 | Claude Opus 4.6 | HumanEval | 95.0% | 2026-03 | Self-reported |

*All frontier models score 95%+; benchmark is saturated and no longer differentiates. HumanEval+ (EvalPlus, 80× more tests) provides more signal.*

---

## New Benchmarks & Methodology

**MirrorCode** (Epoch AI / METR, preliminary results April 2026)
Long-horizon coding tasks: AI agents autonomously reimplement existing software using only execute-only binary access and documentation. Tasks are estimated at 2–17 weeks of work for skilled human engineers. Claude Opus 4.6 is the strongest documented performer — it solved gotree (16,905-line bioinformatics toolkit) with 99.95% test passage. A 61,461-line configuration language (Pkl) reached 35% test passage at ~1 billion tokens. Contamination is structurally impossible because the reimplemented code is novel. Broader model comparisons not yet published; results remain preliminary.

**SWE-Rebench** (Nebius, ongoing)
Continuously updated SWE benchmark using fresh GitHub issues. Fixed ReAct scaffolding, 5 runs per problem, Resolved Rate (pass@1 best). Designed to minimize contamination. January–March 2026 window: 57 problems across 46 repos. April window pending.

**SWE-bench Multilingual** (emerging, multiple labs self-reporting)
Extension of SWE-bench covering Go, Rust, TypeScript, and Java. Self-reported scores appearing (Cursor Composer 2: 73.7%). No independent evaluation framework or standardized scaffold established yet.

**FeatureBench** (LiberCoders / ICLR 2026)
200 feature-development tasks across 24 repositories. Claude Opus 4.5 scores 11.0% despite 80.9% on SWE-bench Verified — the starkest published illustration of the gap between benchmark performance and real-world engineering capability.

**GDPval** (OpenAI-led, announced 2026)
Spans 44 knowledge-work occupations selected from the top 9 U.S. GDP-contributing industries. Broader than coding benchmarks; primarily relevant to general productivity evaluation rather than software engineering specifically.

---

## Notable Movements

**Leaderboard stable on April 17; no new submissions confirmed.**
No publicly announced leaderboard changes as of April 17. The picture from April 16 carries forward: GPT-5.4 (xHigh) at 59.1% on SEAL is the headline number, with the caveat that the "xHigh" compute tier inflates scores by an estimated 15–17 pp versus standardized runs.

**Contamination on SWE-bench Verified worsening with each new self-reported entry.**
New models (Claude Sonnet 4.6, Qwen3.6 Plus, MiMo-V2-Pro, GLM-5, Muse Spark) continue to post scores on the retired benchmark. All were trained after the February 2026 contamination disclosure — their Verified scores are doubly suspect. The continued publication of these scores on third-party trackers creates compounding confusion for researchers citing "SWE-bench performance."

**LiveCodeBench rolling window likely shifted in April.**
March peak entries (Gemini 3 Pro Preview at 91.7%, DeepSeek V3.2 Speciale at 89.6%) are not confirmed in April tracking. The most likely explanation is that the rolling window added post-training-cutoff problems that exposed overfitting to earlier problem distributions. Qwen3.6 Plus (87.1%) and Kimi K2.5 (85.6%) appear to be the current stable leaders.

**Scaffold/compute gap widening across all major benchmarks.**
The documented compute-tier effect (GPT-5.4 standard ~42–44% vs. xHigh 59.1% on SWE-bench Pro) and the infrastructure-allocation effect (±6 pp on Terminal-Bench) together mean that raw leaderboard numbers are increasingly uninterpretable without knowing the scaffold and compute budget. MirrorCode and SWE-Rebench are the two active benchmarks designed to resist this pressure; both should be weighted more heavily in capability assessments.

**SWE-bench Pro remains the most reliable active SWE leaderboard.**
Despite scaffold concerns at the top, SWE-bench Pro's standardized SEAL tier (731-instance public set, fixed scaffold) is the only major SWE benchmark with independent verification and published confidence intervals. Ranks 5–10 (all standardized March runs) remain the most comparable data points on the leaderboard.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Verified — BenchLM.ai (31 models, April 13, 2026)](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-Bench Pro analysis: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-Bench Verified Leaderboard — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Scores and Leaderboard Explained (2026) — DEV Community](https://dev.to/rahulxsingh/swe-bench-scores-and-leaderboard-explained-2026-54of)
- [SWE-rebench Leaderboard — Nebius](https://swe-rebench.com/)
- [SWE-bench & LiveCodeBench — BenchLM.ai coding](https://benchlm.ai/coding)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench GitHub](https://github.com/LiveCodeBench/LiveCodeBench)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [AI Coding Benchmarks 2026: Every Major Eval Explained — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-bench Verified — Epoch AI tracker](https://epoch.ai/benchmarks/swe-bench-verified)
- [HumanEval Leaderboard 2026 — pricepertoken.com](https://pricepertoken.com/leaderboards/benchmark/humaneval)
- [AI Model Benchmarks Apr 2026 — LM Council](https://lmcouncil.ai/benchmarks)
- [Best AI Models April 2026 — BuildFastWithAI](https://www.buildfastwithai.com/blogs/best-ai-models-april-2026)
