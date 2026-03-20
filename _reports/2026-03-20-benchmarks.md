---
title: "Benchmarks: Who's Winning?"
date: 2026-03-20
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks Report — 2026-03-20

## Leaderboard

### SWE-bench Verified (top scores — contested, included for historical context)

> **Warning:** SWE-bench Verified is now considered contaminated and saturated. OpenAI officially retired it on 2026-02-23. Scores below should not be treated as reliable capability measures. All scores are **self-reported** unless noted.

| Rank | Agent / Model | Benchmark | Score | Date | Notes |
|------|---------------|-----------|-------|------|-------|
| 1 | Claude Opus 4.5 (Anthropic) | SWE-bench Verified | 80.9% | 2026-02 | Independently run (mini-SWE-agent v2.0.0) |
| 2 | Claude Opus 4.6 (Anthropic) | SWE-bench Verified | 80.8% | 2026-03 | Self-reported |
| 3 | Gemini 3.1 Pro (Google) | SWE-bench Verified | 80.6% | 2026-03 | Self-reported |
| 4 | MiniMax M2.5 | SWE-bench Verified | 80.2% | 2026-03 | Self-reported; independent audit ongoing |
| 5 | GPT-5.2 (OpenAI) | SWE-bench Verified | 80.0% | 2026-03 | Self-reported |
| 6 | Claude Sonnet 4.6 (Anthropic) | SWE-bench Verified | 79.6% | 2026-03 | Self-reported |
| 7 | GLM-5 (Zhipu AI) | SWE-bench Verified | 77.8% | 2026-03 | Self-reported |
| 8 | Claude Sonnet 4.5 (Anthropic) | SWE-bench Verified | 77.2% | 2026-02 | Independently run (mini-SWE-agent v2.0.0) |
| 9 | Kimi K2.5 (Moonshot AI) | SWE-bench Verified | 76.8% | 2026-03 | Self-reported |
| 10 | Gemini 3 Flash (Google) | SWE-bench Verified | 75.8% | 2026-02 | Independently run (mini-SWE-agent v2.0.0) |

*The February 2026 leaderboard refresh (mini-SWE-agent v2.0.0) was an independent run. Post-February scores are primarily self-reported and should be treated with caution. Sonar Foundation Agent (79.2%) and other custom-scaffold entries are not comparable to standardized runs.*

---

### SWE-bench Pro — SEAL Standardized Leaderboard (public set, 731 tasks)

> SWE-bench Pro (1,865 tasks, 41 repos, Python/Go/TypeScript/JavaScript) is OpenAI's endorsed replacement for Verified. Scale AI's SEAL leaderboard standardizes scaffolding (SWE-Agent, 250-turn limit) to isolate raw model capability from harness inflation. GPL-licensed public repos act as a legal contamination barrier.

| Rank | Agent / Model | Benchmark | Score | CI | Date | Notes |
|------|---------------|-----------|-------|----|------|-------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.9% | ±3.60 | 2025-12-11 | SEAL standardized scaffold |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% | ±3.60 | 2025-09-19 | SEAL standardized scaffold |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% | ±3.60 | 2025-11-26 | SEAL standardized scaffold |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.7% | ±3.59 | 2025-09-19 | SEAL standardized scaffold |
| 5 | GPT-5 (High) | SWE-bench Pro | 41.8% | ±3.49 | 2025-11-26 | SEAL standardized scaffold |
| 6 | GPT-5.2 Codex | SWE-bench Pro | 41.0% | ±3.57 | 2026-01-27 | SEAL standardized scaffold |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.5% | ±3.55 | 2025-09-19 | SEAL standardized scaffold |
| 8 | Qwen3 Coder 480B-A35B | SWE-bench Pro | 38.7% | ±3.55 | 2026-01-27 | SEAL standardized scaffold |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.8% | ±3.55 | 2026-01-12 | SEAL standardized scaffold |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% | ±3.55 | 2026-01-12 | SEAL standardized scaffold |

*Scaffold inflation: custom harnesses add 4–12 points over SEAL standardized. Claude Opus 4.5 reaches ~49–52% with optimized scaffolds (self-reported). The Verified-to-Pro gap (80.9% → 45.9%) is the clearest contamination signal in current benchmarking.*

*Private-subset decay: on proprietary codebases, Claude Opus 4.1 drops from 22.7% → 17.8%; GPT-5 drops from 23.1% → 14.9% — confirming residual memorization even in the public Pro subset.*

---

### Terminal-Bench 2.0 (autonomous terminal tasks, ICLR 2026)

> 89-task benchmark evaluating agents in realistic CLI environments (server config, debugging, security, data science, compilation). Published at ICLR 2026. Scores as of 2026-03-13 (latest confirmed submissions; no new entries as of 2026-03-20).

| Rank | Agent | Model | Score | Std Err | Date |
|------|-------|-------|-------|---------|------|
| 1 | ForgeCode | Claude Opus 4.6 | 81.8% | ±1.7 | 2026-03-12 |
| 1 | ForgeCode | GPT-5.4 | 81.8% | ±2.0 | 2026-03-12 |
| 3 | TongAgents | Gemini 3.1 Pro | 80.2% | ±2.6 | 2026-03-13 |
| 4 | ForgeCode | Gemini 3.1 Pro | 78.4% | ±1.8 | 2026-03-02 |
| 5 | SageAgent | GPT-5.3-Codex | 78.4% | ±2.2 | 2026-03-13 |
| 6 | Droid (Factory) | GPT-5.3-Codex | 77.3% | ±2.2 | 2026-02-24 |
| 7 | Capy | Claude Opus 4.6 | 75.3% | ±2.4 | 2026-03-12 |
| 8 | Simple Codex | GPT-5.3-Codex | 75.1% | ±2.4 | 2026-02-06 |
| 9 | Terminus-KIRA | Gemini 3.1 Pro | 74.8% | ±2.6 | 2026-02-23 |
| 10 | Terminus-KIRA | Claude Opus 4.6 | 74.7% | ±2.6 | 2026-02-22 |

*Paper ran 32,155 trials across 16 frontier models. Average accuracy drops from ~65% on easy tasks to ~16% on hard tasks. Agent scaffold matters more on terminal tasks than on patch generation: ForgeCode with Gemini 3.1 Pro scores 78.4% despite Gemini ranking lower on SWE-bench metrics. TB 2.0 may saturate within 1–2 years at current trajectory.*

---

### LiveCodeBench (contamination-resistant competitive programming)

> Problems drawn continuously from LeetCode, AtCoder, and Codeforces after model training cutoffs. Scores as of 2026-03-07 (last full leaderboard refresh). No update since 2026-03-19.

| Rank | Model | Score (pass@1) | Organization | Notes |
|------|-------|----------------|--------------|-------|
| 1 | Gemini 3 Pro Preview | 91.7% | Google | Self-reported |
| 2 | Gemini 3 Flash Preview Thinking | 90.8% | Google | Self-reported |
| 3 | DeepSeek V3.2 Speciale | 89.6% | DeepSeek | Self-reported |
| 4 | GLM 4.7 Thinking | 89.4% | Zhipu AI | Self-reported |
| 5 | GPT-5.2 Pro | 88.9% | OpenAI | Self-reported |
| 6 | GPT-OSS-120b | 87.8% | OpenAI | Self-reported |
| 7 | Claude Opus 4.5 Thinking | 87.1% | Anthropic | Self-reported |
| 8 | GPT-5.1 | 86.8% | OpenAI | Self-reported |
| 9 | MiMo-V2-Flash Thinking | 86.8% | Xiaomi | Self-reported |
| 10 | DeepSeek V3.2 Thinking | 86.2% | DeepSeek | Self-reported |

*LiveCodeBench Pro (Elo, hard competitive programming): Gemini 3.1 Pro leads at Elo 2887 vs GPT-5.2 at Elo 2393 — a ~500-point gap on hardest problems. v6 sub-leaderboard (formal submissions only): GLM-4.6 leads at 82.8%, Qwen3-235B-A22B-Thinking at 74.1%.*

*Kimi K2.5 claims 85% on LiveCodeBench (self-reported, MIT-licensed open model) — not yet independently verified.*

---

### HumanEval (saturated — reference only)

> 164-task Python benchmark from OpenAI (2021). Saturated and heavily contamination-prone. No meaningful frontier discrimination. Reported for historical tracking only.

| Rank | Model | Score | Notes |
|------|-------|-------|-------|
| 1 | Kimi K2.5 (Moonshot AI) | ~99.0% | Near-perfect; likely memorized or HumanEval+ variant |
| 2 | GLM-4.7 (Zhipu AI) | 94.2% | Best verified open-source result |
| 3 | Claude Opus 4.6 (Anthropic) | 95.0% | Self-reported |
| — | (average, 65 models tracked) | ~80.9% | — |

*HumanEval is no longer meaningful for frontier comparisons. Use HumanEval+, BigCodeBench, or LiveCodeBench for serious evaluations.*

---

## New Benchmarks & Methodology

- **SWE-bench Pro** (Scale AI, 2025-09, now the de facto standard) — 1,865 tasks, 41 repos, multi-language, GPL public + private proprietary subsets. OpenAI's officially endorsed replacement for Verified. Public-set GPL licensing acts as a legal training-data deterrent.
- **SWE-rebench** (ICLR 2026) — Automated pipeline generating 21,000+ fresh Python tasks from GitHub continuously. Color-codes contamination risk per submission (red = task predates model release, orange = external system reference). Most transparent contamination disclosure available.
- **SWE-bench-Live** (Microsoft, 2025-05) — Continuously updatable benchmark tracking live GitHub issues. Broader repo coverage than original; low adoption so far.
- **Terminal-Bench 2.0** (Laude Institute, ICLR 2026) — 89 curated real-world terminal problems. Included in Artificial Analysis Intelligence Index v4.0.
- **LiveCodeBench Pro** — Harder competitive programming variant with Elo-based leaderboard at livecodebenchpro.com.
- **FrontierMath: Open Problems** (Epoch AI, 2026-01) — Tests AI on genuinely unsolved mathematical research problems. Contamination structurally impossible.
- **ARC-AGI-2** — Harder successor to ARC-AGI-1. Gemini 3.1 Pro reportedly scores 77.1%. Added to Epoch AI's Capabilities Index (March 2026).
- **APEX-Agents** — Added to Epoch AI's Capabilities Index alongside ARC-AGI-2 and HLE (March 2026).
- **GDPval** (OpenAI-led) — Knowledge work benchmark spanning 44 occupations across top 9 GDP-contributing industries. Novel framing: evaluates AI on economic impact rather than task accuracy.
- **Humanity's Last Exam (HLE)** — 2,500 expert-authored questions from ~1,000 contributors across 50 countries. Published in *Nature* 2026.
- **METR Time Horizon** — Measures human task duration at which an AI reaches 50% success. Tasks drawn from RE-Bench, HCAST, and SWAA (ML research, general software engineering, software operations).

---

## Notable Movements

### SWE-bench Verified Retirement — The Contamination Gap Widens

OpenAI retired SWE-bench Verified on 2026-02-23. The clearest signal: Claude Opus 4.5 scores 80.9% on Verified vs. 45.9% on standardized SWE-bench Pro (public set) vs. ~17% on proprietary never-seen codebases. OpenAI's internal audit of 138 flagged tasks found:

- 49 tasks had test specs that rejected functionally correct solutions
- 26 tasks required undocumented behavior not mentioned in problem descriptions
- All tested frontier models (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce gold patches verbatim using only the Task ID

A paper (*The SWE-Bench Illusion*) showed models can identify buggy file paths or plausible fixes using only the issue description, without real repository context — with performance dropping sharply (~53%) on out-of-distribution repositories. SWE-MERA analysis estimates ~32–33% of "successful" patches involve direct solution leakage; ~31% pass due to inadequate test coverage rather than correct behavior.

### Terminal-Bench 2.0: Top Tied, No Change Since March 13

ForgeCode (Claude Opus 4.6) and ForgeCode (GPT-5.4) remain tied at 81.8% as of 2026-03-13 — no new submissions as of today. TongAgents (Gemini 3.1 Pro) holds the #3 spot at 80.2%.

### LiveCodeBench: Google's Widening Lead on Hard Problems

Gemini 3 Pro Preview holds 91.7% composite and leads LiveCodeBench Pro Elo at 2887 — a ~500-point gap over GPT-5.2 (Elo 2393). This is the widest inter-model gap on any major active coding benchmark.

### MiniMax M2.5 Fraud Allegations (Ongoing)

MiniMax's claimed SWE-bench Verified scores triggered independent audits. Investigation remains ongoing as of 2026-03-20; scores are included in the table above but flagged.

### No Cross-Industry Contamination Standards

As of today there are no cross-industry standards for contamination detection, no adoption thresholds, and no enforcement mechanisms. The European Commission Joint Research Center's *"Can We Trust AI Benchmarks?"* identified systemic flaws: misaligned incentives, construct validity problems, and structural gaming. LMArena/Chatbot Arena disclosed that major labs submitted up to 10 entries per model tested privately, publishing only the best — gaining ~100 ELO points per strategic submission cycle.

---

## Sources

- [SWE-bench Leaderboards — swebench.com](https://www.swebench.com/)
- [Scale Labs SWE-Bench Pro Leaderboard (Public)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro Analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [Why SWE-bench Verified no longer measures frontier coding capabilities — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-Bench Pro Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [LiveCodeBench Leaderboard (official)](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — LLM Stats](https://llm-stats.com/benchmarks/humaneval)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [Coding Benchmarks 2026 — BenchLM.ai](https://benchlm.ai/coding)
- [MiniMax M2.5 Benchmark Fraud Debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [SWE-bench Verified Contamination Study — arXiv 2512.10218](https://arxiv.org/html/2512.10218v1)
- [Epoch AI Benchmarks](https://epoch.ai/benchmarks)
