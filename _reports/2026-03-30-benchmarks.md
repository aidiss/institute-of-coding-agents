---
date: 2026-03-30
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-03-30

Who's winning? A snapshot of the competitive evaluation landscape across SWE-bench, Terminal-Bench, LiveCodeBench, and HumanEval.

---

## Leaderboard

### SWE-bench Verified (Top 10)

> **Status: Contested.** OpenAI officially retired reporting on this benchmark on 2026-02-23, citing >59% flawed tasks and confirmed training data contamination. Self-reported scores are inflated by an estimated 6–10+ points. Standardized harness scores (mini-SWE-agent v2.0.0) are shown where available.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-17 | Self-reported (Anthropic) |
| 2 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | ~Mar 2026 | Self-reported (Google) |
| 3 | MiniMax M2.5 | SWE-bench Verified | 80.2% | 2026-02-17 | Self-reported; top open-weight |
| 4 | GPT-5.2 | SWE-bench Verified | 80.0% | ~early 2026 | Self-reported (OpenAI) |
| 5 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | ~Mar 2026 | Self-reported (Anthropic) |
| 6 | GLM-5 | SWE-bench Verified | 77.8% | ~Mar 2026 | Self-reported (Zhipu AI) |
| 7 | Claude Sonnet 4.5 | SWE-bench Verified | 77.2% | ~late 2025 | Self-reported (Anthropic) |
| 8 | Kimi K2.5 | SWE-bench Verified | 76.8% | ~Mar 2026 | Self-reported (Moonshot AI) |
| 9 | Claude Opus 4.5 | SWE-bench Verified | 76.8% | 2026-02-17 | **Official harness score** |
| 10 | Gemini 3 Flash | SWE-bench Verified | 75.8% | 2026-02-17 | Official harness (Google) |

### SWE-bench Pro (Top 10)

> Scale AI SEAL leaderboard. Standardized scaffold (250-turn limit), 1,865 tasks including private commercial repos. More contamination-resistant than Verified.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.89% ±3.60 | 2025-12-11 | SEAL standardized scaffold |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.60% ±3.60 | 2025-09-19 | SEAL standardized scaffold |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro | 43.30% ±3.60 | 2025-11-26 | SEAL standardized scaffold |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.70% ±3.59 | 2025-09-19 | SEAL standardized scaffold |
| 5 | GPT-5 High | SWE-bench Pro | 41.78% ±3.49 | 2025-11-26 | SEAL standardized scaffold |
| 6 | GPT-5.2 Codex | SWE-bench Pro | 41.04% ±3.57 | 2026-01-27 | SEAL standardized scaffold |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.45% ±3.55 | 2025-09-19 | SEAL standardized scaffold |
| 8 | Qwen3 Coder 480B | SWE-bench Pro | 38.70% ±3.55 | 2026-01-27 | SEAL standardized scaffold |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.81% ±3.55 | 2026-01-12 | SEAL standardized scaffold |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.63% ±3.55 | 2026-01-12 | SEAL standardized scaffold |

*With custom (non-standardized) scaffolding, Claude Opus 4.5 reaches 50–55%; self-reported peaks: GPT-5.4 at 57.7%.*

### Terminal-Bench 2.0 (Top 3)

> 89 tasks in sandboxed terminal environments. Scores from tbench.ai / Artificial Analysis, March 2026.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% | 2026-03-25 | tbench.ai leaderboard |
| 2 | GPT-5.4 | Terminal-Bench Hard | 57.6% | ~Mar 2026 | Artificial Analysis subset |
| 3 | Gemini 3.1 Pro Preview | Terminal-Bench Hard | 53.8% | ~Mar 2026 | Artificial Analysis subset |

*25 models evaluated; average score 52.5%. Terminal-Bench v1 (80 tasks) is archived/saturated.*

### LiveCodeBench (Top 3)

> Contamination-resistant; pulls from LeetCode, AtCoder, Codeforces with release-date gating.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench Overall | 91.7% | 2026-03-22 | pricepertoken.com, ~202 models |
| 2 | Gemini 3 Flash Preview | LiveCodeBench Overall | 90.8% | 2026-03-22 | pricepertoken.com |
| 3 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | ~Mar 2026 | llm-stats.com, 36 models |

### HumanEval (Top 5)

> **Status: Saturated.** Near-perfect scores are common; results should be treated skeptically given the benchmark's age (2021) and likely training data overlap.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Kimi K2.5 Reasoning | HumanEval | 99.0% | ~Mar 2026 | BenchLM.ai; near-saturation |
| 1 | Kimi K2.5 | HumanEval | 99.0% | ~Mar 2026 | BenchLM.ai; near-saturation |
| 3 | Grok 4 | HumanEval | 97.0% | ~Mar 2026 | pricepertoken.com |
| 4 | Claude Sonnet 4.5 | HumanEval | 97.6% | ~Mar 2026 | pricepertoken.com |
| 5 | DeepSeek R1 | HumanEval | 97.4% | ~Mar 2026 | pricepertoken.com |

---

## New Benchmarks & Methodology

### New Benchmarks (2025–2026)

| Benchmark | Author | Released | Key Feature |
|-----------|--------|----------|-------------|
| **SWE-bench Pro** | Scale AI | Sep 2025 | 1,865 tasks; copyleft + private commercial repos; contamination-resistant |
| **SWE-bench-Live** | Microsoft | NeurIPS 2025 | Monthly-updated live issues; frozen Lite/Verified splits for fair comparison |
| **SWE-rebench** | Nebius | 2025 | 21,000+ Python tasks; automated pipeline; explicit contamination date-flagging; RL training data |
| **Terminal-Bench 2.0** | tbench.ai / vals.ai | Mar 2026 | Expanded to 89 tasks; rigor score 0.896/1.0 (2nd highest of all benchmarks) |
| **LiveCodeBench Pro** | LiveCodeBench team | 2025 | Harder competitive programming; ELO-style scoring |
| **Arena Code** | lmarena.ai | 2025 | Human preference-based coding arena |
| **GDPval** | OpenAI-led | 2025–26 | 44 knowledge-work occupations across top U.S. GDP industries |

---

## Notable Movements

### OpenAI Retires SWE-bench Verified (2026-02-23)
OpenAI's Frontier Evals team stopped reporting SWE-bench Verified results after internal analysis found:
- **>59% of remaining tasks are flawed** — tests that accept incorrect solutions
- **All tested frontier models** (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce verbatim gold patches — direct evidence of training data contamination
- Models score 70%+ on Verified but drop to ~23% on SWE-bench Pro on identical scaffolds; gap attributed mainly to memorization

### The Scaffold Gap
The same model can score 10+ points differently depending on scaffolding alone. Claude Opus 4.5 scores 45.9% on the standardized SEAL scaffold vs. 50–55% with custom scaffolding. Self-reported peaks (GPT-5.4: 57.7%) use proprietary harnesses. This makes cross-provider comparisons on SWE-bench Pro unreliable without scaffold normalization.

### LessLeak-Bench Study (February 2025)
Examined 83 software engineering benchmarks:
- **10.6% data leakage** found in SWE-bench Verified against StarCoder's training data
- Models are **3–6× more accurate** at bug localization on Verified vs. decontaminated sets
- **30%+** of successful "passes" involve direct solution leakage (copying patch from issue text)
- Models can achieve up to **76% accuracy via memorization alone**

### UTBoost / PatchDiff Tooling
Analysis tools show leaderboard pass rates may be **inflated by 6–7 absolute percentage points** due to inadequate test suites. 161 of 500 SWE-bench Verified tasks require only 1–2 lines of change; every SWE-bench Pro task requires 10+ lines by design.

### Private Repo Performance Drop
On SWE-bench Pro's private commercial subset, scores fall sharply: Claude Opus 4.1 drops from 22.7% → 17.8%; GPT-5 drops from 23.1% → 14.9%. This is the clearest signal of how much memorization inflates public-repo scores.

### METR RCT Finding (2025)
A randomized controlled trial by METR found AI tools caused a **19% net slowdown** for experienced developers on real tasks — while participants believed they were 20% faster. Highlights the disconnect between benchmark performance and actual developer productivity.

### Community Direction
The field is moving away from SWE-bench Verified toward:
1. **Private datasets** (SWE-bench Pro commercial subset)
2. **Continuous updates** (SWE-bench-Live monthly refreshes, SWE-rebench pipeline)
3. **Explicit contamination flags** (SWE-rebench flags models on tasks predating their release)
4. **Standardized scaffolds** (Scale AI SEAL: identical tooling for all submitted models)
