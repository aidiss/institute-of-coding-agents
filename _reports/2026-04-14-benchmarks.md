---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-14
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 14, 2026

Two weeks into April, the main storyline is the emergence of **Claude Mythos Preview** at the top of multiple leaderboards and the continuing migration away from SWE-bench Verified. The contamination audit is now settled — OpenAI's Frontier Evals post is the canonical citation — and SWE-bench Pro (SEAL standardized) remains the most credible active coding signal. A notable open-source upset: Zai's **GLM-5.1** posted 58.4% on SWE-bench Pro on April 8, surpassing closed-source custom-agent entries.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23** (historical reference only)

Officially deprecated by OpenAI due to confirmed training-data contamination. Despite retirement, vendors continue submitting new scores; treat all post-retirement entries as unverified self-reports on a contaminated benchmark.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview (Anthropic) | SWE-bench Verified | 93.9% | 2026-04-10 |
| 2 | GPT-5.3 Codex | SWE-bench Verified | 85.0% | 2026-04-10 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% (self-reported) | — |
| 4 | Claude Opus 4.5 | SWE-bench Verified | 80.9% (self-reported) | 2026-02-17 |
| 5 | Claude Opus 4.6 | SWE-bench Verified | ~80.8% (self-reported) | — |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (self-reported) | — |
| 7 | MiniMax M2.5 | SWE-bench Verified | ~80.2% (self-reported; audit pending) | — |
| 8 | GPT-5.2 | SWE-bench Verified | 80.0% (self-reported) | 2026-02-17 |
| 9 | GLM-5 (high reasoning) | SWE-bench Verified | 77.8% (self-reported) | — |
| 10 | Kimi K2.5 | SWE-bench Verified | 76.8% (self-reported) | — |

*All post-retirement entries (ranks 1–2) are self-reported on a contaminated benchmark. 83 models now evaluated; average score 63.4%. Claude Mythos Preview is an unreleased preview — independent verification pending.*

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Primary replacement for Verified. Confidence intervals overlap for most adjacent pairs; treat ordering with caution for ranks 2–10.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% | 2026-03 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% | 2026-03 |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% | 2026-03 |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.7% ±3.59% | 2026-03 |
| 5 | GPT-5 (High) | SWE-bench Pro | 41.8% ±3.49% | 2026-03 |
| 6 | GPT-5.2-Codex | SWE-bench Pro | 41.0% ±3.57% | 2026-03 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.5% ±3.55% | 2026-03 |
| 8 | Qwen3-Coder-480B-A35B | SWE-bench Pro | 38.7% ±3.55% | 2026-03 |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.8% ±3.55% | 2026-03 |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% ±3.55% | 2026-03 |

*Standardized scaffold: SEAL mini-SWE-agent. SEAL scores are ~10–12 pp below custom-agent self-reports from the same model.*

### SWE-bench Pro — Custom Agent Systems (self-reported, non-comparable to SEAL)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | GLM-5.1 (Zai — open source) | SWE-bench Pro | 58.4% | 2026-04-08 |
| 2 | GPT-5.3-Codex | SWE-bench Pro | 56.8% | 2026-04 |
| 3 | GPT-5.2-Codex | SWE-bench Pro | 56.4% | 2026-04 |
| 4 | GPT-5.2 | SWE-bench Pro | 55.6% | 2026-04 |
| 5 | Claude Code (Opus 4.5) | SWE-bench Pro | 55.4% | 2026-03 |

*All self-reported. GLM-5.1 entry is notable as a fully open-source model beating closed-source at the top of the custom-agent leaderboard (April 8, 2026).*

### SWE-rebench (rolling window: 2026-01 – 2026-03, 128 tasks)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench v2 | 60.9% | 2026-03 |
| 6 | Claude Sonnet 4.6 | SWE-rebench v2 | 60.7% | 2026-03 |

*Color-coded contamination risk per submission. Most transparent contamination-disclosure mechanism currently available.*

### Terminal-Bench 2.0 (89 realistic terminal tasks, Docker-sandboxed; as of April 10, 2026)

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% | 2026-04-10 | Self-reported |
| 2 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% | 2026-04-10 | Self-reported |
| 3 | GPT-5.4 | Terminal-Bench 2.0 | 75.1% | 2026-04-10 | Self-reported |
| — | GPT-5.4 (xhigh) | Terminal-Bench Hard | 57.6% | 2026-04-01 | **Independent (Artificial Analysis)** |
| — | Gemini 3.1 Pro Preview | Terminal-Bench Hard | 53.8% | 2026-04-01 | **Independent (Artificial Analysis)** |
| — | GPT-5.3 Codex (xhigh) | Terminal-Bench Hard | 53.0% | 2026-04-01 | **Independent (Artificial Analysis)** |

*Terminal-Bench 2.0 has 22 scored models (average 54.5%). Independent "Hard" task subset (Artificial Analysis) runs ~24 pp below self-reported tops, consistent with prior inflation pattern. Infrastructure resource allocation can swing scores ±6 pp.*

### LiveCodeBench v6 (contamination-resistant; updated 2026-03-30)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | 2026-03-22 |
| 2 | Gemini 3 Flash Preview (Reasoning) | LiveCodeBench v6 | 90.8% | 2026-03-22 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026-03-22 |
| 4 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-03-30 |
| 5 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | ~85% | 2026-03 |
| 6 | Qwen3.5-plus | LiveCodeBench v6 | 83.6% | 2026-02 |

*Continuously sourced fresh problems postdating training cutoffs. v6 includes 1,000+ problems collected May 2023–2025. LiveCodeBench Pro Elo (hardest): Gemini 3.1 Pro leads at Elo 2887 vs. GPT-5.2 at Elo 2393 (~500-point gap).*

### HumanEval (164 Python problems — saturated, frontier comparison not meaningful)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-04-12 |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-03 |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-03 |
| 5 | GPT-5.4 Pro | HumanEval | ~95.0% | 2026-Q1 |

*All self-reported. Benchmark public since 2021; all frontier models cluster at 95%+. Not recommended for capability comparison. HumanEval+ (EvalPlus, 80x more test cases) is a stricter alternative.*

---

## New Benchmarks & Methodology

**SWE-bench Verified contamination — audit closed (OpenAI, 2026-02-23)**
OpenAI audited 138 Verified tasks that o3 did not consistently solve over 64 independent runs; each case reviewed by ≥6 experienced software engineers. Findings: 59.4% of audited tasks had material issues in test design or problem description. Breakdown: 35.5% narrow test cases (enforce specific implementation details, invalidating functionally correct patches), 18.8% wide test cases (test functionality absent from the problem statement). Separately, all three frontier models tested (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce verbatim gold patches or problem statement specifics for certain tasks — confirmed memorization. OpenAI has stopped filing Verified scores; full postmortem published at openai.com.

**SWE-bench Pro public contamination barrier**
The 731-instance public set uses exclusively GPL-licensed repository code. Legal deterrent against inclusion in training data. Private set (276 proprietary instances) scores ~25% lower than public set across all models — the most reliable contamination gap signal available.

**GLM-5.1 open-source upset (April 8, 2026)**
Zai released GLM-5.1 as fully open-source and immediately posted 58.4% on SWE-bench Pro's custom-agent leaderboard, beating every closed-source entry. Methodology: standard SWE-bench Pro evaluation harness. Unverified by SEAL at time of writing; SEAL-standardized score pending.

**Claude Mythos Preview (Anthropic — unverified preview model)**
As of April 10, 2026, "Claude Mythos Preview" appears at the top of SWE-bench Verified (93.9%), Terminal-Bench 2.0 (82.0%), and a provisional composite coding leaderboard (weighted score 100.0%). This is an unreleased preview model — no model card, no third-party verification. Score should be treated as self-reported until independent confirmation. Benchmark community has not yet published reproduction attempts.

**SWE-rebench v2 rolling refresh**
Automated pipeline now generating 21,000+ continuously refreshed Python SWE tasks from live GitHub commit histories. Color-codes contamination risk (red = task predates model release; orange = external system reference). The most transparent contamination-disclosure mechanism currently available for agentic coding evaluation.

---

## Notable Movements

**GLM-5.1 (open source) leads SWE-bench Pro custom-agent table (April 8).**
First time an open-source model has topped the SWE-bench Pro leaderboard in any category. Zai's release strategy — open weights, public benchmark submission — puts pressure on closed-source incumbents. SEAL verification pending.

**Claude Mythos Preview sweeps two leaderboards.**
An unreleased Anthropic preview model topped both SWE-bench Verified (93.9%) and Terminal-Bench 2.0 (82.0%) as of April 10. The Verified score is on a retired, contaminated benchmark; the Terminal-Bench 2.0 score is self-reported and unverified. Both are notable claims, but neither can be taken as a reliable capability signal without independent evaluation.

**Verified-to-Pro gap remains the primary contamination measure.**
Claude Opus 4.5: 80.9% Verified (self-reported) → 45.9% Pro (SEAL standardized). A ~35 pp drop. For any new Verified claim, applying this ~35 pp discount gives a rough contamination-corrected estimate.

**HumanEval saturation confirmed.**
Kimi K2.5 at ~99% and Claude Sonnet 4.5 at 97.6% as of April 12. All frontier models are within a 5 pp band. The benchmark no longer differentiates. HumanEval+ (EvalPlus) is the recommended substitute for stricter Python evaluation.

**LiveCodeBench: Chinese labs hold top positions.**
Gemini (Google), DeepSeek, ByteDance (Seed), and Moonshot (Kimi) hold the top 5 on LCB v6 as of end-March. Anthropic and OpenAI models do not appear in the top 5 on this contamination-resistant benchmark. This diverges sharply from the Verified leaderboard, where Anthropic and OpenAI lead — reinforcing that Verified scores reflect training overlap more than capability.

**Scaffold inflation still ~10–12 pp on SWE-bench Pro.**
SEAL-standardized top (Claude Opus 4.5, 45.9%) vs. custom-agent leaderboard top (GLM-5.1, 58.4%) differ by ~12.5 pp. Consistent with prior quarter's documented gap. The delta is scaffold and harness optimization, not model capability.

---

## Sources

- [SWE-bench official leaderboard](http://www.swebench.com/) — retired 2026-02-23
- [SWE-bench Pro leaderboard — Scale AI SEAL (public)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Is SWE-bench Verified Contaminated? — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [SWE-bench Verified leaderboard — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [Open-Source AI Beats Closed-Source on SWE-bench Pro — ibl.ai](https://ibl.ai/blog/open-source-ai-swe-bench-pro-2026)
- [SWE-bench Scores and Leaderboard Explained 2026 — DEV Community](https://dev.to/rahulxsingh/swe-bench-scores-and-leaderboard-explained-2026-54of)
- [Terminal-Bench leaderboard (tbench.ai)](https://www.tbench.ai/leaderboard)
- [Terminal-Bench 2.0 leaderboard (tbench.ai)](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [Terminal-Bench GitHub (laude-institute)](https://github.com/laude-institute/terminal-bench)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [SWE-bench & LiveCodeBench leaderboard — BenchLM.ai](https://benchlm.ai/coding)
- [HumanEval leaderboard 2026 — BenchLM.ai](https://benchlm.ai/benchmarks/humaneval)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [AI Benchmarks 2026: Top Evaluations and Their Limits — Kili Technology](https://kili-technology.com/blog/ai-benchmarks-guide-the-top-evaluations-in-2026-and-why-theyre-not-enough)
- [LLM Benchmarks Compared 2026 — LXT](https://www.lxt.ai/blog/llm-benchmarks/)
- [SWE-Bench Verified leaderboard — LLM-Stats](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-Bench Pro leaderboard — LLM-Stats](https://llm-stats.com/benchmarks/swe-bench-pro)
