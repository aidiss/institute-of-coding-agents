---
date: 2026-04-30
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-30

Who's winning? A snapshot of the competitive evaluation landscape across SWE-bench Verified, SWE-bench Pro, Terminal-Bench, LiveCodeBench, and HumanEval.

---

## Leaderboard

### SWE-bench Verified (Top 10)

> **Status: Contested / Deprecated by OpenAI.** OpenAI stopped reporting Verified scores citing contamination and >59% flawed tasks; their Feb 2026 audit found every frontier model could reproduce verbatim gold patches. Self-reported scores are inflated by an estimated 5–15 points. Scores below are self-reported unless marked otherwise.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% | 2026-04-28 | Self-reported (Anthropic); unverified preview model |
| 2 | GPT-5.5 | SWE-bench Verified | 89.1% | ~Apr 2026 | Self-reported (OpenAI) |
| 3 | Claude Opus 4.7 (Adaptive) | SWE-bench Verified | 87.6% | 2026-04-16 | Self-reported (Anthropic); 1M context |
| 4 | GPT-5.3 Codex | SWE-bench Verified | 85.0% | ~Apr 2026 | Self-reported (OpenAI) |
| 5 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | ~Mar 2026 | Self-reported (Anthropic) |
| 6 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-17 | Self-reported (Anthropic) |
| 7 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | ~Mar 2026 | Self-reported (Google) |
| 8 | MiniMax M2.5 | SWE-bench Verified | 80.2% | 2026-02-17 | Self-reported; top open-weight |
| 9 | GPT-5.2 | SWE-bench Verified | 80.0% | ~early 2026 | Self-reported (OpenAI) |
| 10 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | ~Mar 2026 | Self-reported (Anthropic) |

### SWE-bench Pro (Top 10)

> Scale AI SEAL leaderboard. Standardized scaffold (mini-swe-agent, 250-turn limit), 1,865 tasks spanning Python/Go/TypeScript/JavaScript including private commercial repos. Contamination-resistant by design.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | 2026-04-28 | Self-reported; unverified preview model |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Pro | 64.3% | 2026-04-16 | Self-reported (Anthropic) |
| 3 | GPT-5.4 (xHigh) | SWE-bench Pro | 59.1% | ~Apr 2026 | SEAL mini-swe-agent scaffold |
| 4 | GPT-5.5 | SWE-bench Pro | 58.6% | ~Apr 2026 | Self-reported (OpenAI) |
| 5 | GPT-5.3-Codex | SWE-bench Pro | 56.8% | ~Apr 2026 | Agent system scaffold |
| 6 | GPT-5.2-Codex | SWE-bench Pro | 56.4% | 2026-01-27 | SEAL standardized scaffold |
| 7 | Muse Spark (Meta) | SWE-bench Pro | 55.0% | ~Apr 2026 | Self-reported (Meta) |
| 8 | Claude Opus 4.5 | SWE-bench Pro | 45.89% ±3.60 | 2025-12-11 | SEAL standardized scaffold |
| 9 | Claude Sonnet 4.5 | SWE-bench Pro | 43.60% ±3.60 | 2025-09-19 | SEAL standardized scaffold |
| 10 | Gemini 3 Pro Preview | SWE-bench Pro | 43.30% ±3.60 | 2025-11-26 | SEAL standardized scaffold |

*Note: Rows 1–7 use varied or self-reported scaffolds; rows 8–10 use the SEAL standardized harness. Cross-row comparison is unreliable without scaffold normalization.*

### Terminal-Bench (Top 3)

> Sandboxed terminal environment tasks. Scores from tbench.ai / Artificial Analysis.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | GPT-5.4 | Terminal-Bench | 75.1% | ~Apr 2026 | Artificial Analysis |
| 2 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% | 2026-03-25 | tbench.ai leaderboard |
| 3 | Claude Opus 4.6 | Terminal-Bench | 65.4% | ~Apr 2026 | Artificial Analysis |

*Terminal-Bench v1 (80 tasks) is archived/saturated. v2.0 has 89 tasks and a rigor score of 0.896/1.0.*

### LiveCodeBench (Top 5)

> Contamination-resistant; continuously pulls fresh problems from LeetCode, AtCoder, Codeforces with release-date gating. Covers code generation, self-repair, code execution, and test output prediction.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench | 91.7% | 2026-03-22 | Artificial Analysis / pricepertoken.com |
| 2 | Gemini 3 Flash Preview (Reasoning) | LiveCodeBench | 90.8% | 2026-03-22 | pricepertoken.com |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench | 89.6% | ~Apr 2026 | Self-reported |
| 4 | Kimi K2.5 | LiveCodeBench | 85.0% | ~Apr 2026 | BenchLM.ai |
| 5 | GLM-4.7 | LiveCodeBench | 84.9% | ~Apr 2026 | Self-reported (Zhipu AI) |

*Claude Opus 4.6 scores 76.0%; Gemini 3.1 Pro scores 81.3% (both ~Apr 2026).*

### HumanEval

> **Status: Saturated.** Frontier models universally score 95%+; no longer a meaningful differentiator. Included for reference only.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Kimi K2.5 Reasoning | HumanEval | 99.0% | ~Apr 2026 | BenchLM.ai; near-saturation |
| 1 | Kimi K2.5 | HumanEval | 99.0% | ~Apr 2026 | BenchLM.ai; near-saturation |

---

## New Benchmarks & Methodology

| Benchmark | Author | Released | Key Feature |
|-----------|--------|----------|-------------|
| **SWE-bench Pro** | Scale AI | Sep 2025 | 1,865 tasks; private commercial repos; contamination-resistant by design |
| **SWE-bench-Live** | Microsoft | NeurIPS 2025 | Monthly-updated live issues; frozen Lite/Verified splits for fair comparison |
| **SWE-rebench** | Nebius | 2025 | 21,000+ Python tasks; explicit contamination date-flagging; usable as RL training data |
| **Terminal-Bench 2.0** | tbench.ai / vals.ai | Mar 2026 | Expanded to 89 tasks; rigor score 0.896/1.0 (2nd highest of all benchmarks) |
| **LiveCodeBench Pro** | LiveCodeBench team | 2025 | Harder competitive programming; ELO-style scoring |
| **Arena Code** | lmarena.ai | 2025 | Human preference-based coding arena |

---

## Notable Movements

### Claude Opus 4.7 Released (2026-04-16)
Anthropic's Claude Opus 4.7 launched with a 1M context window. Self-reported scores: **87.6% on SWE-bench Verified** and **64.3% on SWE-bench Pro** — the highest claimed Pro score from any confirmed release as of April 2026. The Pro gap vs. Verified (87.6% → 64.3%) is consistent with the contamination-driven inflation seen across frontier models.

### Claude Mythos Preview Appears on Leaderboards
An unverified entry — "Claude Mythos Preview" — appeared claiming **93.9% on SWE-bench Verified** and **77.8% on SWE-bench Pro** as of ~2026-04-28. These are self-reported figures for a preview (unreleased) model and should be treated with caution until independently verified. If the Pro figure holds under standardized scaffolding, it would represent a substantial jump over any prior result.

### SWE-bench Verified: Contamination Escalates
OpenAI's Feb 2026 audit found that **every frontier model tested** (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce verbatim gold patches for certain Verified tasks. The estimated score inflation from contamination plus weak tests is now **5–15 absolute percentage points** on post-2023 models. OpenAI has ceased Verified reporting entirely and recommends SWE-bench Pro as the primary code eval signal going forward.

### The Verified-to-Pro Deflation Gap Widens
The gap between a model's self-reported Verified score and its Pro score continues to grow as Verified inflates:
- Claude Mythos Preview: 93.9% Verified → 77.8% Pro (−16.1 pp)
- Claude Opus 4.7: 87.6% Verified → 64.3% Pro (−23.3 pp)
- GPT-5.5: 89.1% Verified → 58.6% Pro (−30.5 pp)

This growing divergence is the clearest signal that Verified scores are increasingly measuring memorization rather than capability.

### LiveCodeBench: Gemini Leads, Claude Trails
On the contamination-resistant LiveCodeBench, Gemini 3 Pro Preview (91.7%) and Flash Reasoning (90.8%) lead the field, while Claude Opus 4.6 sits at 76.0% — a 15+ point gap vs. Gemini on this measure. LiveCodeBench remains the most reliable coding signal for contamination-free comparison.

### HumanEval: Fully Retired as Signal
With Kimi K2.5 at 99.0% and most frontier models above 95%, HumanEval provides no differentiation between leading models. It is effectively a saturated benchmark and should no longer appear in primary benchmark comparisons.

---

Sources:
- [SWE-bench Leaderboards](https://www.swebench.com/)
- [SWE-Bench Pro Leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro (2026): Why 46% Beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Verified Leaderboard — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Benchmark 2026 — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Pro Benchmark 2026 — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [Is SWE-bench Verified Contaminated? — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [LiveCodeBench Leaderboard — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench & SWE-bench Leaderboard (Apr 2026) — BenchLM.ai](https://benchlm.ai/coding)
- [Best LLM for Coding in 2026 — WhatLLM.org](https://whatllm.org/best-llm-for-coding)
- [SWE-bench Leaderboard 2026: All Model Scores — CodeAnt AI](https://www.codeant.ai/blogs/swe-bench-scores)
- [SWE-Bench Verified Leaderboard March 2026 — marco.dev](https://www.marc0.dev/en/leaderboard)
- [Every Major AI Benchmark in 2026 — Medium](https://medium.com/@adityakumarjha292004/every-major-ai-benchmark-in-2026-what-the-numbers-actually-mean-and-what-labs-dont-want-you-to-82cb582c1bcf)
