---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-05-05
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — May 5, 2026

The headline this week is Claude Mythos Preview's self-reported 93.9% on the retired SWE-bench Verified — a number that is largely uninterpretable given ongoing contamination and scaffold-inflation concerns. On the more credible SWE-bench Pro, Mythos self-reports 77.8%, a substantial 32 pp jump over the previous SEAL-standardized top (Opus 4.5 at 45.9%). ARC-AGI-3, a fully interactive benchmark with zero instructions, launched this week; GPT-5.4 High and Claude Opus 4.6 Max each scored 0.3% against a human baseline of 100%. The MiniMax M2.5 investigation enters day 83 with no trajectory data released. LiveCodeBench v6 continues to show Chinese labs dominating contamination-resistant competitive programming evals.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23** (historical reference only)

Confirmed training-data contamination across all frontier models; verbatim gold-patch reproduction documented for GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. Claude Mythos Preview's 93.9% submission (2026-05-01, self-reported) is listed for completeness; it should not be treated as a capability measurement given the benchmark's retired status and scaffold-inflation concerns.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% (**self-reported, unverified**) | 2026-05-01 |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Verified | 87.6% (self-reported) | 2026-04-20 |
| 3 | GPT-5.3 Codex | SWE-bench Verified | 85.0% (self-reported) | 2026-04-15 |
| 4 | Live-SWE-agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% (self-reported) | 2026-04-11 |
| 5 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (self-reported) | 2026-02-17 |
| 6 | MiniMax M2.5 | SWE-bench Verified | 80.2% (**self-reported — unverified, audit ongoing day 83**) | 2026-02-12 |
| 7 | Qwen3.6 Plus | SWE-bench Verified | 78.8% (self-reported) | 2026-04-02 |
| 8 | Gemini 3 Flash | SWE-bench Verified | 78.0% (self-reported) | 2025-12-17 |
| 8 | MiMo-V2-Pro | SWE-bench Verified | 78.0% (self-reported) | 2026-03-18 |
| 10 | GLM-5 | SWE-bench Verified | 77.8% (self-reported) | 2026-02-11 |

*Standardized scaffold (mini-SWE-agent v2.0.0, Epoch AI): Claude Opus 4.5 76.8%. Custom-harness premium for Mythos not yet independently estimated. Do not use for cross-agent comparisons.*

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

All runs independently executed by Scale AI with standardized SWE-agent scaffold; 250-turn limit. Claude Mythos Pro figure is self-reported via Anthropic's proprietary harness and has not yet been reproduced under SEAL standardization.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% (**self-reported, non-SEAL harness**) | 2026-05-01 |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Pro | 64.3% (self-reported) | 2026-04-20 |
| 3 | GPT-5.5 | SWE-bench Pro | 58.6% (self-reported) | 2026-04-28 |
| 4 | GPT-5.4 | SWE-bench Pro | ~55.0% (estimated, multiple sources) | 2026-04 |
| 5 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% (**SEAL standardized**) | 2025-12-11 |
| 6 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% (**SEAL standardized**) | 2025-09-19 |
| 7 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% (**SEAL standardized**) | 2025-11-26 |
| 8 | GPT-5.2 Codex | SWE-bench Pro | 41.0% ±3.57% (**SEAL standardized**) | 2026-01-27 |
| 9 | Qwen3-Coder-480B-A35B | SWE-bench Pro | 38.7% ±3.55% (**SEAL standardized**) | 2026-01-27 |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% ±3.55% (**SEAL standardized**) | 2026-01-12 |

*Rows 1–4 are self-reported with proprietary scaffolds; rows 5–10 are SEAL-standardized. The SEAL standardized top (45.9%) vs. Mythos self-reported (77.8%) gap of ~32 pp represents an extreme scaffold-inflation ceiling — independent reproduction is urgently needed. Private codebase penalty: ~25% accuracy drop consistent across all labs.*

### SWE-rebench v2 (rolling window: 2026-02 – 2026-04, 128 tasks, 46 repos)

Independently run by Nebius; per-submission contamination labels. Scores unchanged from 2026-03-20 snapshot; no new SEAL-comparable submissions since April.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%, cost: $1.12/problem) | 2026-03-20 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%, cost: $0.62) | 2026-03-20 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%, cost: $0.76) | 2026-03-20 |
| 4 | GPT-5.4 (medium) | SWE-rebench v2 | 62.8% (pass@5: 70.2%, cost: $0.63) | 2026-03-20 |
| 5 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%, cost: $0.66) | 2026-03-20 |

*No Mythos submission yet on SWE-rebench — the contamination-labelled decontaminated eval is a key missing data point for the 93.9% claim.*

### Terminal-Bench 2.0 (89 real-world CLI tasks, Docker-sandboxed; tbench.ai)

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | GPT-5.5 | Terminal-Bench 2.0 | 82.7% ±2.1% | 2026-05-01 | Self-reported |
| 2 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% ±1.9% | 2026-05-01 | Self-reported |
| 3 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% ±2.3% | 2026-04-28 | Self-reported |
| 4 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 5 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Verified** |

*Terminal-Bench Hard (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8% — ~24 pp below self-reported leaderboard tops. Infrastructure headroom can swing scores ±6 pp (Anthropic-documented). 39 models evaluated total.*

### LiveCodeBench v6 (contamination-resistant competitive programming; 1,055 problems; rolling updates)

| Rank | Agent | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-04-02 |
| 2 | Qwen3.6 Plus (Alibaba) | LiveCodeBench v6 | 87.1% | 2026-04 |
| 3 | Step-3.5-Flash (StepFun) | LiveCodeBench v6 | 86.4% | 2026-04 |
| 4 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | 85.0% | 2026-04 |
| 5 | GLM-4.7 (Zhipu AI) | LiveCodeBench v6 | 84.9% | 2026-04 |
| 6 | Qwen3.5-397B-A17B (Alibaba) | LiveCodeBench v6 | 83.6% | 2026-04 |
| 7 | Kimi K2-Thinking-0905 (Moonshot) | LiveCodeBench v6 | 83.1% | 2025-09 |
| 8 | GLM-4.6 (Zhipu AI) | LiveCodeBench v6 | 82.8% | late 2025 |
| 9 | GPT OSS 120B High (OpenAI) | LiveCodeBench v6 | 81.9% | 2026-04 |
| 10 | Seed 2.0 Lite (ByteDance) | LiveCodeBench v6 | 81.7% | 2026-04 |

*218 models evaluated. All scores self-reported. Chinese labs hold the top 8 slots — a persistent inversion of the SWE-bench Verified narrative. No Anthropic or OpenAI frontier model appears in the top 10 on this contamination-resistant eval. Average across all 218 models: 67.1%.*

### HumanEval (164 Python problems — saturated; not for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-04-28 |
| 2 | DeepSeek R1 | HumanEval | 97.4% | 2026-04-28 |
| 3 | Grok 4 | HumanEval | 97.0% | 2026-04 |
| 4 | o3 | HumanEval | 97.0% | 2026-04 |
| 5 | Claude Opus 4.6 | HumanEval | 96.0% | 2026-04 |

*66 models tracked; 0 verified, 65 self-reported. Average across all models: 89.6%. Benchmark is near-saturated — 2–3 pp separates all frontier models. Use HumanEval+ (EvalPlus) or BigCodeBench for any meaningful frontier differentiation.*

### ARC-AGI-2 (abstract reasoning; independently verified)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | GPT-5.5 | ARC-AGI-2 | 85.0% | 2026-04-28 |
| 2 | GPT-5.4 Pro | ARC-AGI-2 | 83.3% | 2026-04 |
| 3 | Gemini 3.1 Pro | ARC-AGI-2 | 77.1% | 2026-04 |
| 4 | Claude Opus 4.6 | ARC-AGI-2 | 68.8% | 2026-04 |

*ARC-AGI-3 launched this week (see below). Human baseline on ARC-AGI-2: 100%.*

---

## New Benchmarks & Methodology

**ARC-AGI-3** (ARC Prize Foundation, launched ~2026-04-30)
Fully interactive benchmark; zero instructions provided — agents must deduce goals dynamically from the environment. 182 levels. GPT-5.4 High and Claude Opus 4.6 Max each scored **0.3%**; Symbolica's Agentica SDK achieved 36% at a compute cost of ~$1,005 for 113/182 levels. Human baseline: 100%. This is the starkest current evidence that interactive, goal-deduction tasks remain completely unsolved by frontier models. ARC Prize 2026 competition: $2 million in prizes for open-source solutions to ARC-AGI-2 and ARC-AGI-3.

**FeatureBench** (LiberCoders, ICLR 2026)
200 complex feature-development tasks across 24 open-source repos; 3,825 executable environments. L1 (incremental) and L2 (from-scratch) difficulty tiers. Key finding: no model exceeds 13%. Claude Opus 4.5 scores 74.4% on SWE-bench Verified but only **11.0%** on FeatureBench — strongest currently available evidence of the gap between patch-fixing and genuine feature engineering.

**CodeArena** (arena.ai/code)
Arena-style human preference evaluation across 40 categories, 7 major domains; Elo-scored. May 2026 standings: Boba (1112 Elo), Claude Opus 4.7 (1083), Claude Sonnet 4.6 (1066). 40+ LLMs evaluated. Preference-based evals are orthogonal to correctness evals — high Elo does not imply high task resolution rate.

**HumanEval Pro** (2026)
Self-invoking code generation extension of HumanEval. Top models drop 20+ points relative to standard HumanEval — suggests that recursive/compositional code generation is materially harder than single-function completion despite HumanEval saturation.

**BigCodeBench** (2026)
Extends HumanEval with realistic library usage across diverse APIs. Now preferred over standard HumanEval for any frontier comparison. Leaderboard details pending; adoption is accelerating.

**SWE-bench Live** (Microsoft, NeurIPS 2025)
Updated monthly with 50 new verified issues. Multi-language (C, C++, C#, Python, Java, Go, JS/TS, Rust) since 2026-01-10. Windows/PowerShell variant targeted for August 2026.

**GDPval** (OpenAI, ~2026-02)
Knowledge-work benchmark spanning 44 occupations in 9 U.S. GDP industries. GPT-5.4 leads at 83% (13 pp gain over GPT-5.2). **Conflict-of-interest flag:** designed and topped by OpenAI; no independent replication published.

---

## Notable Movements

**Claude Mythos Preview's 93.9% on the retired SWE-bench Verified is uninterpretable as stated.** The benchmark was retired 2026-02-23 due to confirmed contamination. A self-reported 93.9% via a proprietary harness on a contaminated benchmark is a marketing claim, not an evaluation. The accompanying 77.8% on SWE-bench Pro is more interesting but also self-reported; the SEAL-standardized top sat at 45.9% (Opus 4.5) as of December 2025. Until Mythos runs under the standardized SEAL scaffold, the gap is noise.

**ARC-AGI-3 resets the frontier at 0.3%.** The jump from ARC-AGI-2 (where GPT-5.5 scores 85%) to ARC-AGI-3 (0.3% for comparable models) is the most dramatic capability cliff visible in any benchmark suite right now. The benchmark's interactive, instruction-free design appears to be qualitatively harder than anything currently evaluated at scale. Symbolica's 36% result with Agentica SDK warrants scrutiny — methodology not yet published.

**MiniMax M2.5 investigation: day 83, no resolution.** Container images, raw trajectories, and evaluation logs remain unpublished. All MiniMax entries should be treated as unverified pending disclosure.

**LiveCodeBench top 8 remain entirely Chinese labs.** Neither Anthropic nor OpenAI appears in the top 10 on the benchmark most resistant to contamination. This persistent pattern — Chinese labs dominate contamination-resistant evals while Western labs dominate contaminated or self-reported leaderboards — is now a structural feature of the competitive landscape, not an anomaly.

**Open-source scaffold gap is narrowing.** Live-SWE-agent (open-source, Claude Opus 4.5) reached 79.2% on SWE-bench Verified — within 1.4 pp of Claude Sonnet 4.6's self-reported figure (79.6%) and ahead of MiMo-V2-Pro (78.0%). Scaffold engineering is increasingly the competitive variable, not model weights.

**HumanEval is effectively retired for frontier comparison.** With the top 5 models compressed into a 1.6 pp band (96.0%–97.6%), and zero verified scores in the tracking corpus, HumanEval has the same discriminative value as SWE-bench Verified before its retirement — which is to say, none.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/) — retired 2026-02-23
- [SWE-bench Pro leaderboard — Scale AI SEAL (public)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [Terminal-Bench 2.0 (tbench.ai)](https://www.tbench.ai/)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [ARC-AGI-3 launch — ARC Prize Foundation](https://arcprize.org/blog/agi-agi-3-launch)
- [ARC-AGI leaderboard](https://arcprize.org/leaderboard)
- [FeatureBench — OpenReview (ICLR 2026)](https://openreview.net/forum?id=41xrZ3uGuI)
- [CodeArena leaderboard](https://arena.ai/code)
- [Claude Mythos benchmarks — MindStudio](https://www.mindstudio.ai/blog/claude-mythos-benchmark-results-swe-bench)
- [Live-SWE-agent 79.2% — AgentMarketCap](https://agentmarketcap.ai/blog/2026/04/11/live-swe-agent-open-source-scaffold-swe-bench-2026/)
- [MiniMax M2.5 fraud controversy — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [SWE-rebench decontamination and Chinese model inflation — MindStudio](https://www.mindstudio.ai/blog/swe-rebench-benchmark-decontaminated-tests-model-inflation)
- [Agent scaffolding beats model upgrades — Particula](https://particula.tech/blog/agent-scaffolding-beats-model-upgrades-swe-bench)
