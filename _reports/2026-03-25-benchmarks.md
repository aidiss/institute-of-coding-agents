---
title: Benchmarks — Who's Winning?
date: 2026-03-25
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks — Who's Winning?

*Report date: 2026-03-25. Scores go stale fast — dates are noted throughout.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

> **Status: Disputed.** OpenAI declared the benchmark contaminated on Feb 12, 2026 and retired it internally. The official leaderboard remains live but the community is migrating to SWE-bench Pro. All self-reported scores use custom scaffolding; standardized scores use mini-SWE-agent v2.0.0 (bash-only).

| Rank | Agent / Model | Provider | Score (Self-Reported) | Score (Standardized) | Date |
|------|--------------|----------|-----------------------|----------------------|------|
| 1 | Claude Opus 4.5 | Anthropic | 80.9% | 76.8% | Mar 2026 |
| 2 | Claude Opus 4.6 | Anthropic | 80.8% | 75.6% | Mar 2026 |
| 3 | Gemini 3.1 Pro | Google | 80.6% | ~75.8% | Feb 2026 |
| 4 | MiniMax M2.5 | MiniMax | 80.2% | 75.8% | Mar 2026 |
| 5 | GPT-5.2 | OpenAI | 80.0% | 72.8% | Mar 2026 |
| 6 | Claude Sonnet 4.6 | Anthropic | 79.6% | — | Mar 2026 |
| 7 | Gemini 3 Flash | Google | 78.0% | — | Mar 2026 |
| 8 | GLM-5 | Zhipu AI | 77.8% | — | Mar 2026 |
| 9 | Claude Sonnet 4.5 | Anthropic | 77.2% | — | Mar 2026 |
| 10 | Kimi K2.5 | Moonshot AI | 76.8% | — | Mar 2026 |

**Note:** Gap between self-reported and standardized scores is 4–8 points, entirely attributable to scaffold differences. Average across all 77 ranked models: 62.2%. Top scores jumped from ~65% in early 2025 to ~80% by Mar 2026.

---

### SWE-bench Pro — SEAL Standardized (Top 10)

> Scale AI's multi-language benchmark (Python, Go, TypeScript, JavaScript). 1,865 tasks from 41 real repositories. SEAL leaderboard uses identical tooling and a 250-turn limit. **Self-reported scores with custom scaffolding run 4–10 points higher than SEAL standardized.**

| Rank | Agent / Model | Score (±95% CI) | Date |
|------|--------------|-----------------|------|
| 1 | claude-opus-4-5-20251101 | 45.89% ±3.60 | Mar 2026 |
| 2 | claude-4-5-Sonnet | 43.60% ±3.60 | Mar 2026 |
| 3 | gemini-3-pro-preview | 43.30% ±3.60 | Mar 2026 |
| 4 | claude-4-Sonnet | 42.70% ±3.59 | Mar 2026 |
| 5 | gpt-5-2025-08-07 (High) | 41.78% ±3.49 | Mar 2026 |
| 6 | gpt-5.2-codex | 41.04% ±3.57 | Mar 2026 |
| 7 | claude-4-5-haiku | 39.45% ±3.55 | Mar 2026 |
| 8 | qwen3-coder-480b-a35b | 38.70% ±3.55 | Mar 2026 |
| 9 | minimax-2.1 | 36.81% ±3.55 | Mar 2026 |
| 10 | gemini-3-flash | 34.63% ±3.55 | Mar 2026 |

Self-reported highlights for context: GPT-5.4 (57.7%), GPT-5.3 Codex (56.8%), Claude Opus 4.6 + WarpGrep v2 (57.5%), Gemini 3.1 Pro (54.2%). Same model spans 45.9%–55.4% depending entirely on scaffold.

---

### Terminal-Bench 2.0 (Top 10)

> 89-task benchmark covering code compilation, model training, server setup, sysadmin, security, and data science. Paper: arXiv:2601.11868 (Jan 2026). Original 80-task Terminal-Bench is now flagged as saturated and no longer accepting new runs.

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | GPT-5.3 Codex | 77.3% | Mar 2026 |
| 2 | GPT-5.4 | 75.1% | Mar 2026 |
| 3 | Gemini 3.1 Pro | 68.5% | Mar 2026 |
| 4 | Claude Opus 4.6 | 65.4% | Mar 2026 |
| 5 | GPT-5.2 Codex | 64.0% | Mar 2026 |
| 6 | GPT-5.4 mini | 60.0% | Mar 2026 |
| 7 | Claude Opus 4.5 | 59.3% | Mar 2026 |
| 8 | Claude Sonnet 4.6 | 59.1% | Mar 2026 |
| 9 | GLM-5 | 56.2% | Mar 2026 |
| 10 | Gemini 3 Pro | 54.2% | Mar 2026 |

Average across 25 ranked models: 52.5%. Terminal-Bench Hard variant: GPT-5.4 (xhigh) leads at 57.6%. Accuracy drops from ~65% on easy tasks to ~16% on hard tasks across all models.

---

### LiveCodeBench (Top 10)

> Continuously sourced from LeetCode, AtCoder, and CodeForces. 201 models evaluated as of Mar 22, 2026. Anti-contamination: problems tagged by release date. Scores below are pass@1 on code generation.

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | DeepSeek-V3.2 (Thinking) | 83.3% | Mar 2026 |
| 2 | MiniMax M2 | 83.0% | Mar 2026 |
| 3 | LongCat-Flash-Thinking-2601 | 82.8% | Mar 2026 |
| 4 | Nemotron 3 Super (120B A12B) | 81.2% | Mar 2026 |
| 5 | Grok-3 Mini | 80.4% | Mar 2026 |
| 6 | Grok 4 Fast | 80.0% | Mar 2026 |
| 7 | Grok-3 | 79.4% | Mar 2026 |
| 8 | Grok-4 Heavy | 79.4% | Mar 2026 |
| 9 | LongCat-Flash-Thinking | 79.4% | Mar 2026 |
| 10 | Grok-4 | 79.0% | Mar 2026 |

Other notables: Gemini 3.1 Pro (81.3%), Kimi K2.5 (85%), Claude Opus 4.6 (76.0%), Claude Sonnet 4.6 (72.4%). **Caution:** A 91.7% Gemini figure circulates in some aggregators — cannot be corroborated from the primary leaderboard; treat as unverified. LiveCodeBench Pro (Elo): Gemini 3.1 Pro leads at 2,887 Elo.

---

### HumanEval (Selected Results)

> **Status: Saturated.** 164 hand-crafted problems, public since 2021. Retained as a baseline reference only — not a differentiator for frontier models. Contamination risk is very high.

| Model | Score | Source | Date |
|-------|-------|--------|------|
| Kimi K2.5 (Reasoning) | 99.0% | BenchLM.ai (self-reported) | Mar 2026 |
| Claude Sonnet 4.5 | 97.6% | pricepertoken.com | Mar 2026 |
| DeepSeek R1 | 97.4% | pricepertoken.com | Mar 2026 |
| Grok 4 | 97.0% | pricepertoken.com | Mar 2026 |
| GPT-5.4 Pro | 95.0% | BenchLM.ai (self-reported) | Mar 2026 |
| Claude Opus 4.6 | 95.0% | DataLearner.ai | Mar 2026 |
| GLM-4.7 | 94.2% | Zhipu AI (self-reported) | Mar 2026 |

BigCodeBench is the recognized successor for harder, more realistic tasks.

---

## New Benchmarks & Methodology

### New Benchmarks (Late 2025 – Early 2026)

**SWE-bench Pro** (Scale AI, late 2025)
Multi-language (Python, Go, TypeScript, JavaScript), 1,865 tasks from 41 repositories including 18 proprietary startup codebases. Public and private splits; private split used for overfitting detection. OpenAI has endorsed it as the replacement for SWE-bench Verified. Paper submitted to OpenReview.

**SWE-rebench** (Nebius, arXiv:2505.20411, late 2025)
Continuously updated pipeline mining real GitHub repos; pool of 21,000+ Python SWE tasks. Uses standardized fixed scaffolding and explicit contamination tracking tied to model release dates. Claude Opus 4.6 currently leads; Kimi K2 Thinking leads pass@1. Designed specifically to address contamination and scaffolding-advantage problems.

**Terminal-Bench 2.0** (Laude Institute / harbor-framework, Jan 2026, arXiv:2601.11868)
89-task upgrade with real terminal workflows. Scored 0.896 on ABC benchmark quality rubric (ranked 2nd among existing benchmarks). Original 80-task version is deprecated.

**GDPval** (OpenAI, ~mid-2025)
1,320 tasks across 44 occupations in 9 U.S. GDP-contributing industries. Tasks are actual professional work products (legal briefs, engineering blueprints, nursing care plans, spreadsheets). Models run with shell access and web browsing via Stirrup harness. Graded by blind pairwise ELO from trained human reviewers — no automated pass/fail. Claude Opus 4.1 led on aesthetics; GPT-5 led on accuracy. Performance more than doubled from GPT-4o (2024) to GPT-5 (2025). An "AA" variant runs on Artificial Analysis.

**ARC-AGI-2** (ARC Prize, 2025–2026)
General reasoning (not coding-specific) but widely tracked: Gemini 3.1 Pro leads at 77.1%, Claude at 68.8%, GPT-5.2 at 52.9%.

**SWE-bench-Live**
Leaderboard using only issues filed after each model's training cutoff to eliminate contamination. Runs alongside the standard leaderboard.

---

## Notable Movements

### OpenAI Retires SWE-bench Verified (Feb 12, 2026)
OpenAI published "Why we no longer evaluate SWE-bench Verified," declaring it contaminated and saturated. Their audit confirmed that GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash Preview could all reproduce verbatim gold patches from memory — including variable names and inline comments not present in the task description. In one logged case, GPT-5.2's chain-of-thought referenced a parameter "added around Django 4.1" — a detail only in Django release notes, not the task. OpenAI found at least 59.4% of the hardest remaining unsolved tasks are flawed or unsolvable under fair conditions.

**Conflict-of-interest note:** Critics observed that OpenAI retired a benchmark where Anthropic held the top spots, simultaneously endorsing SWE-bench Pro where all models start around ~23% — effectively resetting the competitive scoreboard at a moment convenient for OpenAI.

### The Scaffolding Gap Is Now the Dominant Variable
The same base model scores 4–10+ percentage points differently depending on agent scaffold, context retrieval strategy, and tool call management. Claude Opus 4.5 spans 45.9% (SEAL standardized) to 55.4% (best custom scaffold) on SWE-bench Pro. Raw leaderboard comparisons without scaffold disclosure are essentially meaningless.

### Benchmark Gaming Documented at 5x Scale
Qwen2.5-Coder's technical blog claimed 73.7% on Aider; the official Aider leaderboard showed 16.4% for the same model — a near-5x discrepancy attributable to self-reporting on a non-standardized scaffold. This is the clearest documented case of benchmark gaming in the 2025–2026 cycle.

### Prior Contamination Research Now Validated
A 2024 study had found 32.67% of successful SWE-bench patches involved solution leakage (fix outlined in the GitHub issue or linked comments). A March 2025 study found 7.8% of patches marked correct actually fail proper validation. OpenAI's Feb 2026 audit confirms the contamination picture was worse than suspected.

### Field Moving Toward Credible Infrastructure
The community is converging on: (1) private test sets, (2) continuously updated problems (LiveCodeBench, SWE-rebench), (3) human-expert graded outputs (GDPval), and (4) standardized scaffolding runs (SEAL leaderboard). Self-reported scores on public benchmarks are increasingly treated as marketing claims, not technical evidence.

---

## Benchmark Reliability Summary

| Benchmark | Contamination Risk | Scaffolding Control | Status |
|-----------|-------------------|---------------------|--------|
| HumanEval | Very High (public since 2021) | None | Saturated — legacy baseline only |
| SWE-bench Verified | High (confirmed Feb 2026) | None | Disputed / retired by OpenAI |
| SWE-bench Pro (public) | Medium | SEAL standardized option | Active — preferred |
| SWE-bench Pro (private) | Low | Standardized | Active — most credible |
| LiveCodeBench | Low (rolling updates) | None | Active — trusted |
| SWE-rebench | Low (continuous refresh) | Standardized | New — growing adoption |
| Terminal-Bench 2.0 | Low | None specified | Active |
| GDPval | Low (expert-written) | Stirrup framework | New — expert-graded |
