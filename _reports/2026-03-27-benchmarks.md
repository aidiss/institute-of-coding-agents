---
title: Benchmarks — Who's Winning?
date: 2026-03-27
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks — Who's Winning?

*Report date: 2026-03-27. Scores go stale fast — dates are noted throughout.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

> **Status: Disputed / Retired.** OpenAI officially retired SWE-bench Verified on Feb 23, 2026, citing contamination (verbatim gold patches reproduced by frontier models) and flawed test oracles (59.4% of hardest tasks reject correct solutions). The official leaderboard remains live. **All scores below should be treated as legacy reference only.** Self-reported scores use custom scaffolding; standardized scores use mini-SWE-agent v2.0.0 (bash-only).

| Rank | Agent / Model | Provider | Score (Self-Reported) | Score (Standardized) | Date |
|------|--------------|----------|-----------------------|----------------------|------|
| 1 | Claude Opus 4.5 | Anthropic | 80.9% | 76.8% | Dec 2025 |
| 2 | Claude Opus 4.6 | Anthropic | 80.8% | 75.6% | Feb 2026 |
| 3 | Gemini 3.1 Pro | Google | 80.6% | ~75.8% | Feb 2026 |
| 4 | MiniMax M2.5 | MiniMax | 80.2% | — | Feb 2026 |
| 5 | GPT-5.2 | OpenAI | 80.0% | — | Feb 2026 |
| 6 | Claude Sonnet 4.6 | Anthropic | 79.6% | — | Feb 2026 |
| 7 | Gemini 3 Flash | Google | 78.0% | 75.8% | Feb 2026 |
| 8 | GLM-5 | Zhipu AI | 77.8% | — | Feb 2026 |
| 9 | Claude Sonnet 4.5 | Anthropic | 77.2% | — | Feb 2026 |
| 10 | Kimi K2.5 | Moonshot AI | 76.8% | — | Feb 2026 |

**Note:** Self-reported vs. standardized gap is 4–8 points, purely from scaffold differences. vals.ai (bash-only harness) shows: Gemini 3.1 Pro Preview 78.8%, Claude Opus 4.6 (Thinking) 78.2%, GPT-5.4 78.2%, GPT-5.3 Codex 78.0% (Mar 2026).

---

### SWE-bench Pro — SEAL Standardized (Top 10)

> Scale AI's multi-language benchmark: 1,865 tasks, 41 repositories (Python, Go, TypeScript, JavaScript). Public set uses GPL repos; private set uses 18 proprietary commercial codebases never publicly available. **SEAL standardized harness:** identical SWE-Agent scaffold, 250-turn limit for all entries. This is currently the most apples-to-apples comparison available.

| Rank | Model | Provider | Score | 95% CI | Date |
|------|-------|----------|-------|--------|------|
| 1 | claude-opus-4-5-20251101 | Anthropic | 45.89% | ±3.60 | Dec 2025 |
| 2 | claude-4-5-sonnet | Anthropic | 43.60% | ±3.60 | Sep 2025 |
| 3 | gemini-3-pro-preview | Google | 43.30% | ±3.60 | Nov 2025 |
| 4 | claude-4-sonnet | Anthropic | 42.70% | ±3.59 | Sep 2025 |
| 5 | gpt-5-2025-08-07 (High) | OpenAI | 41.78% | ±3.49 | Nov 2025 |
| 6 | gpt-5.2-codex | OpenAI | 41.04% | ±3.57 | Jan 2026 |
| 7 | claude-4-5-haiku | Anthropic | 39.45% | ±3.55 | Sep 2025 |
| 8 | qwen3-coder-480b-a35b | Alibaba | 38.70% | — | Jan 2026 |
| 9 | minimax-2.1 | MiniMax | 36.81% | — | Jan 2026 |
| 10 | gemini-3-flash | Google | 34.63% | — | Jan 2026 |

**Custom-scaffold self-reported (not standardized):** GPT-5.3-Codex CLI 57.0% (OpenAI), Claude Code w/ WarpGrep 55.4%, Auggie CLI 51.8%, Cursor 50.2% — all three non-OpenAI entries use the same base model (Claude Opus 4.5), demonstrating pure scaffold inflation.

**Private set (proprietary codebases):** Claude Opus 4.1 drops from 22.7% → 17.8%; GPT-5 drops from 23.1% → 14.9%.

---

### Terminal-Bench 2.0 (Top Results)

> 89-task benchmark (arXiv:2601.11868, Jan 2026) covering code compilation, model training, server setup, sysadmin, security, and data science. Replaces the deprecated 80-task v1. ABC benchmark-quality score: 0.896 (2nd highest evaluated). 25 models evaluated as of March 2026.

| Rank | Model | Provider | Score | Date |
|------|-------|----------|-------|------|
| 1 | GPT-5.3 Codex | OpenAI | 77.3% | Mar 2026 |
| 2 | GPT-5.4 | OpenAI | 75.1% | Mar 2026 |
| 3 | Gemini 3.1 Pro | Google | 68.5% | Mar 2026 |
| 4 | Claude Opus 4.6 | Anthropic | 65.4% | Mar 2026 |
| 5 | Claude Sonnet 4.6 | Anthropic | 53.0% | Mar 2026 |
| — | Average (25 models) | — | 52.5% | Mar 2026 |

**Infrastructure bias warning:** CPU and memory allocation swings Terminal-Bench 2.0 results by up to 6 percentage points. Differences below 3pp should not be treated as significant without documented resource configurations. Conflicting scores exist across aggregators (e.g. GPT-5.4 reported as both 57.6% and 75.1% from different sources/configurations).

**v1 reference (deprecated):** Claude Sonnet 4.5 held the #1 slot at 50.0%; average across 23 models was 34.5%.

---

### LiveCodeBench (Top 10)

> Continuously sourced from LeetCode, AtCoder, and CodeForces. Problems tagged by release date to prevent contamination. ~201 models evaluated. Scores are pass@1 on code generation.

| Rank | Model | Provider | Score | Date |
|------|-------|----------|-------|------|
| 1 | Gemini 3 Pro Preview | Google | 91.7% | Mar 22, 2026 |
| 2 | Gemini 3 Flash Preview | Google | 90.8% | Mar 22, 2026 |
| 3 | DeepSeek V3.2 Speciale | DeepSeek | 89.6% | Mar 22, 2026 |
| 4 | GPT-5.4 Pro | OpenAI | 86.0% (weighted) | Mar 2026 |
| 5 | GPT-5.3 Codex | OpenAI | 85.0% (weighted) | Mar 2026 |
| 6 | Kimi K2.5 | Moonshot AI | ~85% | Mar 2026 |
| 7 | DeepSeek-V3.2 (Thinking) | DeepSeek | 83.3% | Mar 2026 |
| 8 | MiniMax M2 | MiniMax | 83.0% | Mar 2026 |
| 9 | Gemini 3.1 Pro | Google | 81.3% | Mar 2026 |
| 10 | Claude Opus 4.6 | Anthropic | 76.0% | Mar 2026 |
| — | Average (201 models) | — | 49.8% | Mar 2026 |

**LiveCodeBench Pro (Elo-based):** Gemini 3.1 Pro leads at 2,887 Elo (average: 2,547).

**Caution:** The 91.7% Gemini figure is from PricePerToken (Mar 22, 2026) and could not be independently corroborated from the primary leaderboard at time of writing — treat as potentially unverified. Different aggregators use different problem date ranges, which shifts results materially.

---

### HumanEval (Selected Results)

> **Status: Saturated and contaminated.** 164 hand-crafted Python problems, public since 2021. 64 of 65 scores on the main aggregator are self-reported; 0 independently verified. Retained as legacy baseline only.

| Model | Score | Source | Date |
|-------|-------|--------|------|
| Kimi K2.5 (Reasoning) | 99.0% | BenchLM.ai (self-reported) | Mar 2026 |
| Kimi K2.5 | 99.0% | BenchLM.ai (self-reported) | Mar 2026 |
| Claude Sonnet 4.5 | 97.6% | pricepertoken.com | Mar 24, 2026 |
| DeepSeek R1 | 97.4% | pricepertoken.com | Mar 2026 |
| Grok 4 | 97.0% | pricepertoken.com | Mar 2026 |
| GPT-5.4 Pro | ~95.0% | BenchLM.ai (self-reported) | Mar 2026 |

EvalPlus (HumanEval+ with 80x more test cases per problem) exposes solutions that pass the original tests but fail on edge cases — scores are systematically lower across all models. BigCodeBench is the recognized successor for frontier-relevant coding evaluation.

---

## New Benchmarks & Methodology

### SWE-bench Pro (Scale AI, late 2025)
Established as the primary replacement for SWE-bench Verified. Key differentiator: private split of 276 tasks from 18 proprietary commercial codebases never publicly available — the hardest anti-contamination property available in any SWE benchmark. Average solution touches 4.1 files and 107 LOC.

### METR Time Horizon Tracker (public launch: Feb 6, 2026)
Measures the task duration (in human-equivalent minutes) at which a model achieves 50% success. Selected data points:

| Model | 50% Horizon | 80% Horizon | Added |
|-------|-------------|-------------|-------|
| Claude Opus 4.6 | ~719 min (~12 hr) | ~70 min | Feb 20, 2026 |
| GPT-5.2 | ~352 min (~5.9 hr) | ~66 min | Feb 4, 2026 |
| Claude Opus 4.5 | ~293 min (~4.9 hr) | ~49 min | Nov 24, 2025 |
| Gemini 3 Pro | ~224 min (~3.7 hr) | ~54 min | Nov 18, 2025 |
| O3 | ~120 min (~2 hr) | ~30 min | Apr 16, 2025 |
| Claude 3.7 Sonnet | ~60 min (1 hr) | ~12 min | Feb 24, 2025 |

Time horizons doubled every ~7 months over 2019–2025, accelerating to every ~4 months in 2024–2025. **METR caveat (Jan 22, 2026):** Unit-test-based scoring overestimates capabilities vs. holistic evaluation; most real jobs involve human interaction and subjective success criteria not captured by this task set. A regularization bug was corrected Mar 3, 2026.

### SWE-bench Live (Microsoft/NeurIPS 2025)
Rolling benchmark using only issues filed after each model's training cutoff. 1,565 tasks, 164 repositories. Multi-language track added Jan 10, 2026; Windows/PowerShell track added Mar 8, 2026.

### Multi-SWE-Bench (2025, arXiv:2504.02605)
7 languages: Java, TypeScript, JavaScript, Go, Rust, C, C++. 1,632 instances, 68 expert annotators. MiniMax M2.5 leads at 51.3%; IBM's iSWE-Agent (Claude Sonnet 4.5) leads the Java sub-track.

### LiveAgentBench (arXiv:2603.02586, March 2026)
104 real-world agent challenges. Full agents outperform base LLMs by ~56%. Early-stage — limited adoption.

### GDPval (OpenAI, ~mid-2025)
1,320 tasks across 44 occupations (lawyers, nurses, software engineers, etc.), graded by blind pairwise ELO from trained human reviewers. Claude Sonnet 4.6 leads GDPval-AA at 1,633 Elo. No code execution involved — expert work product only.

### ARC-AGI-2
Gemini 3.1 Pro scores 77.1%, more than doubling Gemini 3 Pro's previous score. Claude leads the prior-generation ARC-AGI at 68.8%.

---

## Notable Movements

### SWE-bench Verified Officially Retired (Feb 23, 2026)
OpenAI's Frontier Evals team documented: (1) 59.4% of hardest remaining tasks have flawed test specifications that reject correct solutions; (2) 49 tasks reject functionally correct patches due to over-narrow tests; (3) all tested frontier models (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) can reproduce verbatim gold patches for some tasks. The benchmark issues date back to its October 2023 creation; half of underlying GitHub issues are from 2020 or earlier.

### Self-Reported vs. Reality: The 80% → 18% Collapse
The starkest illustration of benchmark gaming: Claude Opus 4.5 self-reports **80.9%** on SWE-bench Verified (custom scaffold), scores **45.9%** on SWE-bench Pro public (SEAL standardized), and approximately **17–18%** on SWE-bench Pro private (proprietary codebases). The same model's "capability" ranges from 18% to 81% depending on benchmark selection and scaffold choice.

### Scaffold Inflation Precisely Quantified
Three different agents using the identical Claude Opus 4.5 base model on SWE-bench Pro score: SWE-Agent baseline 45.9%, Cursor 50.2%, Auggie CLI 51.8%, Claude Code (WarpGrep) 55.4%. The 9.5-point spread between baseline and top is entirely scaffold engineering, not model capability.

### Chatbot Arena Gaming Documented
A study of 2.8 million LMArena comparison records found selective model submissions inflate scores by up to 100 Elo points. Meta submitted 36 private model variants before Llama 4's release to find the strongest candidate; Yann LeCun acknowledged "cheated a little bit." LMArena's Jan 2026 valuation: $1.7B — raising conflict-of-interest concerns. Karpathy has proposed abandoning Arena entirely in favor of OpenRouter API usage rankings as a harder-to-game signal.

### Weak Oracles: ~31% of "Solved" Patches Are Wrong
Frameworks UTBoost and PatchDiff found ~31% of instances where patches pass tests have test suites too weak to detect incorrect modifications. An estimated 1 in 5 "solved" patches from top-30 SWE-bench agents is incorrect, passing only due to insufficient test coverage — inflating leaderboard scores by ~6–7 absolute points.

### METR RCT: AI Tools Slow Experienced Developers by 19%
A 2025 METR randomized controlled trial found experienced open-source contributors were **19% slower** with AI assistance, even as participants believed they were **20% faster** ("efficiency illusion"). No demonstrated correlation between SWE-bench scores and this real-world outcome has been published.

---

## Benchmark Reliability Summary

| Benchmark | Contamination Risk | Scaffolding Control | Recommended Use |
|-----------|-------------------|---------------------|-----------------|
| HumanEval | Very High (public 2021) | None | Legacy baseline only |
| SWE-bench Verified | High (retired Feb 2026) | None | Historical reference only |
| SWE-bench Pro (public, SEAL) | Medium-Low | Standardized | Active — preferred |
| SWE-bench Pro (private) | Low | Standardized | Active — most credible |
| LiveCodeBench | Low (rolling) | None | Active — algorithmic coding |
| SWE-bench Live | Low (post-cutoff) | None | Active — growing |
| Terminal-Bench 2.0 | Low | None standardized | Active — agentic terminal tasks |
| METR Time Horizon | Low | Standardized | Active — long-horizon agency |
| Multi-SWE-Bench | Low-Medium | None | Active — multilingual |
| GDPval | Low | Expert-graded | Active — knowledge work |
