---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-15
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 15, 2026

The dominant story of the past two weeks is Claude Mythos Preview, announced April 7 as part of Project Glasswing. It posts the highest published scores on SWE-bench Pro (77.8%, self-reported) and SWE-bench Verified (93.9%, self-reported) — but the model is not publicly accessible, limited to ~40 whitelisted security research organizations. Whether these scores hold under standardized evaluation remains unverified. Meanwhile, SWE-bench Verified stays retired, LiveCodeBench v6 has shuffled its top entries as Qwen3.6 Plus displaced Gemini at the top, and HumanEval remains saturated and irrelevant as a differentiator.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23**

Included for historical and trending reference only. OpenAI officially deprecated this benchmark citing confirmed training-data contamination; verbatim gold-patch reproduction documented for GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. All scores should be treated as contaminated; do not use for capability comparisons.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| — | Claude Mythos Preview | SWE-bench Verified | 93.9% | 2026-04-07 | Self-reported; model not publicly available |
| — | GPT-5.3 Codex | SWE-bench Verified | 85.0% | 2026-04 | Self-reported |
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% (self-reported) / 76.8% (standardized) | 2026-02-17 | Last standardized reading before retirement |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-17 | Self-reported only |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | 2026-02-17 | Self-reported only |
| 4 | MiniMax M2.5 | SWE-bench Verified | 80.2% | 2026-02-17 | Self-reported; audit ongoing |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | 2026-02-17 | Self-reported only |

*Standardized scaffold (mini-SWE-agent v2.0.0) scores are consistently ~4–5 pp below self-reported for every model audited. Claude Mythos' 93.9% is entirely self-reported with no independent verification and the model is unavailable for replication.*

---

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Primary active benchmark for frontier coding evaluation. March 2026 scores; April updates are pending independent verification. Confidence intervals overlap for ranks 2–6 — treat ordering with caution.

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

*SEAL April refresh expected mid-month. Until then, March standings hold as the most credible reference.*

---

### SWE-bench Pro — Custom Agent Systems (self-reported, non-comparable to SEAL)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | 2026-04-07 | Self-reported; not publicly available |
| 2 | GLM-5.1 | SWE-bench Pro | 58.4% | 2026-04 | Self-reported |
| 3 | GPT-5.4 | SWE-bench Pro | 57.7% | 2026-03 | Self-reported |
| 4 | Opus 4.6 + WarpGrep v2 (Morph) | SWE-bench Pro | 57.5% | 2026-03 | Self-reported |
| 5 | GPT-5.3-Codex CLI | SWE-bench Pro | 57.0% | 2026-03 | Self-reported |
| 6 | GPT-5.2-Codex (custom) | SWE-bench Pro | 56.4% | 2026-03 | Self-reported |
| 7 | Claude Code (Opus 4.5) | SWE-bench Pro | 55.4% | 2026-03 | Self-reported |
| 8 | Claude Opus 4.6 | SWE-bench Pro | 53.4% | 2026-03 | Self-reported |

*Claude Mythos' 77.8% is an extraordinary +20 pp leap over the next entry (GLM-5.1 at 58.4%). Without independent evaluation on a standardized scaffold — impossible given restricted access — this cannot be ranked against SEAL scores.*

---

### LiveCodeBench v6 (contamination-resistant competitive programming; updated 2026-04-09)

Top entries shifted from the March snapshot: Qwen3.6 Plus now leads, displacing Gemini 3 Pro Preview. The LCB v6 benchmark continuously adds new competitive programming problems, so rankings fluctuate as the problem pool evolves.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Qwen3.6 Plus | LiveCodeBench v6 | 87.1% | 2026-04-09 |
| 2 | Kimi K2.5 | LiveCodeBench v6 | 85.6% | 2026-04-09 |
| 3 | Claude Opus 4.5 | LiveCodeBench v6 | 84.8% | 2026-04-09 |
| 4 | Qwen3.5 | LiveCodeBench v6 | 83.6% | 2026-02 |
| 5 | Claude Opus 4.6 | LiveCodeBench v6 | 76.0% | 2026-03 |

*March snapshot (before April refresh) had Gemini 3 Pro Preview at 91.7% and DeepSeek V3.2 Speciale at 89.6% — the drop suggests LCB v6's problem window rolled forward, reducing scores across the board as fresher post-training-cutoff problems entered the pool.*

---

### Terminal-Bench 2.0 (89 realistic terminal tasks, Docker-sandboxed)

No new entries since March. Verified results remain the authoritative reference.

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| 2 | Claude Opus 4.6 | Terminal-Bench 2.0 | 65.4% ±2.9% | 2026-03 | **Verified** |
| — | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported only |
| — | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported only |
| — | GPT-5.4 (Onyx AI) | Terminal-Bench 2.0 | 75.1% | 2026-03 | Self-reported |

*Infrastructure resource allocation can swing scores up to 6 pp (Anthropic audit finding). Self-reported entries have not been reproduced under fixed resource constraints.*

---

### HumanEval (saturated — not recommended for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-03 |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-03 |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-03 |
| 5 | GPT-5.4 Pro | HumanEval | ~95% | 2026-Q1 |

*All scores self-reported. Benchmark has been public since 2021 and frontier differentiation is impossible. HumanEval+ (EvalPlus, 80× more tests) provides more signal: Kimi K2 Base leads at 80.3%.*

---

## New Benchmarks & Methodology

**Claude Mythos Preview / Project Glasswing** (Anthropic, announced 2026-04-07)
Not a benchmark, but the most significant benchmark-adjacent event of the week. Anthropic disclosed that Claude Mythos Preview achieved 93.9% on SWE-bench Verified and 77.8% on SWE-bench Pro, plus findings of thousands of zero-day vulnerabilities across major OS and browser codebases. The model is not publicly released — access is gated to ~40 security research organizations via Project Glasswing. Because independent replication is impossible, these figures are treated as **unverified self-reported** throughout this report.

**Cursor Composer 2 / CursorBench** (April 2026)
IDE-native agent benchmark. Cursor Composer 2 scores 61.3 on CursorBench (a 37% improvement over Composer 1.5) and 73.7 on SWE-bench Multilingual. Self-reported; CursorBench is proprietary and not independently verifiable.

**SWE-bench Multilingual** (emerging, April 2026)
Several labs have begun reporting on a multilingual extension of SWE-bench covering repositories in Go, Rust, TypeScript, and Java. Cursor Composer 2's 73.7% appears to be a self-reported early entry. No independent evaluation framework established yet.

**FeatureBench** (LiberCoders / ICLR 2026 — active)
200 tasks across 24 repos testing feature development, not patch application. Remains the starkest illustration of the gap between SWE-bench-style tasks and real engineering work: Claude Opus 4.5 scores 11.0% despite 80.9% on SWE-bench Verified.

---

## Notable Movements

**Claude Mythos Preview posts extraordinary unverifiable scores.**
Announced April 7 alongside Project Glasswing, Anthropic's cross-industry security initiative. The 77.8% SWE-bench Pro figure is ~20 pp above any other self-reported custom-agent entry and ~32 pp above the highest SEAL-standardized score (Claude Opus 4.5 at 45.9%). The model is inaccessible to third parties, making replication impossible. Until Scale AI or another independent evaluator can run a standardized assessment, these numbers cannot be ranked alongside other entries. **Treat as unverified.**

**Qwen3.6 Plus displaces Gemini at the top of LiveCodeBench v6.**
The April 9 snapshot shows Qwen3.6 Plus at 87.1%, with March's leader Gemini 3 Pro Preview (91.7%) no longer appearing in the current top entries. The most likely explanation is a rolling-window refresh: as LCB v6 adds post-training-cutoff problems, models that previously benefited from near-contamination boundaries see score regression. Alibaba/Qwen now occupies the LiveCodeBench summit, continuing the trend of Chinese-lab dominance in competitive programming evaluation.

**SWE-bench Verified contamination persists above the headline.**
Even with the benchmark retired, self-reported scores on Verified continue to be cited. Cursor Composer 2 cites a Verified score; Mythos' 93.9% is on Verified. The contamination that caused retirement has not been addressed — these scores are even less reliable for recently released models trained after the February retirement announcement.

**Scaffold gap unchanged at 10–12 pp on SWE-bench Pro.**
The SEAL standardized top (45.9%) vs. custom-agent self-reported top (55.4% excluding Mythos) continues to demonstrate that a significant fraction of published scores reflect scaffolding engineering, not model capability. GPT-5.4 at 57.7% self-reported vs. ~41% standardized is the clearest documented example.

**Public-to-private degradation remains a reliable contamination signal.**
No new data this week, but the March finding stands: consistent ~25% performance drops from public to proprietary SWE-bench Pro sets across all major labs confirm that public-set performance is partially contaminated. Any lab that has not published private-set scores should have their public-set claims discounted accordingly.

**MiniMax audit still unresolved.**
As of April 15, no update. MiniMax's SWE-bench Verified scores remain flagged as unverified pending methodology review.

---

## Sources

- [Anthropic — Claude Mythos Preview announcement / Project Glasswing (InfoQ)](https://www.infoq.com/news/2026/04/anthropic-claude-mythos/)
- [Claude Mythos Preview benchmarks — LLM-Stats](https://llm-stats.com/blog/research/claude-mythos-preview-launch)
- [Claude Mythos — OfficeChai coverage (SWE-bench Pro 77.8%)](https://officechai.com/ai/claude-mythos-preview-benchmarks-swe-bench-pro/)
- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro — LLM-Stats](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-Bench Pro analysis: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench v6 — BenchLM.ai (April 9, 2026)](https://benchlm.ai/benchmarks/liveCodeBenchV6)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [Terminal-Bench 2.0 — tbench.ai](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [HumanEval — BenchLM.ai](https://benchlm.ai/benchmarks/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-bench Scores explained (2026) — DEV Community](https://dev.to/rahulxsingh/swe-bench-scores-and-leaderboard-explained-2026-54of)
- [Best AI for Coding 2026 — LLM-Stats](https://llm-stats.com/leaderboards/best-ai-for-coding)
- [SWE-bench & LiveCodeBench — BenchLM.ai](https://benchlm.ai/coding)
- [AI Model Benchmarks April 2026 — LM Council](https://lmcouncil.ai/benchmarks)
