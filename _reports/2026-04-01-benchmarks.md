---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-01
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 1, 2026

The story entering April is stable but sobering: SWE-bench Verified is retired, SWE-bench Pro (SEAL standardized) is the most credible active coding benchmark, and the gap between self-reported and independently verified scores continues to widen. Frontier models cluster tightly on contamination-resistant evaluations while diverging dramatically on legacy benchmarks.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23**

Included for historical reference only. OpenAI officially deprecated this benchmark citing confirmed training data contamination. Verbatim gold-patch reproduction documented for GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. All scores below are contaminated; do not use for capability comparisons.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 76.8% (standardized) / 80.9% (self-reported) | 2026-02-17 |
| 2 | Gemini 3 Flash (high reasoning) | SWE-bench Verified | 75.8% (standardized) / 78.0% (self-reported) | 2026-02-17 |
| 3 | MiniMax M2.5 (high reasoning) | SWE-bench Verified | ~74% (standardized) / 80.2% (self-reported) | 2026-02-17 |
| 4 | GPT-5.2 | SWE-bench Verified | 72.8% (standardized) / 80.0% (self-reported) | 2026-02-17 |
| 5 | GLM-5 (high reasoning) | SWE-bench Verified | 72.8% (standardized) / 77.8% (self-reported) | 2026-02-17 |
| 6 | Claude Sonnet 4.5 | SWE-bench Verified | 72.8% (standardized) / 77.2% (self-reported) | 2026-02-17 |
| 7 | Claude Opus 4.6 | SWE-bench Verified | ~75.6% (standardized) / 80.8% (self-reported) | 2026-02-17 |
| 8 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (self-reported only) | — |
| 9 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% (self-reported only) | 2026-02-17 |
| 10 | Kimi K2.5 | SWE-bench Verified | 76.8% (self-reported only) | — |

*Standardized scaffold: mini-SWE-agent v2.0.0. Self-reported scores used custom scaffolding and are not comparable. MiniMax audit ongoing as of 2026-03-19.*

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Active replacement for Verified. GPL-licensed code as contamination barrier; private set (276 proprietary instances) consistently scores ~25% lower. Confidence intervals overlap for ranks 2–6 — treat ordering with caution.

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

*Self-reported custom-agent scores (non-comparable): GPT-5.4 57.7%, GPT-5.3-Codex CLI 57.0%, Opus 4.6 + WarpGrep v2 57.5%, Claude Code (Opus 4.5) 55.4%, Auggie 51.8%, Cursor 50.2%. Standardized-to-custom gap: 10–12 pp from scaffold alone.*

### SWE-bench Pro — Custom Agent Systems (self-reported, non-comparable to SEAL)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | GPT-5.4 | SWE-bench Pro | 57.7% | 2026-03 |
| 2 | Opus 4.6 + WarpGrep v2 (Morph) | SWE-bench Pro | 57.5% | 2026-03 |
| 3 | GPT-5.3-Codex CLI | SWE-bench Pro | 57.0% | 2026-03 |
| 4 | GPT-5.2-Codex (custom) | SWE-bench Pro | 56.4% | 2026-03 |
| 5 | Claude Code (Opus 4.5) | SWE-bench Pro | 55.4% | 2026-03 |

*All self-reported. Scaffold differences account for most of the gap vs. SEAL scores.*

### SWE-rebench v2 (rolling window: 2026-01 – 2026-03, 128 tasks, 46 repos)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%) | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%) | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench v2 | 60.9% (pass@5: 73.7%) | 2026-03 |
| 6 | Claude Sonnet 4.6 | SWE-rebench v2 | 60.7% | 2026-03 |

### Terminal-Bench 2.0 (89 realistic terminal tasks, Docker-sandboxed; ICLR 2026)

Top self-reported entries inflate scores significantly vs. independent evaluation. Verified entries noted.

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported |
| 1 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 3 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| 4 | SageAgent (GPT-5.3-Codex) | Terminal-Bench 2.0 | 78.4% ±2.2% | 2026-03-13 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| — | Terminus 2 (GPT-5.3-Codex) | Terminal-Bench 2.0 | 64.7% ±2.7% | 2026-03 | **Verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Verified** |

*"Hard" tasks only (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8%, GPT-5.3-Codex 53.0% — ~24 pp below self-reported leaderboard tops. Infrastructure resource allocation can swing scores by up to 6 pp (Anthropic audit finding).*

### LiveCodeBench v6 (contamination-resistant competitive programming; updated 2026-03-30)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | 2026-03-22 |
| 2 | Gemini 3 Flash Preview | LiveCodeBench v6 | 90.8% | 2026-03-22 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026-03-22 |
| 4 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-03-30 |
| 5 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | ~85% | 2026-03 |

*LiveCodeBench Pro Elo (hardest problems): Gemini 3.1 Pro leads at Elo 2887 vs. GPT-5.2 at Elo 2393 (~500-point gap). Built-in contamination detection flags models likely trained on benchmark problems.*

### HumanEval (164 Python problems — saturated, not recommended for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-03-24 |
| 3 | Grok 4 | HumanEval | 97.0% | 2026-03-24 |
| 4 | DeepSeek R1 | HumanEval | 97.4% | 2026-03-24 |
| 5 | GPT-5.4 Pro | HumanEval | ~95% | 2026-Q1 |

*All scores self-reported; benchmark has been public since 2021. Frontier differentiation is impossible at this saturation level. HumanEval+ (EvalPlus, 80x more tests) is a stricter alternative: Kimi K2 Base leads at 80.3%.*

---

## New Benchmarks & Methodology

**FeatureBench** (LiberCoders / ICLR 2026)
Tests agentic coding for complex feature development, not bug fixes. 200 tasks, 3,825 executable environments from 24 open-source repos. Two difficulty levels: incremental (L1) and from-scratch (L2). Key finding: Claude Opus 4.5, which reaches 74.4% on SWE-bench Verified, succeeds on only **11.0% of FeatureBench tasks**; GPT-5.1-Codex tops out at 12.5%. Exposes a large gap between patch-application capability and genuine feature development. Automated verification via fail-to-pass / pass-to-pass test suites.

**SWE-rebench** (rolling refresh, ICLR 2026)
Automated pipeline generating 21,000+ continuously refreshed Python SWE tasks from GitHub. Color-codes contamination risk per submission: red = task predates model release, orange = external system reference. Most transparent contamination disclosure mechanism currently available.

**SWE-bench Pro** (Scale AI, September 2025 — now primary standard)
1,865 tasks across Python, Go, TypeScript, and JavaScript. Public (731 GPL-licensed) + Private (276 proprietary) + held-out set. Now the endorsed replacement for Verified.

**APEX-Agents** (Epoch AI Capabilities Index, March 2026)
Tests autonomous multi-step agentic task completion. Scores: Gemini 3.1 Pro 33.5%, Claude Opus 4.6 29.8%, GPT-5.2 23.0%, Gemini 3 Pro 18.4%.

**ARC-AGI-2** (ARC Prize Foundation)
Abstract reasoning resistant to memorization. Scores (verified): Gemini 3 Deep Think 84.6%, Gemini 3.1 Pro 77.1%, Claude Opus 4.6 68.8%, GPT-5.2 52.9%.

**GDPval** (OpenAI, ~2026-02)
Knowledge-work benchmark across 44 occupations in 9 industries. GPT-5.2 scores 70.9%; Claude Opus 4.6 leads GDPval-AA Elo variant. **Conflict-of-interest flag:** OpenAI both built the leading models and designed the benchmark; no independent validation yet.

**FrontierMath: Open Problems** (January 2026)
Tests AI on unsolved mathematics research problems. GPT-5.4 Pro: 50% on Tiers 1–3, 38% on Tier 4.

---

## Notable Movements

**SWE-bench Verified officially retired** (2026-02-23).
OpenAI's Frontier Evals team confirmed that GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash can reproduce verbatim gold patches from task identifiers alone. One documented chain-of-thought named a function argument never present in the problem description — it was in training data. The LessLeak-Bench study found 10.6% data leakage against StarCoder's training corpus. Retirement was the correct call; the benchmark has been unusable as a frontier differentiator since late 2025.

**The Verified→Pro gap quantifies contamination.**
Claude Opus 4.5: 80.9% (self-reported Verified) → 45.9% (SEAL-standardized Pro). A ~35 pp delta that is almost entirely contamination plus task difficulty, not model capability change.

**Scaffold gaming: the underappreciated distortion.**
The same base model (Opus 4.5) scores 45.9% on SEAL's standardized scaffold and 50.2–55.4% under commercial agent scaffolding — a 4–10 pp lift purely from context retrieval, retry logic, and tool use optimizations. On Terminal-Bench 2.0, self-reported agent tops (81.8%) vs. independently verified entries (75.1% best verified) show the same pattern. Labs can move leaderboard positions by optimizing scaffolding rather than improving models.

**Chinese labs lead LiveCodeBench.**
ByteDance (Seed 2.0 Pro), Gemini, and DeepSeek occupy the top 3 on LCB v6 as of 2026-03-30. A notable shift in competitive programming evaluation, where Anthropic and OpenAI models do not appear at the top.

**Public-to-private degradation on SWE-bench Pro.**
Claude Opus 4.1: 22.7% (public) → 17.8% (proprietary private set). GPT-5: 23.1% → 14.9%. Consistent ~25% performance drop on unseen proprietary code across labs — a reliable contamination signal.

**MiniMax audit ongoing.**
MiniMax's SWE-bench Verified scores triggered independent audits questioning methodology. Investigation ongoing as of 2026-03-19; treat MiniMax scores as unverified until resolved.

**Infrastructure allocation inflates Terminal-Bench scores.**
Anthropic documented a 6 pp swing in scores based solely on CPU/memory resource headroom during evaluation (error rates: 5.8% strict enforcement → 0.5% uncapped). Benchmark scores may reflect infrastructure budget more than model capability.

**European Commission flags systemic benchmarking problems.**
JRC report "Can We Trust AI Benchmarks?" identified misaligned incentives, construct validity problems, and structural gaming. As of April 2026: no cross-industry contamination detection standards, no adoption thresholds, no enforcement mechanisms.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/) — 2026-02-17 final update
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro private leaderboard — Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_private)
- [SWE-bench Pro analysis: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-bench Live leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 (tbench.ai)](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [Terminal-Bench ICLR 2026 — OpenReview](https://openreview.net/forum?id=a7Qa4CcHak)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — BenchLM.ai](https://benchlm.ai/benchmarks/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [FeatureBench — OpenReview (ICLR 2026)](https://openreview.net/forum?id=41xrZ3uGuI)
- [FeatureBench GitHub](https://github.com/LiberCoders/FeatureBench)
- [Epoch AI Benchmarks (APEX-Agents, ARC-AGI-2)](https://epoch.ai/benchmarks)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
- [SWE-bench & LiveCodeBench — BenchLM.ai](https://benchlm.ai/coding)
- [LLM-Stats.com benchmarks](https://llm-stats.com/)
- [AI Coding Benchmark Scores Skewed by Infrastructure — StartupHub.ai](https://www.startuphub.ai/ai-news/artificial-intelligence/2026/ai-coding-benchmark-scores-skewed-by-infrastructure)
- [The Scaffold Problem — Medium](https://thamizhelango.medium.com/the-scaffold-problem-why-ai-coding-benchmarks-are-broken-and-what-the-numbers-actually-mean-729186931c26)
