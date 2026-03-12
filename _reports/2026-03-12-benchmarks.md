---
title: "Benchmarks: Who's Winning?"
date: 2026-03-12
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks: Who's Winning?

*Report date: 2026-03-12. Scores go stale fast — always check the source date.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Opus 4.5 | 80.9% | Feb–Mar 2026 | Independent (Epoch AI v2.0.0) |
| 2 | Claude Opus 4.6 | 80.8% | Feb–Mar 2026 | Independent (Epoch AI v2.0.0) |
| 3 | Gemini 3.1 Pro | 80.6% | Feb–Mar 2026 | Independent |
| 4 | MiniMax M2.5 | 80.2% | Feb–Mar 2026 | Open-weight; leads open-source tier |
| 5 | GPT-5.2 | 80.0% | Feb–Mar 2026 | Self-reported |
| 6 | Claude Sonnet 4.6 | 79.6% | Feb–Mar 2026 | Independent; 5× cheaper than Opus |
| 7 | GLM-5 (Zhipu AI) | 77.8% | Feb–Mar 2026 | Self-reported |
| 8 | Claude Sonnet 4.5 | 77.2% | Feb–Mar 2026 | Independent |
| 9 | Kimi K2.5 | 76.8% | Feb–Mar 2026 | Self-reported |
| 10 | DeepSeek V3.2 | ~75% | Feb–Mar 2026 | Self-reported (approximate) |

**Scaffold**: Epoch AI v2.0.0 harness (upgraded Feb 12, 2026) for independent results. Self-reported scores may use optimized proprietary scaffolds.

> ⚠️ **Contamination warning**: OpenAI has officially stopped reporting SWE-bench Verified scores, citing confirmed training data contamination. Models are 3–6× more accurate at localizing bugs on this benchmark vs. held-out sets. Reported contamination rates reach 8–10%. The ~35-point gap between Verified (~81%) and Pro (~46%) is largely attributed to contamination.

---

### SWE-bench Pro (Top 5)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | GPT-5.3-Codex | 56.8% | Feb–Mar 2026 | Self-reported; optimized scaffold |
| 2 | GPT-5.2-Codex | 56.4% | Feb–Mar 2026 | Self-reported |
| 3 | GPT-5.2 | 55.6% | Feb–Mar 2026 | Self-reported |
| 4 | Claude Opus 4.5 | 45.9% | Feb–Mar 2026 | Scale AI SEAL standardized scaffold |
| 5 | Claude Opus 4.1 | ~22.7% | Feb–Mar 2026 | Scale SEAL public set; 17.8% private |

**Scaffold note**: Scale AI's SEAL leaderboard uses standardized scaffolding for apples-to-apples comparison. Self-reported GPT-5.x-Codex scores use optimized setups and are ~10 points higher than standardized runs.

SWE-bench Pro covers **1,865 tasks** across 41 professional repositories and includes a **private subset** (276 instances from proprietary codebases) to test generalization.

---

### LiveCodeBench (Top 5)

| Rank | Model | Score | Version | Date Reported |
|------|-------|-------|---------|---------------|
| 1 | Gemini 3 Pro Preview | 91.7% | v6 | Feb–Mar 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | v6 | Feb–Mar 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | v6 | Feb–Mar 2026 |
| 4 | Kimi K2.5 | 85.0% | v6 | Feb–Mar 2026 |
| 5 | Qwen3.5-plus | 83.6% | v6 | Feb 2026 |

LiveCodeBench v6 includes 1,000+ problems (May 2023–2025) at easy/medium/hard tiers, continuously refreshed to resist contamination.

---

### HumanEval (Selected)

| Model | Score | Date Reported | Notes |
|-------|-------|---------------|-------|
| Kimi K2.5 | 99.0% | Feb–Mar 2026 | Near-perfect; self-reported |
| GLM-4.7 | 94.2% | Feb–Mar 2026 | Self-reported |
| Qwen 2.5 Coder 7B | 88.4% | 2025–2026 | Beats larger models |

> ⚠️ **HumanEval is saturated** — frontier models cluster near 93–99%. Training contamination is well-documented. Use LiveCodeBench for more signal.

---

### Terminal-Bench 2.0 (Selected)

| Model | Score | Date Reported | Notes |
|-------|-------|---------------|-------|
| Claude Opus 4.6 | 74.7% | Feb 2026 | Up from 65.4% in January |
| (Leading local model) | 41.6% | Feb–Mar 2026 | GPT-5 mini scores 31.9 on same test |
| GPT-5 mini | 31.9% | Feb–Mar 2026 | Self-reported |

Terminal-Bench Hard is an agentic benchmark covering software engineering, sysadmin, and data processing tasks in a real terminal environment (e.g., "build Linux kernel 6.9 from source"). Part of the **Artificial Analysis Coding Index** alongside LiveCodeBench and SciCode.

---

## New Benchmarks & Methodology

### GDPval (New — OpenAI-led, Feb 2026)
Spans **44 knowledge work occupations** drawn from the top 9 U.S. GDP-contributing industries. Designed to measure economically valuable digital work, not just coding tasks. Analyzed by Epoch AI alongside RLI and APEX-Agents.

### METR Time Horizon Benchmark
Measures the human task duration at which a model reaches 50% success. Sources tasks from RE-Bench (ML research engineering), HCAST (general software engineering), and SWAA (software operations). Captures the "how long can an agent work autonomously?" dimension missing from pass/fail benchmarks.

### Epoch Capabilities Index (ECI)
Aggregates **39 benchmark scores** into a single index, weighting harder tasks more. Best single-number summary of frontier model capabilities across reasoning, coding, math, and instruction following.

### Artificial Analysis Coding Index
Averages LiveCodeBench + SciCode + Terminal-Bench Hard. Recommended over HumanEval alone for coding-specific model selection.

### SWE-bench Live
Contamination-resistant, continuously updated with new GitHub issues post-knowledge-cutoff. Designed to supersede SWE-bench Verified for frontier evaluation.

### SWE-rebench
Alternative leaderboard using rotating/decontaminated splits. See [swe-rebench.com](https://swe-rebench.com).

---

## Notable Movements

- **Feb 12, 2026 — Epoch AI v2.0.0 refresh**: Major infrastructure upgrade (new scaffold, environments, higher token limits). Re-evaluated key models independently. Scores improved significantly vs. prior runs; this is now the reference harness for independent SWE-bench Verified results.

- **Claude Opus 4.6 Terminal-Bench surge**: Jumped from 65.4% → 74.7% on Terminal-Bench 2.0, the sharpest single-version jump tracked this cycle.

- **Gemini 3.1 Pro enters top 3**: Surged to 80.6% on SWE-bench Verified, up from outside the top 5 in Q4 2025.

- **Open-weight models reach frontier tier**: MiniMax M2.5 (80.2%) is the first open-weight model to match or beat closed frontier models on SWE-bench Verified. Three Chinese open-source models now sit in the top 10.

- **OpenAI stops reporting SWE-bench Verified**: Officially deprecated in favor of SWE-bench Pro, citing confirmed contamination in every frontier model they tested.

- **Grok 4 scaffold gap**: xAI self-reports 72–75% on SWE-bench Verified; vals.ai independent run with SWE-agent scaffold shows **58.6%** — a ~15-point discrepancy attributable entirely to scaffold choice.

- **Scaffolding spread**: Three agent systems running the same Opus 4.5 model scored 49.8–51.8% on SWE-bench Pro — a ~2-point spread from scaffold alone. On SWE-bench Verified the scaffold gap can exceed 15 points (Grok 4 case above).

---

## Methodological Disputes & Contamination Concerns

**SWE-bench Verified contamination is now the central story of the benchmark landscape.**

- Academic analysis (arxiv 2602.04449) finds models achieve up to **76% accuracy via memorization alone** on contaminated subsets; bug localization accuracy is **3–6× higher** on Verified than on held-out sets.
- A majority of frontier model "passes" on Verified can be attributed to training data recall, not generalization.
- OpenAI confirmed contamination across GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash Preview using automated red-teaming.
- **Patch overfitting** — fixing tests without fixing the underlying bug — remains underreported in AI/ML literature relative to the software engineering community.
- The field is coalescing around SWE-bench Pro + private subsets + live benchmarks as the path forward. Static public datasets are structurally compromised for frontier evaluation.

---

## Sources

- [SWE-bench Leaderboard (official)](http://www.swebench.com)
- [SWE-bench Verified | Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-Bench Verified Leaderboard February 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [Scale Labs SWE-Bench Pro Leaderboard](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro: Why 46% Beats 81% — MorphLLM](https://www.morphllm.com/swe-bench-pro)
- [Why we no longer evaluate SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [What's in a Benchmark? SWE-Bench in Automated Program Repair (arxiv 2602.04449)](https://arxiv.org/pdf/2602.04449)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [LiveCodeBench | Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench GitHub](https://github.com/LiveCodeBench/LiveCodeBench)
- [Coding Benchmarks 2026 — BenchLM.ai](https://benchlm.ai/coding)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
- [Epoch AI Benchmarks & Data](https://epoch.ai/benchmarks)
- [LM Council AI Benchmarks Mar 2026](https://lmcouncil.ai/benchmarks)
- [SWE-bench vals.ai](https://www.vals.ai/benchmarks/swebench)
