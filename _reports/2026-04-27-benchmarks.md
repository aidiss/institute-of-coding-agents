---
title: "Benchmarks, April 27, 2026"
date: 2026-04-27
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Active — SWE-bench Pro consolidating as standard; GDPval emerges as expert-graded alternative; frontier scores compressing"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-27

The benchmark landscape has shifted into a post-Verified era: SWE-bench Pro is now the de facto industry standard, LiveCodeBench remains the most contamination-resistant option for competitive programming, and OpenAI's newly released GDPval benchmark represents an attempt to measure economically valuable task performance with expert grading. Frontier scores on legacy benchmarks are compressing near saturation.

## Leaderboard

### SWE-bench Verified (retired by OpenAI Feb 2026 — shown for reference only; contaminated)

| Rank | Agent / Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 (229B) | SWE-bench Verified | 80.2% | Feb 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 7 | GLM-5 | SWE-bench Verified | ~79% | Feb 2026 |
| 8 | Kimi K2.5 | SWE-bench Verified | ~79% | Feb 2026 |
| 9 | DeepSeek V3.2 | SWE-bench Verified | ~79% | Feb 2026 |
| — | Sonar Foundation Agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% | Feb 19, 2026 (self-reported) |

**Note:** OpenAI confirmed every frontier model could reproduce verbatim gold patches. 59.4% of the hardest unsolved tasks had flawed test designs. No further official updates since Feb 2026 freeze.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% | 2026 |
| 2 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% | 2026 |
| 3 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% | 2026 |
| — | GPT-5.3-Codex | SWE-bench Pro (self-reported) | ~57% | 2026 (self-reported) |
| — | Opus 4.6 + WarpGrep v2 | SWE-bench Pro (Morph internal) | ~57.5% | 2026 (self-reported) |

**Note:** Self-reported scores use custom scaffolding and cannot be directly compared to SEAL standardized runs. The 10–15 point gap between self-reported and SEAL scores is now widely attributed to harness optimization rather than model capability. Private-subset scores drop a further 5–8 points across all models.

### SWE-rebench (Nebius AI — contamination-controlled, rolling)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench | #1 (exact % not disclosed) | Jan 2026 |
| — | Gemini 3 Flash Preview | SWE-rebench | 57.6% (Pass@1) | Jan 2026 |
| — | Gemini 3 Pro Preview | SWE-rebench | 56.5% (Pass@1) | Jan 2026 |
| — | Kimi K2 Thinking | SWE-rebench | 43.8% (Pass@1) | Jan 2026 |
| — | Kimi K2.5 | SWE-rebench | 37.9% (Pass@1) | Jan 2026 |
| — | GLM-4.7 | SWE-rebench | best open-source overall | Jan 2026 |

**Note:** No April refresh published as of report date. Jan 2026 data is latest available.

### Terminal-Bench 2.0

| Rank | Model / Agent | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Gemini 3.1 Pro | Terminal-Bench 2.0 | 78.4% | Mar 2026 |
| 2 | Codex CLI (GPT-5) | Terminal-Bench 2.0 | 77.3% | Mar 2026 |
| 3 | Claude Opus 4.6 | Terminal-Bench 2.0 | 74.7% | Mar 2026 |
| 4 | Droid + Opus 4.6 | Terminal-Bench 2.0 | 69.9% | Mar 2026 |
| 5 | Claude Code | Terminal-Bench 2.0 | 58.0% | Mar 2026 |
| — | GPT-5.4 (xhigh) | Terminal-Bench Hard | 57.6% | Mar 2026 |
| — | Gemini 3.1 Pro Preview | Terminal-Bench Hard | 53.8% | Mar 2026 |

**Note:** Scores are reported per model-agent pair; scaffold choice accounts for ~12-point spread on the same model. No April leaderboard refresh published as of report date.

### LiveCodeBench (v6, contamination-controlled)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview (high) | LiveCodeBench v6 | 91.7% | 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | LiveCodeBench v6 | 90.8% | 2026 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026 |
| — | Kimi K2.5 | LiveCodeBench v6 | 85.0% | 2026 |
| — | GLM-4.7 | LiveCodeBench v6 | 84.9% | 2026 |
| — | Qwen3.5-plus | LiveCodeBench v6 | 83.6% | Feb 2026 |

**Note:** 218 models now evaluated. Monthly problem injection prevents contamination by design. Most reliable ranking for competitive programming capability.

### HumanEval (saturated — reference only)

| Model | HumanEval | Note |
|-------|-----------|------|
| Kimi K2.5 | 99.0% | Near-ceiling |
| Claude Sonnet 4.5 | 97.6% | — |
| R1 | 97.4% | — |
| Grok 4 | 97.0% | — |
| o3 | 97.0% | — |
| Claude Opus 4.6 | 96.0% | — |

**Note:** Benchmark is saturated for frontier models. Retained here for reference only; no longer used for head-to-head comparison.

---

## New Benchmarks & Methodology

### GDPval (OpenAI, Apr 2026)
Evaluates AI on economically valuable professional tasks across 44 occupations. Tasks authored by domain experts (avg 14+ years experience) and graded by expert peers using blind review. Frontier models reportedly approaching human expert quality on some occupations, performing ~100× faster at a fraction of cost. Designed as a corrective to benchmark gaming: tasks are privately held and graded holistically rather than against automated test suites. Self-reported by OpenAI; independent replication not yet available. Source: [openai.com/index/gdpval](https://openai.com/index/gdpval/).

### MLPerf Inference v6.0 (Apr 1, 2026)
Added new tests for text-to-video generation, GPT-OSS 120B, vision-language models, and YOLOv11. Primarily relevant to hardware/inference benchmarking rather than agent coding capability — included for completeness.

### LiveCodeBench Pro (in progress)
Extension of LiveCodeBench adding Olympiad-expert annotations, Elo-calibrated difficulty levels, and per-line failure audits. Targets comparison with elite competitive programmers. No public leaderboard published as of April 2026.

---

## Notable Movements

### SWE-bench Pro gap widens the contamination story
The persistent spread between SWE-bench Verified (~80%) and SWE-bench Pro SEAL (~46%) for the same model (Claude Opus 4.5) remains the headline story. Labs reporting self-scored Pro results with custom scaffolding show ~57%, splitting the difference — but these are not comparable to standardized SEAL runs. The gap is now widely treated as the canonical evidence that Verified was gaming-contaminated rather than a true capability measure.

### GDPval signals a shift toward expert-graded evaluation
OpenAI's April 2026 GDPval release represents a methodological turn: moving from test-case pass/fail automation (gameable) toward expert human grading (expensive but harder to game). The approach mirrors earlier concerns from the METR "doubling time" critique — that automated benchmarks measure benchmark performance, not genuine capability. GDPval results are self-reported and resource-intensive; independent replication will be the key test of validity.

### Gemini leads contamination-resistant benchmarks
On both LiveCodeBench v6 and SWE-rebench, Gemini 3 models occupy the top positions — notable because these benchmarks are specifically designed to minimize training data overlap. Gemini 3 Flash slightly outperforming Gemini 3 Pro on Pass@1 (SWE-rebench) continues to hold, suggesting efficiency improvements over raw scale.

### Scaffold variance remains underreported
The ~12-point spread between Droid+Opus 4.6 and Claude Code running Opus 4.6 on Terminal-Bench 2.0 (69.9% vs. 58.0%) is rarely surfaced in press coverage. Most benchmark claims in lab announcements omit the scaffold; comparisons across announcements are therefore unreliable without knowing the harness.

### Open-source continues closing the gap
MiniMax M2.5, GLM-5, DeepSeek V3.2, and Kimi K2.5 all rank in SWE-bench Verified's top 10 and LiveCodeBench's top 6. The frontier gap has narrowed to the point where Chinese open-source labs are matching closed-model labs on contamination-aware benchmarks.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-Bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [Terminal-Bench 2.0 Leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench GitHub](https://github.com/LiveCodeBench/LiveCodeBench)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
- [OpenAI drops SWE-bench Verified — Decrypt](https://decrypt.co/359012/openai-benchmark-measure-ai-coding-supremacy-contaminated)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [BenchLM.ai leaderboard hub](https://benchlm.ai)
