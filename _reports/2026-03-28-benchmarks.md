---
date: 2026-03-28
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks — 2026-03-28

## Leaderboard

### SWE-bench Verified (self-reported, increasingly unreliable — see Methodology section)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | 2025-11-24 | Self-reported; 64K thinking budget, 200K ctx |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-05 | Self-reported; avg over 25 trials |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | 2026-02-19 | Self-reported |
| 4 | MiniMax M2.5 | SWE-bench Verified | 80.2% | 2026-02-12 | Self-reported |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | 2025-12-11 | Self-reported |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | 2026-02-17 | Self-reported |
| 7 | Gemini 3 Flash | SWE-bench Verified | 78.0% | 2025-12-17 | Self-reported |
| 8 | GLM-5 | SWE-bench Verified | 77.8% | 2026-02-11 | Self-reported |
| 9 | Kimi K2.5 | SWE-bench Verified | 76.8% | 2026-01-27 | Self-reported |
| 10 | Seed 2.0 Pro (ByteDance) | SWE-bench Verified | 76.5% | 2026-02-14 | Self-reported |

**Independent standardized harness (vals.ai, identical tools for all models):** Gemini 3.1 Pro Preview leads at 78.80%; Claude Opus 4.6 (Thinking) and GPT-5.4 tied at 78.20% — roughly 2–3 points below self-reported figures.

### SWE-bench Pro — SEAL Standardized Leaderboard

| Rank | Agent | Benchmark | Score | CI | Date | Notes |
|------|-------|-----------|-------|----|------|-------|
| 1 | claude-opus-4-5-20251101 | SWE-bench Pro | 45.89% | ±3.60 | 2025-12-11 | Scale/SEAL standardized scaffold |
| 2 | claude-4-5-Sonnet | SWE-bench Pro | 43.60% | ±3.60 | 2025-09-19 | Standardized |
| 3 | gemini-3-pro-preview | SWE-bench Pro | 43.30% | ±3.60 | 2025-11-26 | Standardized |
| 4 | claude-4-Sonnet | SWE-bench Pro | 42.70% | ±3.59 | 2025-09-19 | Standardized |
| 5 | gpt-5-2025-08-07 (High) | SWE-bench Pro | 41.78% | ±3.49 | 2025-11-26 | Standardized |
| 6 | gpt-5.2-codex | SWE-bench Pro | 41.04% | ±3.57 | 2026-01-27 | Standardized |
| 7 | claude-4-5-haiku | SWE-bench Pro | 39.45% | ±3.55 | 2025-09-19 | Standardized |
| 8 | qwen3-coder-480b-a35b | SWE-bench Pro | 38.70% | ±3.55 | 2026-01-27 | Standardized |
| 9 | minimax-2.1 | SWE-bench Pro | 36.81% | ±3.55 | 2026-01-12 | Standardized |
| 10 | gemini-3-flash | SWE-bench Pro | 34.63% | ±3.55 | 2026-01-12 | Standardized |

*Note: Self-reported SWE-bench Pro scores with custom scaffolding claim 56–57%, a 10+ point gap attributable entirely to scaffold quality.*

### Terminal-Bench 2.0

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% | 2026-03-12 | Tied 1st |
| 1 | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% | 2026-03-12 | Tied 1st |
| 3 | TongAgents/Judy (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% | 2026-03-13 | |
| 4 | ForgeCode (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 78.4% | 2026-03-02 | Tied 4th |
| 4 | SageAgent (GPT-5.3-Codex) | Terminal-Bench 2.0 | 78.4% | 2026-03-13 | Tied 4th |
| 6 | Droid (GPT-5.3-Codex) | Terminal-Bench 2.0 | 77.3% | 2026-02-24 | |
| 7 | Capy (Claude Opus 4.6) | Terminal-Bench 2.0 | 75.3% | 2026-03-12 | |
| 8 | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% | 2026-02-06 | Verified |
| 9 | Terminus-KIRA (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 74.8% | 2026-02-23 | |
| 10 | Terminus-KIRA (Claude Opus 4.6) | Terminal-Bench 2.0 | 74.7% | 2026-02-22 | |

### LiveCodeBench (as of 2026-03-22)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench | 91.7% | 2026-03-22 | |
| 2 | Gemini 3 Flash Preview (Reasoning) | LiveCodeBench | 90.8% | 2026-03-22 | |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench | 89.6% | 2026-03-22 | |
| — | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 0.878 | 2026-03 | v6 subset, 36 models ranked |
| — | GLM-4.7 | LiveCodeBench | 84.9 | 2026-03 | Open-source leader |
| — | Qwen 3.5 | LiveCodeBench | 83.6 | 2026-03 | Open-source runner-up |

### HumanEval (effectively saturated)

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | 99.0% | 2026-03 | BenchLM.ai |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-03-24 | pricepertoken.com |
| 3 | R1 | HumanEval | 97.4% | 2026-03-24 | pricepertoken.com |

*HumanEval is considered retired for frontier model comparisons — 164 problems, public since 2021, near-universal contamination.*

---

## New Benchmarks & Methodology

### New Benchmarks Released (Early 2026)

| Benchmark | Org | Released | Description |
|-----------|-----|----------|-------------|
| **SWE-bench Pro** | Scale AI | Sep 2025 (now de facto standard) | 1,865 tasks across 41 repos; Python/Go/TypeScript/JS; GPL public subset + private proprietary subset (276 tasks). Standardized via SEAL leaderboard. |
| **Terminal-Bench 2.0** | Laude Institute / Stanford | ICLR 2026 | 89 curated agentic terminal tasks: compiling, training models, server config, debugging. Presented at ICLR 2026. |
| **SWE-rebench** | Academic (ICLR 2026) | 2026 | Automated pipeline generating 21,000+ fresh Python SWE tasks from GitHub continuously; color-codes contamination risk per submission. Claude Opus 4.6 leads at 65.3%. |
| **SWE-bench Multilingual** | SWE-bench team | 2026-02 | 300 tasks from 42 repos in 9 languages: C, C++, Go, Java, JS/TS, PHP, Ruby, Rust. |
| **LiveCodeBench Pro** | LiveCodeBench team | 2026 | Harder variant of LiveCodeBench; only 3 models ranked so far, Gemini 3.1 Pro leads. |
| **SWE-bench-Live** | Microsoft | 2025-05 (gaining attention 2026) | Continuously updatable; tracks live GitHub issues; broader repo coverage. Low adoption so far. |
| **GDPval** | OpenAI | Early 2026 | 44 knowledge-work occupations across top 9 US GDP industries; includes software roles but not coding-specific. |
| **OSWorld-Verified** | Third-party | 2026 | Computer-use / agentic workflows. GPT-5.4 leads at ~75%. |

---

## Notable Movements

### OpenAI Retires SWE-bench Verified (2026-02-23/24) — Major Event

OpenAI's Frontier Evals team (Olivia Watkins and Mia Glaese) publicly declared SWE-bench Verified **"saturated and highly contaminated"** and will no longer report scores against it. Key findings:

- **59.4%** of the hardest remaining unsolved tasks have flawed or broken test cases — correct patches can never pass
- GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash Preview can reproduce verbatim gold patches from memory for certain tasks
- In one documented case (`django__django-14725`), GPT-5.2 referenced specific release notes in its chain-of-thought that were not part of the prompt — confirming training data recall
- Over **94%** of SWE-bench Verified issues predate model training cutoffs
- OpenAI now officially endorses **SWE-bench Pro** as the replacement

### Contamination Evidence Accumulating

- SOTA models achieve up to **76% accuracy** on a diagnostic file-path prediction task using only the issue description (no code), vs. **53%** for issues from non-benchmark repositories — a 23-point memorization gap ("The SWE-Bench Illusion," arxiv)
- Models are **3–6× more accurate** at bug localization on SWE-bench Verified vs. held-out decontaminated sets
- **30–33%** of "successful" patches on some configurations pass only due to inadequate test coverage (*SWE-MERA* analysis)

### The Scaffolding Gap

Self-reported results conflate model capability with harness quality:

- Claude Opus 4.5: **45.9%** (SEAL standardized scaffold) vs. **50–55%** (custom scaffold) — a 4–10 point spread from context retrieval alone
- Self-reported SWE-bench Pro claims of 56–57% are 10+ points above the SEAL leaderboard top of 45.9%

### Infrastructure Gaming on Terminal-Bench

CPU/memory allocation can swing Terminal-Bench scores by up to **6 percentage points** — more than the capability gap between leading models. Benchmark runners with uncapped resources achieve structurally higher scores (infrastructure error rate: 0.5% uncapped vs. 5.8% under strict limits). Score differences below ~3pp should be treated with skepticism unless evaluation configuration is documented.

### SE vs. AI Community Tension

A February 2026 arxiv paper (*"What's in a Benchmark? The Case of SWE-Bench in Automated Program Repair"*) highlighted that **patch overfitting** — patches that pass tests without fixing the underlying issue — is well-understood in SE research but "seldom mentioned in papers from the ML/AI community or in industrial blog posts."

### HumanEval Effectively Dead

Near-100% scores from frontier models confirm saturation. Researchers now recommend HumanEval+, BigCodeBench, or LiveCodeBench for serious evaluation.

---

## Sources

- SWE-bench official leaderboard: https://www.swebench.com/
- Scale Labs SEAL SWE-bench Pro: https://labs.scale.com/leaderboard/swe_bench_pro_public
- vals.ai standardized harness: https://www.vals.ai/benchmarks/swebench
- llm-stats.com SWE-bench Verified: https://llm-stats.com/benchmarks/swe-bench-verified
- Terminal-Bench official: https://www.tbench.ai/
- LiveCodeBench leaderboard: https://livecodebench.github.io/leaderboard.html
- SWE-rebench: https://swe-rebench.com
- "What's in a Benchmark?" arxiv: https://arxiv.org/pdf/2602.04449
- Infrastructure skew report: https://www.startuphub.ai/ai-news/artificial-intelligence/2026/ai-coding-benchmark-scores-skewed-by-infrastructure
- Simon Willison SWE-bench Feb 2026: https://simonwillison.net/2026/Feb/19/swe-bench/
