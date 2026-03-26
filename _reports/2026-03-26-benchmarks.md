---
title: Benchmarks — Who's Winning?
date: 2026-03-26
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks — Who's Winning?

*Report date: 2026-03-26. Scores go stale fast — dates are noted throughout.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

> **Status: Disputed.** OpenAI declared the benchmark contaminated on Feb 12, 2026 and retired it internally. The official leaderboard remains live but the community is migrating to SWE-bench Pro. All self-reported scores use custom scaffolding; standardized scores use mini-SWE-agent v2.0.0 (bash-only).

| Rank | Agent / Model | Provider | Score (Self-Reported) | Score (Standardized) | Date |
|------|--------------|----------|-----------------------|----------------------|------|
| 1 | Claude Opus 4.5 | Anthropic | ~80.9% | 76.8% | Dec 2025 |
| 2 | Claude Opus 4.6 | Anthropic | ~80.8% | 75.6% | Feb 2026 |
| 3 | Gemini 3.1 Pro | Google | ~80.6% | ~75.8% | Feb 2026 |
| 4 | MiniMax M2.5 | MiniMax | ~80.2% | — | Feb 2026 |
| 5 | GPT-5.4 | OpenAI | ~80.0% | — | Mar 2026 |
| 6 | Claude Sonnet 4.6 | Anthropic | ~79.6% | — | Feb 2026 |
| 7 | Claude Opus 4.5 (bash-only) | Anthropic | 76.8% | 76.8% | Feb 2026 |
| 8 | Gemini 3 Flash (high reasoning) | Google | 75.8% | 75.8% | Feb 2026 |
| 9 | Kimi K2.5 | Moonshot AI | ~76.8% | — | Feb 2026 |
| 10 | DeepSeek V3.2 | DeepSeek | ~72–74% | — | Jan 2026 |

**Note:** The gap between self-reported and standardized scores is 4–8 points, entirely attributable to scaffold differences. The top cluster is compressed within ~2 points; differences are not statistically meaningful. OpenAI has stopped reporting on this benchmark citing contamination.

---

### SWE-bench Pro — SEAL Standardized (Top 10)

> Scale AI's multi-language benchmark (Python, Go, TypeScript, JavaScript). 1,865 tasks from 41 real repositories. SEAL leaderboard uses identical tooling and a 250-turn limit. **Custom-scaffold self-reported scores run 4–10 points higher than SEAL standardized.**

| Rank | Agent / Model | Score (±95% CI) | Date |
|------|--------------|-----------------|------|
| 1 | claude-opus-4-5-20251101 | 45.89% ±3.60 | Dec 2025 |
| 2 | claude-4-5-sonnet | 43.60% ±3.60 | Sep 2025 |
| 3 | gemini-3-pro-preview | 43.30% ±3.60 | Nov 2025 |
| 4 | claude-4-sonnet | 42.70% ±3.59 | Sep 2025 |
| 5 | gpt-5-2025-08-07 (High) | 41.78% ±3.49 | Nov 2025 |
| 6 | gpt-5.2-codex | 41.04% ±3.57 | Jan 2026 |
| 7 | claude-4-5-haiku | 39.45% ±3.55 | Sep 2025 |
| 8 | qwen3-coder-480b-a35b | 38.70% ±3.55 | Jan 2026 |
| 9 | minimax-2.1 | 36.81% ±3.55 | Jan 2026 |
| 10 | gemini-3-flash | 34.63% ±3.55 | Jan 2026 |

Custom-scaffold highlights (self-reported, not standardized): GPT-5.3-Codex CLI ~57.0%, Claude Code (Opus 4.5) ~55.4%, Auggie (Opus 4.5) ~51.8%, Cursor (Opus 4.5) ~50.2%. Private codebase split is significantly harder: Claude Opus 4.1 drops from 22.7% → 17.8%, GPT-5 drops from 23.1% → 14.9%.

---

### Terminal-Bench 2.0 (Top 10)

> 89-task benchmark covering code compilation, model training, server setup, sysadmin, security, and data science. Paper: arXiv:2601.11868 (Jan 2026). 120 entries as of March 2026. Original 80-task Terminal-Bench is deprecated. ABC benchmark-quality score: 0.896 (2nd highest among evaluated benchmarks).

| Rank | Model | Agent | Score | Date |
|------|-------|-------|-------|------|
| 1 | Claude Opus 4.6 | ForgeCode | 81.8% | Mar 2026 |
| 1 | GPT-5.4 | ForgeCode | 81.8% | Mar 2026 |
| 3 | Gemini 3.1 Pro | TongAgents | 80.2% | Mar 2026 |
| 4 | GPT-5.3-Codex | Various | 78.4% | Mar 2026 |
| 5 | Gemini 3 Pro | Various | ~65–69% | Mar 2026 |
| 6 | GPT-5.2 | Various | ~61–65% | Mar 2026 |
| 7 | Claude Opus 4.5 | Various | ~59–63% | Mar 2026 |
| 8 | Gemini 3 Flash | Various | ~51–64% | Mar 2026 |
| 9 | Claude Sonnet 4.5 | Various | ~43–47% | Mar 2026 |
| 10 | Claude Haiku 4.5 | Various | ~14–36% | Mar 2026 |

**Note:** The ForgeCode scaffold provides a significant boost — same models under other scaffolds score substantially lower. Terminal-Bench Hard variant (Artificial Analysis): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8%, GPT-5.3 Codex 53.0%. Scaffold matters as much here as on SWE-bench.

---

### LiveCodeBench (Top 10)

> Continuously sourced from LeetCode, AtCoder, and CodeForces. ~201 models evaluated. Anti-contamination: problems tagged by release date. Scores are pass@1 on code generation.

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 22, 2026 |
| 2 | Gemini 3 Flash Preview | 90.8% | Mar 22, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 22, 2026 |
| 4 | DeepSeek-V3.2 (Thinking) | 83.3% | Mar 2026 |
| 5 | Kimi K2.5 (Reasoning) | 82.9% | Mar 2026 |
| 6 | Gemini 3.1 Pro | 81.3% | Mar 2026 |
| 7 | MiniMax M2 | 83.0% | Mar 2026 |
| 8 | GPT-5.4 Pro | 86.0% (weighted) | Mar 2026 |
| 9 | Claude Opus 4.6 | 76.0% | Mar 2026 |
| 10 | Claude Sonnet 4.6 | 72.4% | Mar 2026 |

**Caution:** Multiple aggregator sites show different scores for the same models due to different evaluation windows (which date ranges of problems are included). The 91.7% Gemini figure comes from PricePerToken (March 22, 2026) and cannot be independently corroborated from the primary leaderboard at time of writing — treat as potentially unverified. LiveCodeBench Pro (Elo-based): Gemini 3.1 Pro leads at 2,887 Elo.

---

### HumanEval (Selected Results)

> **Status: Saturated.** 164 hand-crafted Python problems, public since 2021. Retained as a baseline reference only — not a differentiator at the frontier. Contamination risk is very high.

| Model | Score | Source | Date |
|-------|-------|--------|------|
| Kimi K2.5 (Reasoning) | ~99% | BenchLM.ai (self-reported) | Mar 2026 |
| Kimi K2.5 | ~99% | BenchLM.ai (self-reported) | Mar 2026 |
| Claude Sonnet 4.5 | 97.6% | pricepertoken.com | Mar 2026 |
| DeepSeek R1 | 97.4% | pricepertoken.com | Mar 2026 |
| Grok 4 | 97.0% | pricepertoken.com | Mar 2026 |
| GPT-5.4 Pro | ~95% | BenchLM.ai (self-reported) | Mar 2026 |
| GLM-4.7 | 94.2% | Zhipu AI (self-reported) | Mar 2026 |

At 164 problems, pass@1 differences between adjacent frontier models are statistically insignificant. BigCodeBench is the recognized successor for harder, more realistic coding tasks.

---

## New Benchmarks & Methodology

### New Benchmarks (Late 2025 – Early 2026)

**SWE-bench Pro** (Scale AI, late 2025)
Multi-language (Python, Go, TypeScript, JavaScript), 1,865 tasks from 41 repositories including proprietary startup codebases. Public and private splits; private split used for overfitting detection. Endorsed by OpenAI as the replacement for SWE-bench Verified.

**SWE-rebench** (Nebius, arXiv:2505.20411, 2025)
Continuously updated pipeline mining real GitHub repos; pool of 21,000+ Python tasks. Uses standardized fixed scaffolding and explicit contamination tracking tied to model release dates. Currently 57 problems from 46 repos in a rolling time window.

**SWE-bench Live** (Microsoft/GitHub, NeurIPS 2025)
Leaderboard using only issues filed after each model's training cutoff. Added Multi-Language track (Jan 10, 2026) and Windows/PowerShell track (Mar 8, 2026).

**Terminal-Bench 2.0** (Laude Institute, Jan 2026, arXiv:2601.11868)
89-task upgrade with real terminal workflows. ABC score 0.896 (2nd most rigorous evaluated benchmark). Original 80-task version deprecated.

**LiveAgentBench** (arXiv:2603.02586, March 2026)
104 real-world challenges spanning diverse agent tasks. Full agents outperform base LLMs by ~56%. Very new — limited adoption so far.

**KAMI v0.1** (Kamiwaza Agentic Merit Index, arXiv Nov 2025)
Enterprise-focused agentic benchmark. 170,000 test items, 5.5 billion tokens, 35 model configurations. Key finding: traditional benchmark rankings poorly predict practical agentic performance.

**Multi-SWE-Bench** (2025, arXiv:2504.02605)
Multi-language software engineering benchmark. MiniMax M2.5 leads with 51.3%.

**GDPval** (OpenAI, ~mid-2025)
1,320 tasks across 44 occupations in 9 U.S. GDP-contributing industries. Tasks are actual professional work products (legal briefs, engineering blueprints, nursing care plans). Graded by blind pairwise ELO from trained human reviewers — no automated pass/fail.

---

## Notable Movements

### Contamination Gap Now Quantified (March 2026)
The clearest evidence yet of SWE-bench Verified overfitting: MiniMax M2.5 scores **80.2% on SWE-bench Verified but only 39.6% on SWE-rebench** (fresh problems). Claude Opus 4.6 scores **80.8% on Verified but 51.7% on SWE-rebench** — a 12–29 point drop that is entirely invisible on the old benchmark. This is the most direct measurement of benchmark-specific overfitting published to date.

### "The SWE-Bench Illusion" Paper
A paper (arXiv:2506.12286) found: (1) o3 achieves up to 76% accuracy on file-path identification using only the issue description with no repo context; (2) performance drops sharply (~53%) on external repositories not in the SWE-bench set; (3) 30%+ of successful passes involve direct solution leakage — solution code appears verbatim in the issue text or comments.

### Weak Test Oracles: ~31% of Passing Patches Are Wrong
Frameworks UTBoost and PatchDiff found approximately 31% of instances where patches pass tests have test suites too weak to detect incorrect modifications. One in five "solved" patches from the top-30 agents is incorrect, passing only due to insufficient test coverage. This inflates leaderboard scores by an estimated 6–7 absolute percentage points.

### Scaffolding Gap Remains the Dominant Variable
The same base model spans 45.9%–55.4% on SWE-bench Pro and up to ~12 points on SWE-bench Verified, depending purely on scaffold. Raw leaderboard comparisons without scaffold disclosure are not meaningful technical claims.

### Benchmark Gaming Documented: 5x Self-Reported vs. Actual Gap
Qwen2.5-Coder's technical blog claimed 73.7% on Aider; the official Aider leaderboard showed 16.4% for the same model. Most clearly documented case of benchmark gaming in the 2025–2026 cycle.

### Real-World Gap: AI Tools Slow Developers Down
The METR 2025 randomized controlled trial found experienced open-source contributors were **19% slower** with AI assistance, even as participants believed they were 20% faster ("efficiency illusion"). Benchmark performance on SWE-bench has no demonstrated correlation with this real-world outcome.

---

## Benchmark Reliability Summary

| Benchmark | Contamination Risk | Scaffolding Control | Status |
|-----------|-------------------|---------------------|--------|
| HumanEval | Very High (public since 2021) | None | Saturated — legacy baseline only |
| SWE-bench Verified | High (confirmed Feb 2026) | None | Disputed / retired by OpenAI |
| SWE-bench Pro (public) | Medium | SEAL standardized option | Active — preferred |
| SWE-bench Pro (private) | Low | Standardized | Active — most credible |
| LiveCodeBench | Low (rolling updates) | None | Active — trusted |
| SWE-rebench | Low (continuous refresh) | Standardized | Active — growing adoption |
| Terminal-Bench 2.0 | Low | None standardized | Active |
| Multi-SWE-Bench | Low-Medium | None | New |
| GDPval | Low (expert-written) | Stirrup framework | New — expert-graded |
