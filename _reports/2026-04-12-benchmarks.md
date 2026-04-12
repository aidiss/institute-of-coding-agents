---
title: "Benchmarks: Who's Winning?"
date: 2026-04-12
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks: Who's Winning?

*Report date: 2026-04-12. Scores go stale fast — always check the source date.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 93.9% | Apr 10, 2026 | ⚠️ Unverified/self-reported; extreme outlier |
| 2 | GPT-5.3 Codex | 85.0% | Apr 2026 | ⚠️ Self-reported; scaffold not disclosed |
| 3 | Claude Opus 4.5 | 80.9% | Feb–Mar 2026 | Independent (Epoch AI v2.0.0) |
| 4 | Claude Opus 4.6 | 80.8% | Feb–Mar 2026 | Independent (Epoch AI v2.0.0) |
| 5 | Gemini 3.1 Pro | 80.6% | Feb–Mar 2026 | Independent |
| 6 | MiniMax M2.5 | 80.2% | Feb–Mar 2026 | Open-weight; leads open-source tier |
| 7 | GPT-5.2 | 80.0% | Feb–Mar 2026 | Self-reported |
| 8 | Claude Sonnet 4.6 | 79.6% | Feb–Mar 2026 | Independent; 5× cheaper than Opus |
| 9 | GLM-5 (Zhipu AI) | 77.8% | Feb–Mar 2026 | Self-reported |
| 10 | Claude Sonnet 4.5 | 77.2% | Feb–Mar 2026 | Independent |

**Scaffold**: Epoch AI v2.0.0 harness for independent results. Self-reported scores may use optimized proprietary scaffolds (scaffold alone can add 10–15 points).

> ⚠️ **Contamination warning**: OpenAI has officially stopped reporting SWE-bench Verified scores, citing confirmed training data contamination across all frontier models tested. The ~35-point gap between Verified (~81%) and Pro (~46%) is largely attributed to contamination and scaffold inflation. The "Claude Mythos Preview" 93.9% result (rank 1) has not been independently verified as of this writing.

---

### SWE-bench Pro (Top 5)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 77.8% | Apr 7, 2026 | ⚠️ Unverified/self-reported |
| 2 | GPT-5.4 | 57.7% | Apr 2026 | ⚠️ Self-reported |
| 3 | GPT-5.3-Codex | 56.8% | Feb–Mar 2026 | Self-reported; optimized scaffold |
| 4 | GPT-5.2-Codex | 56.4% | Feb–Mar 2026 | Self-reported |
| 5 | Claude Opus 4.5 | 45.9% | Feb–Mar 2026 | Scale AI SEAL standardized scaffold |

**Scaffold note**: Scale AI's SEAL leaderboard uses standardized scaffolding for apples-to-apples comparison. Self-reported GPT-5.x-Codex scores use optimized setups — expect ~10-point discount on standardized runs. Three agent systems running the same Opus 4.5 scored 50.2–55.4% on Pro; the spread is scaffold-only.

SWE-bench Pro covers **1,865 tasks** across 41 actively maintained repositories in Python, Go, TypeScript, and JavaScript, with a private subset (276 instances from proprietary codebases).

---

### LiveCodeBench (Top 5)

| Rank | Model | Score | Version | Date Reported |
|------|-------|-------|---------|---------------|
| 1 | Gemini 3 Pro Preview | 91.7% | v6 | Feb–Mar 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | v6 | Feb–Mar 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | v6 | Feb–Mar 2026 |
| 4 | Kimi K2.5 | 85.0% | v6 | Feb–Mar 2026 |
| 5 | Qwen3.5-plus | 83.6% | v6 | Feb 2026 |

LiveCodeBench v6 includes 1,000+ problems (May 2023–2025) across easy/medium/hard tiers, continuously refreshed to resist contamination. Claude Opus 4.6 scores 76.0% on LCB.

---

### HumanEval (Selected)

| Model | Score | Date Reported | Notes |
|-------|-------|---------------|-------|
| Kimi K2.5 | 99.0% | Feb–Mar 2026 | Near-perfect; self-reported |
| Claude Opus 4.6 | 95.0% | Mar 2026 | Independent |
| GLM-4.7 | 94.2% | Feb–Mar 2026 | Self-reported |

> ⚠️ **HumanEval is saturated** — frontier models cluster near 95–99%. Training contamination is well-documented. Benchmark no longer differentiates frontier models. Use LiveCodeBench for meaningful signal.

---

### Terminal-Bench (Selected)

| Model | Score | Date Reported | Notes |
|-------|-------|---------------|-------|
| GPT-5.4 | 75.1% | Apr 2026 | Self-reported; Terminal-Bench 2.0 |
| Claude Opus 4.6 | 74.7% | Feb 2026 | Up from 65.4% in January |
| Claude Sonnet 4.6 | 59.1% | Mar 2026 | Self-reported |

Terminal-Bench measures autonomous agentic execution in a real terminal (e.g., build Linux kernel from source, complex sysadmin tasks). Part of the **Artificial Analysis Coding Index** alongside LiveCodeBench and SciCode.

---

## New Benchmarks & Methodology

### SWE-bench Live (Active)
Contamination-resistant, continuously updated with new GitHub issues post-knowledge-cutoff. Designed as the long-term successor to SWE-bench Verified for frontier evaluation. Tasks are sourced after each model's release date to prevent contamination.

### SWE-rebench (Active)
Alternative leaderboard using a rolling window of fresh GitHub problems, each model run 5× with a standardized 128K-context ReAct scaffold. Hosted by Nebius. Six LLM scores published as of April 2026. See [swe-rebench.com](https://swe-rebench.com).

### Terminal-Bench 2.0 (Active)
Expanded version of Terminal-Bench; GPT-5.4 (75.1%) leads as of April 2026. Tests agentic execution in real terminal environments vs. code-writing tasks.

### GDPval (Recent)
Spans **44 knowledge work occupations** from the top 9 U.S. GDP-contributing industries. Designed to measure economically valuable digital work breadth rather than coding-only benchmarks.

### METR Time Horizon Benchmark (Active)
Measures the human task duration at which a model reaches 50% success. Captures the "how long can an agent work autonomously?" dimension missing from pass/fail benchmarks.

### Artificial Analysis Coding Index
Averages LiveCodeBench + SciCode + Terminal-Bench Hard. Recommended over HumanEval alone for coding-specific model selection. Claude Mythos Preview (provisional) leads at 100.0 weighted, followed by Gemini 3.1 Pro (94.3) and Claude Opus 4.6 (90.8).

---

## Notable Movements

- **Claude Mythos Preview debuts (Apr 2026)**: An apparently new Anthropic model claims 93.9% on SWE-bench Verified and 77.8% on SWE-bench Pro — scores that would be extreme outliers relative to all prior results. No independent verification available as of Apr 12, 2026. Treat as provisional.

- **GPT-5.4 Terminal-Bench lead (Apr 2026)**: GPT-5.4 self-reports 75.1% on Terminal-Bench 2.0, narrowly edging Claude Opus 4.6's 74.7%. Self-reported; not independently confirmed.

- **OpenAI deprecates SWE-bench Verified**: Now official. OpenAI confirmed contamination across GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash Preview using automated red-teaming. All Verified scores from prior quarters should be read with the contamination flag.

- **Open-weight models remain competitive**: MiniMax M2.5 (80.2%) continues to match closed frontier models on SWE-bench Verified. Three Chinese open-source models hold top-10 spots.

- **Scaffold spread remains large**: The Grok 4 scaffold gap (self-reported ~72–75% vs. independent 58.6% on vals.ai) exemplifies the ~15-point scaffold inflation problem still unresolved in leaderboard methodology.

---

## Methodological Disputes & Contamination Concerns

**SWE-bench Verified contamination remains the central story of the benchmark landscape.**

- Academic analysis (arxiv 2602.04449) finds models achieve up to **76% accuracy via memorization alone** on contaminated subsets; bug localization accuracy is **3–6× higher** on Verified than on held-out sets.
- OpenAI confirmed contamination across every frontier model tested and has officially abandoned SWE-bench Verified reporting.
- Agent scaffolding inflates Verified scores by 10–15 points: the same base model can range from 69% to 81% depending purely on the harness.
- The ~35-point Verified-vs-Pro gap (81% vs. ~46%) is the clearest evidence that Verified no longer measures generalization at the frontier.
- **SWE-bench-Live** and **SWE-rebench** are emerging as the contamination-resistant alternatives, but neither has the critical mass of submissions yet to replace Verified as the de facto leaderboard.
- "Claude Mythos Preview" at 93.9% Verified, if accurate, would imply a model regime change; more likely explanation is scaffold optimization on a contaminated benchmark.

---

## Sources

- [SWE-bench Leaderboard (official)](https://www.swebench.com/)
- [SWE-bench Verified | Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified/)
- [SWE-Bench Verified Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [Scale Labs SWE-Bench Pro Leaderboard](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro: Why 46% Beats 81% — MorphLLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-Bench Verified — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Pro — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [Why we no longer evaluate SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Is SWE-bench Verified Contaminated? — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [What's in a Benchmark? SWE-Bench in Automated Program Repair (arxiv 2602.04449)](https://arxiv.org/pdf/2602.04449)
- [SWE-rebench — Nebius](https://nebius.com/blog/posts/introducing-swe-rebench)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [LiveCodeBench | Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench GitHub](https://github.com/LiveCodeBench/LiveCodeBench)
- [SWE-bench & LiveCodeBench Leaderboard (Mar 2026) — BenchLM.ai](https://benchlm.ai/coding)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
- [LLM Benchmarks 2026 — lxt.ai](https://www.lxt.ai/blog/llm-benchmarks/)
- [LM Council AI Benchmarks Apr 2026](https://lmcouncil.ai/benchmarks)
- [SWE-bench vals.ai](https://www.vals.ai/benchmarks/swebench)
