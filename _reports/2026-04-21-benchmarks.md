---
title: "Benchmarks, April 21, 2026"
date: 2026-04-21
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Stable — no new top-10 scores since Claude Opus 4.7 SEAL confirmation; ARC-AGI-3 harness dispute unresolved; MIT Tech Review publishes 'AI benchmarks are broken' feature"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-21

No new top-10 entries posted in the 24 hours since Claude Opus 4.7's SEAL-confirmed SWE-bench Pro score (64.3%) landed on April 20. The leaderboard is unchanged. The day's notable items are methodological: MIT Technology Review published a feature-length critique of benchmark reliability, the ARC-AGI-3 harness dispute remains unresolved, and HumanEval's saturation has prompted renewed discussion of what, if anything, can replace it as a signal for basic code generation.

## Leaderboard

### SWE-bench Verified (self-reported — benchmark widely considered contaminated)

> Note: OpenAI retired this benchmark in February 2026 citing contamination and 59.4% flawed tasks. Scores below are self-reported and should be read with that caveat.

| Rank | Agent / Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% | Apr 7, 2026 (self-reported) |
| 2 | Claude Opus 4.7 | SWE-bench Verified | 87.6% | Apr 16, 2026 (self-reported) |
| 3 | GPT-5.3 Codex | SWE-bench Verified | 85.0% | Apr 2026 (self-reported) |
| 4 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 5 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 6 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 7 | MiniMax M2.5 (229B) | SWE-bench Verified | 80.2% | Feb 2026 |
| 8 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 9 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 10 | Qwen3.6 Plus | SWE-bench Verified | 78.8% | Apr 2026 (self-reported) |

No new Verified submissions today. The top of the table continues to be dominated by self-reported, unverified claims. The spread between ranks 4–10 (80.9% to 78.8%) is within the contamination noise floor; these positions should not be read as meaningful capability differentiation.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | Apr 2026 (self-reported; SEAL confirmation pending) |
| 2 | Claude Opus 4.7 | SWE-bench Pro (SEAL) | 64.3% | Apr 20, 2026 |
| 3 | GPT-5.4 (xHigh) | SWE-bench Pro (SEAL) | 59.1% ± 3.6% | Apr 2026 (self-reported) |
| 4 | Muse Spark | SWE-bench Pro (SEAL) | 55.0% ± 3.6% | Apr 2026 (independently verified) |
| 5 | Claude Opus 4.6 (thinking) | SWE-bench Pro (SEAL) | 51.9% ± 3.6% | Apr 2026 |
| 6 | Gemini 3.1 Pro (thinking) | SWE-bench Pro (SEAL) | 46.1% ± 3.6% | Apr 2026 |
| 7 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ± 3.6% | 2026 |
| 8 | Claude Sonnet 4.5 | SWE-bench Pro (SEAL) | 43.6% ± 3.6% | Apr 2026 |
| 9 | Gemini 3 Pro Preview | SWE-bench Pro (SEAL) | 43.3% ± 3.6% | Apr 2026 |
| 10 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% ± 3.5% | 2026 |

Leaderboard unchanged from April 20. Claude Opus 4.7 at 64.3% (SEAL-confirmed) is the most recent credible data point. Claude Mythos Preview's 77.8% claim remains the headline but has not been run on SEAL's standardized scaffold. The ±3.6% uncertainty margin means ranks 3 through 6 are statistically indistinguishable.

### Terminal-Bench 2.0

| Rank | Model / Agent | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Mythos Preview (extended) | Terminal-Bench 2.1 | 92.1% | Apr 16, 2026 (self-reported; extended timeouts, different version) |
| 2 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% | Apr 7, 2026 (self-reported) |
| 3 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% | Apr 2026 (self-reported) |
| 4 | GPT-5.4 | Terminal-Bench 2.0 | 75.1% | Apr 2026 (self-reported) |
| 5 | Claude Opus 4.7 | Terminal-Bench 2.0 | 68.5% | Apr 2026 (self-reported) |
| 6 | Gemini 3.1 Pro Preview | Terminal-Bench 2.0 | 67.4% | Mar/Apr 2026 (self-reported) |
| 7 | Claude Opus 4.6 | Terminal-Bench 2.0 | 65.4% | Apr 2026 (self-reported) |
| 8 | Muse Spark | Terminal-Bench 2.0 | 59.6% | Apr 2026 (self-reported) |
| 9 | Claude Sonnet 4.6 | Terminal-Bench 2.0 | 59.6% | Apr 2026 (self-reported) |

Rank 1's 92.1% uses Terminal-Bench 2.1 (not 2.0) with extended timeouts — not comparable to the rest of the table. GPT-5.4 continues to lead Claude Opus 4.7 on Terminal-Bench (75.1% vs. 68.5%) despite the opposite ordering on SWE-bench Pro, reinforcing the benchmark-profile divergence across labs.

### LiveCodeBench (v6, contamination-controlled)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | Apr 14, 2026 |
| 2 | Gemini 3 Flash Preview | LiveCodeBench v6 | 90.8% | Apr 14, 2026 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | Apr 14, 2026 |
| 4 | GLM-4.7 | LiveCodeBench v6 | ~84.9% | 2026 |
| 5 | Qwen3.5-plus | LiveCodeBench v6 | ~83.6% | Feb 2026 |
| — | Claude Opus 4.6 | LiveCodeBench v6 | ~76.0% | 2026 |

LiveCodeBench (continuous fresh problems from competitive programming platforms) remains the most contamination-resistant mainstream signal. Gemini's dominance here vs. Anthropic's dominance on SWE-bench Pro continues to illustrate that no single benchmark captures all coding ability.

### HumanEval (saturated — reference only)

| Model | Score | Date | Note |
|-------|-------|------|------|
| Kimi K2.5 (Reasoning) | 99.0% | Mar 2026 | Self-reported |
| Claude Sonnet 4.5 | 97.6% | Apr 2026 | Self-reported |
| DeepSeek R1 | 97.4% | 2026 | Self-reported |
| Grok 4 | 97.0% | 2026 | Self-reported |

HumanEval (164 hand-crafted problems) is effectively saturated — all frontier models score 95%+. EvalPlus, which extends HumanEval with 80× more test cases per problem, and HumanEval Pro (self-invoking code generation) both produce meaningful differentiation: frontier models drop 20+ points on HumanEval Pro. Included for historical continuity only.

---

## New Benchmarks & Methodology

### MIT Technology Review: "AI benchmarks are broken" (March 31, 2026)

A feature-length critique arguing that modern benchmarks function more like academic contests than real-world stress tests. Core claims: models that perform well often overfit to narrow question distributions and do not generalise to operational settings; misaligned lab incentives mean every lab reports on benchmarks where they lead; and there are no industry standards for contamination detection, no quantified adoption rates, and no enforcement mechanisms. The piece recommends a shift toward longitudinal, task-specific evaluations commissioned by independent bodies rather than by the labs themselves.

### EvalPlus / HumanEval Pro

EvalPlus extends HumanEval with 80× more test cases per problem, exposing models that pass the original set via pattern matching. HumanEval Pro tests self-invoking code generation — problems where the model must call its own functions as sub-routines. Top frontier models drop 20+ points relative to standard HumanEval. Neither is yet in wide use as a primary leaderboard signal, but both are gaining traction as Verified becomes less credible.

### GDPval (OpenAI-led, in development)

A new benchmark spanning 44 knowledge work occupations selected from the top 9 industries. Not yet a public leaderboard. Notable for explicitly scoping beyond code generation toward general knowledge work, which positions it differently from the current SWE-bench / LiveCodeBench ecosystem.

### SWE-rebench (ongoing)

The decontaminated SWE-bench fork from April 2026 has not yet undergone independent methodological review. Its primary claim — exposing score inflation in Chinese-origin model submissions — remains contested. "Decontaminated" is a claim, not a guarantee; watch for third-party reproduction.

---

## Notable Movements

### No new top-10 entries in 24 hours

The SWE-bench Pro and Terminal-Bench leaderboards are unchanged from April 20. The pace of new lab submissions has slowed after Claude Opus 4.7's SEAL confirmation — likely reflecting evaluation queue time rather than a quiet day in development.

### ARC-AGI-3 harness dispute unresolved

The Duke-affiliated team's 97.1% result for Claude Opus 4.6 on ARC-AGI-3 TR87 (using a human-readable visual encoding rather than raw JSON) has not been replicated on the standard protocol. ARC's official leaderboard still shows sub-50% results under standard conditions. No independent reproduction of the Duke result has been published. The episode remains the clearest recent illustration of how harness choice can dominate model capability in agent benchmarks.

### Benchmark divergence across labs is now a structural fact

The pattern reported over the past two weeks has hardened into a structural observation: Gemini models lead LiveCodeBench (competitive programming), GPT-5.4 leads Terminal-Bench (sysadmin/scripting), and Anthropic models lead SWE-bench Pro (repository-level debugging). These are not equivalent tasks. Any claim of overall coding leadership depends entirely on which benchmark is cited — and labs continue to cite the ones where they lead. Analysts and practitioners should specify which benchmark they mean when comparing models.

### SWE-bench Verified retirement now consensus

OpenAI's February retirement, LessLeak-Bench's 10.6% leakage finding, and GPT-5.2's verbatim gold-patch reproduction from task snippets have collectively made the benchmark untenable for frontier evaluation. The community has reached something close to consensus: Verified scores above ~80% should be treated as evidence of contamination exposure, not raw capability. Self-reported scores in the 85%–94% range carry essentially no signal beyond marketing.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Pro leaderboard — llm-stats](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-bench Verified leaderboard — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Verified leaderboard — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-bench Verified leaderboard — Marco Patzelt](https://www.marc0.dev/en/leaderboard)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [Terminal-Bench leaderboard](https://www.tbench.ai/leaderboard)
- [LiveCodeBench GitHub](https://github.com/LiveCodeBench/LiveCodeBench)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [LLM Benchmarks 2026 — LXT](https://www.lxt.ai/blog/llm-benchmarks/)
- [AI Benchmarks 2026 limits — Kili Technology](https://kili-technology.com/blog/ai-benchmarks-guide-the-top-evaluations-in-2026-and-why-theyre-not-enough)
- [Benchmark gaming — MindStudio](https://www.mindstudio.ai/blog/benchmark-gaming-ai-inflated-scores-explained)
- [Claude Opus 4.6 benchmark gaming — MindStudio](https://www.mindstudio.ai/blog/ai-benchmark-gaming-claude-opus-specification-failure)
- [AI benchmarks are broken — MIT Technology Review](https://www.technologyreview.com/2026/03/31/1134833/ai-benchmarks-are-broken-heres-what-we-need-instead/)
- [Can We Trust AI Benchmarks? — arXiv](https://arxiv.org/html/2502.06559v2)
- [AI Benchmarks Are a Game Now — UC Strategies](https://ucstrategies.com/news/ai-benchmarks-are-a-game-now-and-the-industry-is-cheating-to-win/)
