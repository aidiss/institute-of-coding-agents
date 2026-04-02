---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-02
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 2, 2026

The landscape is entering Q2 with SWE-bench Verified fully retired and SWE-bench Pro (SEAL) established as the primary credible coding benchmark. The self-reported/verified score gap remains the defining story: custom agent scaffolding inflates numbers by 10–12 pp over standardized runs, and the MiniMax M2.5 fraud investigation remains unresolved. Frontier models cluster tightly on contamination-resistant evals (SWE-rebench, LiveCodeBench) while still diverging widely on legacy metrics.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23**

Historical reference only. Confirmed training-data contamination across all frontier models; verbatim gold-patch reproduction documented for GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. Do not use for capability comparisons.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 76.8% (standardized) / 80.9% (self-reported) | 2026-02-17 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | ~75.6% (standardized) / 80.8% (self-reported) | 2026-02-17 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 75.8% (standardized) / 80.6% (self-reported) | 2026-02-17 |
| 4 | MiniMax M2.5 | SWE-bench Verified | ~74% (standardized) / 80.2% (self-reported) | 2026-02-12 |
| 5 | GPT-5.2 | SWE-bench Verified | 72.8% (standardized) / 80.0% (self-reported) | 2026-02-17 |
| 6 | GLM-5 (high reasoning) | SWE-bench Verified | 72.8% (standardized) / 77.8% (self-reported) | 2026-02-17 |
| 7 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (self-reported only) | — |
| 8 | Claude Sonnet 4.5 | SWE-bench Verified | 72.8% (standardized) / 77.2% (self-reported) | 2026-02-17 |
| 9 | Kimi K2.5 | SWE-bench Verified | 76.8% (self-reported only) | — |
| 10 | DeepSeek V3.2 | SWE-bench Verified | ~75% (self-reported) | 2026-02 |

*Standardized scaffold: mini-SWE-agent v2.0.0, bash-only (Epoch AI, 2026-02-17). MiniMax fraud allegations ongoing — no raw trajectories or container images released.*

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

All runs independently executed by Scale AI; GPL-licensed tasks as contamination deterrent. Confidence intervals overlap heavily for ranks 2–7 — treat ordering as approximate.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% | 2025-12-11 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% | 2025-09-19 |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% | 2025-11-26 |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.7% ±3.59% | 2025-09-19 |
| 5 | GPT-5 (High) | SWE-bench Pro | 41.8% ±3.49% | 2025-11-26 |
| 6 | GPT-5.2-Codex | SWE-bench Pro | 41.0% ±3.57% | 2026-01-27 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.5% ±3.55% | 2025-09-19 |
| 8 | Qwen3-Coder-480B-A35B | SWE-bench Pro | 38.7% ±3.55% | 2026-01-27 |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.8% ±3.55% | 2026-01-12 |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% ±3.55% | 2026-01-12 |

*Self-reported custom-agent scores (non-comparable to SEAL): GPT-5.4 57.7%, Opus 4.6 + WarpGrep v2 57.5%, GPT-5.3-Codex CLI 57.0%, GPT-5.2-Codex 56.4%, Claude Code (Opus 4.5) 55.4%. Gap from standardized scaffold to custom agent: ~10–12 pp.*

*Private codebase drop: Claude Opus 4.1 22.7% → 17.8%; GPT-5 23.1% → 14.9% on proprietary private set — consistent contamination signal across labs.*

### SWE-rebench v2 (rolling window: 2026-01 – 2026-03, 128 tasks, 46 repos)

Independently run by Nebius. Color-coded contamination risk per submission.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%) | 2026-03-20 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%) | 2026-03-20 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%) | 2026-03-20 |
| 4 | GPT-5.4 (medium) | SWE-rebench v2 | 62.8% | 2026-03-20 |
| 5 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%) | 2026-03-20 |
| 6 | DeepSeek V3.2 | SWE-rebench v2 | 60.9% (pass@5: 73.7%) | 2026-03-20 |

### Terminal-Bench 2.0 (89 real-world CLI tasks, Docker-sandboxed; tbench.ai)

Self-reported entries top the leaderboard; verified entries significantly lower. Infrastructure resource headroom can swing scores by up to 6 pp (documented by Anthropic).

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 1 | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported |
| 3 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| 4 | SageAgent (GPT-5.3-Codex) | Terminal-Bench 2.0 | 78.4% ±2.2% | 2026-03-13 | Self-reported |
| 5 | ForgeCode (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 78.4% ±1.8% | 2026-03-02 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Verified** |

*Terminal-Bench Hard (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8%, GPT-5.3-Codex 53.0% — ~24 pp below self-reported leaderboard tops.*

### LiveCodeBench v6 (contamination-resistant competitive programming; updated 2026-03-30)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | 2026-03-22 |
| 2 | Gemini 3 Flash Preview | LiveCodeBench v6 | 90.8% | 2026-03-22 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026-03-22 |
| 4 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-03-30 |
| 5 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | ~85% | 2026-03 |

*LiveCodeBench Pro Elo (hardest problems, Elo-rated): Gemini 3.1 Pro 2,887 vs. GPT-5.2 2,393 — ~500-point gap, widest spread of any major coding benchmark. Platform-run eval; built-in contamination detection flags models trained on benchmark problems.*

### HumanEval (164 Python problems — saturated, not for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-04-01 |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-04-01 |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-04-01 |
| 5 | GPT-5.4 Pro | HumanEval | ~95% | 2026-Q1 |

*All scores self-reported; 0 independent verifications across all 64+ tracked submissions. Benchmark public since 2021; frontier differentiation impossible. HumanEval+ (EvalPlus, 80× more tests): Kimi K2 Base leads at 80.3%.*

---

## New Benchmarks & Methodology

**SWE-bench Pro** (Scale AI SEAL, operational as of 2025-09; now primary standard)
1,865 tasks across Python, Go, TypeScript, JavaScript. Public split (731, GPL-licensed as contamination deterrent) + private split (276 proprietary startup codebases, consistently ~25% lower). Endorsed replacement for SWE-bench Verified.

**SWE-rebench** (Nebius, ICLR 2026)
Automated rolling pipeline generating tasks from GitHub with time-windowed decontamination. 21,000+ tasks total; current evaluation window: 2026-01-02 – 2026-03-01 (128 problems, 46 repos). Per-submission contamination labels (red/orange) are the most transparent disclosure mechanism currently available.

**SWE-bench Live** (Microsoft, NeurIPS 2025 Datasets & Benchmarks)
Updated monthly with 50 new verified issues. Multi-language version released 2026-01-10 (C, C++, C#, Python, Java, Go, JS/TS, Rust). Windows/PowerShell variant planned for August 2026.

**Terminal-Bench 2.0** (tbench.ai, ICLR 2026)
89 real-world CLI tasks covering system administration, git, CI/CD, and environment management. Docker-sandboxed programmatic evaluation. Released as official successor to original Terminal-Bench.

**FeatureBench** (LiberCoders, ICLR 2026)
200 complex feature-development tasks across 24 open-source repos; 3,825 executable environments. L1 (incremental) and L2 (from-scratch) difficulty tiers. Key finding: Claude Opus 4.5, which scores 74.4% on SWE-bench Verified, succeeds on only **11.0%** of FeatureBench tasks — exposing the gap between patch application and genuine feature development.

**APEX-Agents** (Epoch AI Capabilities Index, 2026-03)
Multi-step agentic task completion. Scores: Gemini 3.1 Pro 33.5%, Claude Opus 4.6 29.8%, GPT-5.2 23.0%, Gemini 3 Pro 18.4%.

**ARC-AGI-2** (ARC Prize Foundation)
Abstract reasoning, resistant to memorization. Independently verified scores: Gemini 3 Deep Think 84.6%, Gemini 3.1 Pro 77.1%, Claude Opus 4.6 68.8%, GPT-5.2 52.9%.

**GDPval** (OpenAI, ~2026-02)
Knowledge-work benchmark across 44 occupations in 9 U.S. GDP industries. GPT-5.4: 83% (13-pp gain over GPT-5.2 at ~70%). **Conflict-of-interest flag:** OpenAI designed and tops the benchmark; no independent replication yet.

**DevBench v2** (2026-03-07)
1,800 instances across 6 programming languages and 6 task categories, derived from real developer telemetry. Combines functional correctness, similarity metrics, and LLM-judge scoring.

---

## Notable Movements

**SWE-bench Verified retirement is holding.** No major lab has published new Verified numbers since OpenAI's retirement announcement (2026-02-23). The benchmark is effectively dead for frontier comparison. SWE-bench Pro (SEAL) is the de facto replacement, but its significantly lower absolute scores relative to self-reported Verified numbers have complicated public communication of model capability claims.

**MiniMax M2.5 fraud investigation remains unresolved.** MiniMax claimed 80.2% on Verified (2026-02-12); independent audits note that `git log --all` may have exposed gold patches. No container images or raw trajectories released. All MiniMax scores should be treated as unverified. Investigation ongoing as of 2026-04-02.

**Scaffold inflation is underappreciated and growing.** The same base model (Claude Opus 4.5) scores 45.9% on SEAL's standardized scaffold and 55.4% under Claude Code's optimized agent — a 9.5-pp lift from context retrieval, retry logic, and tool-use tuning rather than model improvement. Labs can move leaderboard positions significantly by optimizing scaffolding alone. This gap is widening as agent engineering matures.

**LiveCodeBench continues to favor Chinese labs.** Gemini 3 Pro leads outright, but DeepSeek V3.2 (3rd), ByteDance Seed 2.0 Pro (4th), and Moonshot Kimi K2.5 (5th) dominate the top 5 on contamination-resistant competitive programming. Anthropic and OpenAI models are not in the LiveCodeBench top tier — a notable shift from SWE-bench-era rankings.

**FeatureBench exposes a capability cliff.** The 74.4% → 11.0% drop from SWE-bench Verified to FeatureBench for Claude Opus 4.5 is the starkest quantification yet of the difference between reproducing known patches and writing net-new features. No model tops 13% on FeatureBench. This benchmark may become the next meaningful frontier discriminator.

**No standards, no enforcement.** A European Commission JRC report ("Can We Trust AI Benchmarks?") published in early 2026 identified misaligned incentives, construct validity failures, and structural gaming opportunities. As of April 2026: zero cross-industry contamination detection standards, no adoption thresholds, no enforcement mechanisms. The gap between self-reported leaderboard numbers and independently verified capability remains the defining methodological crisis of the moment.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/) — 2026-02-17 final update
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro private leaderboard — Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_private)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-bench Live leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 (tbench.ai)](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench Pro — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — pricepertoken.com](https://pricepertoken.com/leaderboards/benchmark/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [FeatureBench — OpenReview (ICLR 2026)](https://openreview.net/forum?id=41xrZ3uGuI)
- [Epoch AI Benchmarks (APEX-Agents, ARC-AGI-2)](https://epoch.ai/benchmarks)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
- [MiniMax M2.5 fraud controversy — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [AI coding benchmark scores skewed by infrastructure — StartupHub.ai](https://www.startuphub.ai/ai-news/artificial-intelligence/2026/ai-coding-benchmark-scores-skewed-by-infrastructure)
