---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-03
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 3, 2026

SWE-bench Verified remains effectively retired; SWE-bench Pro (SEAL) holds as the primary credible standard. The headline today is a fresh Qwen3.6 Plus submission (2026-04-02) cracking the SWE-bench Verified top 10, and Seed 2.0 Pro leading the LiveCodeBench v6 competitive programming tier. The MiniMax M2.5 fraud investigation remains unresolved with no raw trajectories released. The scaffold inflation gap continues to widen — 9–12 pp between standardized and custom-harness runs on the same base model.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23**

Historical reference only. Confirmed training-data contamination across all frontier models; verbatim gold-patch reproduction documented for GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. 77 entries on the official leaderboard; 0 independently verified. Do not use for capability comparisons.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 76.8% (standardized) / 80.9% (self-reported) | 2025-11-24 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | ~75.6% (standardized) / 80.8% (self-reported) | 2026-02-05 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 75.8% (standardized) / 80.6% (self-reported) | 2026-02-19 |
| 4 | MiniMax M2.5 | SWE-bench Verified | 80.2% (self-reported — **unverified, audit ongoing**) | 2026-02-12 |
| 5 | GPT-5.2 | SWE-bench Verified | 72.8% (standardized) / 80.0% (self-reported) | 2025-12-11 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (self-reported only) | 2026-02-17 |
| 7 | Qwen3.6 Plus | SWE-bench Verified | 78.8% (self-reported) | **2026-04-02** |
| 8 | Gemini 3 Flash | SWE-bench Verified | 78.0% (self-reported) | 2025-12-17 |
| 8 | MiMo-V2-Pro | SWE-bench Verified | 78.0% (self-reported) | 2026-03-18 |
| 10 | GLM-5 | SWE-bench Verified | 77.8% (self-reported) | 2026-02-11 |

*Standardized scaffold: mini-SWE-agent v2.0.0 (Epoch AI). MiniMax fraud allegations ongoing — no raw trajectories or container images released. xAI self-reports Grok 4 at 72–75%; vals.ai independent testing shows 58.6% (13–16 pp gap).*

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

All runs independently executed by Scale AI with standardized SWE-agent scaffold; 250-turn limit. Confidence intervals overlap heavily for ranks 2–7 — treat ordering as approximate.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% | 2025-12-11 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% | 2025-09-19 |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% | 2025-11-26 |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.7% ±3.59% | 2025-09-19 |
| 5 | GPT-5 (High) | SWE-bench Pro | 41.8% ±3.49% | 2025-11-26 |
| 6 | GPT-5.2 Codex | SWE-bench Pro | 41.0% ±3.57% | 2026-01-27 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.5% ±3.55% | 2025-09-19 |
| 8 | Qwen3-Coder-480B-A35B | SWE-bench Pro | 38.7% ±3.55% | 2026-01-27 |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.8% ±3.55% | 2026-01-12 |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% ±3.55% | 2026-01-12 |

*Self-reported custom-agent scores (non-comparable to SEAL): GPT-5.3-Codex CLI 57.0%, Claude Code (Opus 4.5) 55.4%, Auggie (Opus 4.5) 51.8%, Cursor (Opus 4.5) 50.2%. Standardized-to-custom gap: ~9–12 pp.*

*Private codebase penalty: Claude Opus 4.1 22.7% → 17.8%; GPT-5 23.1% → 14.9% on the proprietary private split — consistent contamination signal across all labs.*

### SWE-rebench v2 (rolling window: 2026-01 – 2026-03, 128 tasks, 46 repos)

Independently run by Nebius; per-submission contamination labels. Context-window capped (128K), no step cap.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%, cost: $1.12/problem) | 2026-03-20 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%, cost: $0.62) | 2026-03-20 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%, cost: $0.76) | 2026-03-20 |
| 4 | GPT-5.4 (medium) | SWE-rebench v2 | 62.8% (pass@5: 70.2%, cost: $0.63) | 2026-03-20 |
| 5 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%, cost: $0.66) | 2026-03-20 |
| 6 | DeepSeek V3.2 | SWE-rebench v2 | 60.9% (pass@5: 73.7%, cost: $0.75) | 2026-03-20 |
| 7 | Claude Sonnet 4.6 | SWE-rebench v2 | 60.7% (pass@5: 70.2%, cost: $1.02) | 2026-03-20 |
| 8 | Claude Sonnet 4.5 | SWE-rebench v2 | 60.0% (pass@5: 69.6%, cost: $1.18) | 2026-03-20 |
| 9 | Qwen3.5-397B-A17B | SWE-rebench v2 | 59.9% (pass@5: 71.9%, cost: $1.18) | 2026-03-20 |
| 10 | Step-3.5-Flash | SWE-rebench v2 | 59.6% (pass@5: 71.9%, cost: $0.14) | 2026-03-20 |

### Terminal-Bench 2.0 (89 real-world CLI tasks, Docker-sandboxed; tbench.ai)

Top custom-scaffold entries remain unverified. Verified entries show a ~23 pp gap below leaderboard tops. Infrastructure resource headroom can swing scores by up to 6 pp (documented by Anthropic).

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported |
| 1 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 3 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| 4 | SageAgent (GPT-5.3-Codex) | Terminal-Bench 2.0 | 78.4% ±2.2% | 2026-03-13 | Self-reported |
| 5 | ForgeCode (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 78.4% ±1.8% | 2026-03-02 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Verified** |

*Terminal-Bench Hard (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8%, GPT-5.3-Codex 53.0% — ~24 pp below self-reported tops.*

### LiveCodeBench v6 (contamination-resistant competitive programming; 1,055 problems; rolling updates)

| Rank | Agent | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-04-02 |
| 2 | Qwen3.6 Plus (Alibaba) | LiveCodeBench v6 | 87.1% | ~2026-04 |
| 3 | Step-3.5-Flash (StepFun) | LiveCodeBench v6 | 86.4% | ~2026-04 |
| 4 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | 85.0% | ~2026-04 |
| 5 | GLM-4.7 (Zhipu AI) | LiveCodeBench v6 | 84.9% | ~2026-04 |
| 6 | Qwen3.5-397B-A17B (Alibaba) | LiveCodeBench v6 | 83.6% | ~2026-04 |
| 7 | Kimi K2-Thinking-0905 (Moonshot AI) | LiveCodeBench v6 | 83.1% | 2025-09 |
| 8 | GLM-4.6 (Zhipu AI) | LiveCodeBench v6 | 82.8% | ~late 2025 |
| 9 | GPT OSS 120B High (OpenAI) | LiveCodeBench v6 | 81.9% | ~2026-04 |
| 10 | Seed 2.0 Lite (ByteDance) | LiveCodeBench v6 | 81.7% | ~2026-04 |

*Average across 41 evaluated models: 67.1%. All scores self-reported. LiveCodeBench Pro Elo (hardest problems): Gemini 3.1 Pro 2,887 vs. GPT-5.2 2,393 — ~500-point gap, widest spread of any major coding benchmark.*

### HumanEval (164 Python problems — saturated, not for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-04-01 |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-04-01 |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-04-01 |
| 5 | GPT-5.4 Pro | HumanEval | ~95.0% | 2026-Q1 |

*Average across 74+ tracked models: 89.6%. All scores self-reported. Benchmark public since 2021; effectively saturated — no frontier differentiation. HumanEval+ (EvalPlus, 80× more tests): Kimi K2 Base leads at 80.3%.*

---

## New Benchmarks & Methodology

**SWE-bench Pro** (Scale AI SEAL)
1,865 tasks across Python, Go, TypeScript, JavaScript; public (731 tasks, GPL-licensed) + private (276 proprietary startup codebases). Endorsed successor to SWE-bench Verified. Private split shows a consistent ~25% accuracy penalty across all labs — the strongest available signal for actual generalization vs. memorization.

**SWE-rebench v2** (Nebius, ICLR 2026)
Rolling pipeline auto-generating tasks from GitHub PRs with time-windowed decontamination. 21,000+ tasks generated; current eval window 128 problems across 46 repos. Per-submission contamination colour-coding (red = flagged) is the most transparent disclosure mechanism currently available.

**SWE-bench Live** (Microsoft, NeurIPS 2025)
Updated monthly with 50 new verified issues. Multi-language release 2026-01-10 (C, C++, C#, Python, Java, Go, JS/TS, Rust). Windows/PowerShell variant planned for August 2026.

**Terminal-Bench 2.0** (tbench.ai, ICLR 2026)
89 real-world CLI tasks across sysadmin, git, CI/CD, ML, security, and data science. Docker-sandboxed programmatic evaluation. Terminal-Bench 3 announced; scope not yet disclosed.

**FeatureBench** (LiberCoders, ICLR 2026)
200 complex feature-development tasks across 24 open-source repos; 3,825 executable environments. L1 (incremental) and L2 (from-scratch) difficulty tiers. Key finding: Claude Opus 4.5 scores 74.4% on SWE-bench Verified but only **11.0%** on FeatureBench. No model exceeds 13%. Likely candidate to become the next meaningful frontier discriminator.

**APEX-Agents** (Epoch AI Capabilities Index, 2026-03)
Multi-step agentic task completion, independently evaluated. Gemini 3.1 Pro 33.5%, Claude Opus 4.6 29.8%, GPT-5.2 23.0%, Gemini 3 Pro 18.4%.

**ARC-AGI-2** (ARC Prize Foundation)
Abstract reasoning; resistant to memorization. Independently verified: Gemini 3 Deep Think 84.6%, Gemini 3.1 Pro 77.1%, Claude Opus 4.6 68.8%, GPT-5.2 52.9%.

**SWE-bench++** (arXiv 2512.17419, Dec 2025)
Automated multilingual framework generating benchmarks from GitHub PRs; state-differential oracle to distinguish bug fixes from feature requests. v1 released; adoption tracking underway.

**GDPval** (OpenAI, ~2026-02)
Knowledge-work benchmark across 44 occupations in 9 U.S. GDP industries. GPT-5.4: 83% (13 pp gain over GPT-5.2). **Conflict-of-interest flag:** designed and topped by OpenAI; no independent replication published.

---

## Notable Movements

**Qwen3.6 Plus enters the SWE-bench Verified top 10 (2026-04-02).** A fresh self-reported submission at 78.8% places Qwen3.6 Plus 7th on the now-retired leaderboard. Given contamination concerns and the absence of independent verification, this should be treated as a marketing claim rather than a capability measurement.

**LiveCodeBench v6 now dominated by Chinese labs.** Seed 2.0 Pro (ByteDance, 87.8%) leads ahead of Qwen3.6 Plus (Alibaba, 87.1%) and Step-3.5-Flash (StepFun, 86.4%). The top 8 slots are all Chinese models. Neither Anthropic nor OpenAI appears in the top 10 on this contamination-resistant eval — a significant inversion of the SWE-bench Verified narrative.

**SWE-bench Verified retirement is holding.** No major lab has submitted new Verified numbers since OpenAI's 2026-02-23 retirement. The benchmark is dead for frontier comparison. The score gap it leaves behind — models that claimed ~80% on Verified are scoring ~46% on the SEAL standardized scaffold — has complicated public messaging for all major labs.

**MiniMax M2.5 fraud investigation: day 51, no resolution.** The independent audit into MiniMax's 80.2% Verified claim (2026-02-12) remains open. No container images, raw trajectories, or evaluation logs have been released. All MiniMax entries should continue to be treated as unverified pending disclosure.

**Scaffold inflation gap is widening.** The identical Opus 4.5 base model scores 45.9% (SEAL standardized), 50.2% (Cursor), 51.8% (Auggie), and 55.4% (Claude Code) on SWE-bench Pro. An ~10 pp performance swing attributable entirely to scaffolding, not model capability. As agent engineering matures, this gap will likely increase — making cross-agent comparisons on non-standardized leaderboards increasingly meaningless.

**No industry standards for contamination detection.** As of April 3, 2026, there are zero cross-lab contamination detection standards, no adoption thresholds, and no enforcement mechanisms. The SWE-rebench contamination labels remain the most transparent mechanism available. A European Commission JRC report ("Can We Trust AI Benchmarks?") identified structural gaming incentives; no regulatory response has followed.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/) — retired 2026-02-23
- [SWE-bench Pro leaderboard — Scale AI SEAL (public)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro leaderboard — Scale AI SEAL (private)](https://labs.scale.com/leaderboard/swe_bench_pro_private)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-bench Live leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 (tbench.ai)](https://www.tbench.ai/)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench v6 — llm-stats.com](https://llm-stats.com/benchmarks/livecodebench-v6)
- [LiveCodeBench Pro — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [HumanEval — pricepertoken.com](https://pricepertoken.com/leaderboards/benchmark/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [FeatureBench — OpenReview (ICLR 2026)](https://openreview.net/forum?id=41xrZ3uGuI)
- [Epoch AI Benchmarks (APEX-Agents, ARC-AGI-2)](https://epoch.ai/benchmarks)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
- [MiniMax M2.5 fraud controversy — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [AI coding benchmark scores skewed by infrastructure — StartupHub.ai](https://www.startuphub.ai/ai-news/artificial-intelligence/2026/ai-coding-benchmark-scores-skewed-by-infrastructure)
- [AI Benchmarks Are a Game Now — UC Strategies](https://ucstrategies.com/news/ai-benchmarks-are-a-game-now-and-the-industry-is-cheating-to-win/)
- [SWE-bench++ paper — arXiv](https://arxiv.org/html/2512.17419v1)
