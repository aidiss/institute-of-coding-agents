---
title: "Benchmarks: Who's Winning?"
date: 2026-03-19
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks Report — 2026-03-19

## Leaderboard

### SWE-bench Verified (top scores — contested, included for historical context)

> **Warning:** SWE-bench Verified is now considered contaminated and saturated. OpenAI officially retired it on 2026-02-23. Scores below should not be treated as reliable capability measures. All scores are **self-reported** unless noted.

| Rank | Agent / Model | Benchmark | Score | Date | Notes |
|------|---------------|-----------|-------|------|-------|
| 1 | Claude Opus 4.5 (Anthropic) | SWE-bench Verified | 80.9% | 2026-02 | Independently run (Feb 2026 leaderboard update, mini-SWE-agent v2.0.0) |
| 2 | Gemini 3 Flash (Google) | SWE-bench Verified | 75.8% | 2026-02 | Independently run (mini-SWE-agent v2.0.0) |
| 3 | MiniMax M2.5 | SWE-bench Verified | ~75.x% | 2026-02 | Independently run; fraud allegations ongoing |
| 4 | GLM-5 (Zhipu AI) | SWE-bench Verified | ~74.x% | 2026-03 | Self-reported |
| 5 | Kimi K2.5 (Moonshot AI) | SWE-bench Verified | ~73.x% | 2026-03 | Self-reported |
| 6 | GPT-5.2 (OpenAI) | SWE-bench Verified | 72.8% | 2026-03 | Self-reported |
| 7 | DeepSeek V3.2 | SWE-bench Verified | ~72.x% | 2026-03 | Self-reported |

*The February 2026 leaderboard refresh (Epoch AI / mini-SWE-agent v2.0.0) was an independent run. Scores before that refresh are primarily self-reported. Alternative scaffold numbers (Sonar Foundation Agent: 79.2%; Anthropic internal: ~80.9%) are not comparable to standardized leaderboard runs.*

---

### SWE-bench Pro — SEAL Standardized Leaderboard (public set, 731 tasks)

> SWE-bench Pro (1,865 tasks, 41 repos, Python/Go/TypeScript/JavaScript) is the endorsed replacement for Verified. Scale AI's SEAL leaderboard standardizes scaffolding (SWE-Agent, 250-turn limit) to isolate model capability. GPL-licensed public repos act as a legal contamination barrier.

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

*Scaffold inflation: custom harnesses add 4–12 points over SEAL standardized. Claude Opus 4.5 reaches ~49–52% with optimized scaffolds (self-reported). The Verified-to-Pro gap (80.9% → 45.9%) is the starkest contamination signal in current benchmarking.*

*Private-subset decay: on proprietary codebases Claude Opus 4.1 drops 22.7% → 17.8%; GPT-5 drops 23.1% → 14.9% — confirming residual memorization even in the public Pro subset.*

---

### Terminal-Bench 2.0 (autonomous terminal tasks, ICLR 2026)

> 89-task benchmark evaluating agents in realistic CLI environments (server config, debugging, security, data science, compilation). Published at ICLR 2026. Scores as of 2026-03-13 (latest submissions).

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

*Paper ran 32,155 trials across 16 frontier models. Average accuracy drops from ~65% on easy tasks to ~16% on hard tasks. Performance has nearly doubled since initial release; TB 2.0 may saturate within 1–2 years at current trajectory.*

---

### LiveCodeBench (contamination-resistant competitive programming)

> Problems drawn continuously from LeetCode, AtCoder, and Codeforces after model training cutoffs. Considered among the more reliable coding benchmarks. Scores as of 2026-03-07.

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

*LiveCodeBench Pro (Elo, hard competitive programming): Gemini 3.1 Pro leads at Elo 2887 vs GPT-5.2 at Elo 2393 — a ~500-point gap on hardest problems.*

*v6 sub-leaderboard (formal submissions only): GLM-4.6 leads at 82.8%, Qwen3-235B-A22B-Thinking at 74.1%.*

---

### HumanEval (saturated — reference only)

> 164-task Python benchmark from OpenAI (2021). Saturated and heavily contamination-prone. No meaningful frontier discrimination.

| Rank | Model | Score | Notes |
|------|-------|-------|-------|
| 1 | Kimi K2.5 (Moonshot AI) | ~99.0% | Near-perfect; likely memorized or HumanEval+ variant |
| 2 | GPT-5.4 (OpenAI) | ~95%+ | Self-reported |
| 3 | Kimi K2 0905 | 94.5% | Self-reported |
| — | (average, 65 models tracked) | ~80.9% | — |

*HumanEval is no longer meaningful for frontier comparisons. Use HumanEval+, BigCodeBench, or LiveCodeBench for serious evaluations.*

---

## New Benchmarks & Methodology

- **SWE-bench Pro** (Scale AI, 2025-09, now the de facto standard) — 1,865 tasks, 41 repos, multi-language, GPL public + private proprietary subsets. OpenAI's officially endorsed replacement for Verified.
- **SWE-rebench** (ICLR 2026) — Automated pipeline generating 21,000+ fresh Python SWE tasks from GitHub continuously. Explicitly color-codes contamination risk per submission (red = task predates model release, orange = external system reference). Most transparent contamination disclosure available.
- **SWE-bench-Live** (Microsoft, 2025-05) — Continuously updatable benchmark tracking live GitHub issues. Broader repository coverage than the original; low adoption so far.
- **Terminal-Bench 2.0** (Laude Institute, ICLR 2026) — Harder agentic terminal tasks (89 curated real-world problems). Part of Artificial Analysis Intelligence Index v4.0.
- **LiveCodeBench Pro** — Harder competitive programming variant with Elo-based leaderboard at livecodebenchpro.com.
- **FrontierMath: Open Problems** (Epoch AI, 2026-01) — Tests AI on genuinely unsolved mathematical research problems. Contamination structurally impossible.
- **ARC-AGI-2** — Harder successor to ARC-AGI-1. Gemini 3.1 Pro reportedly scores 77.1%. Added to Epoch AI's Capabilities Index (March 2026).
- **APEX-Agents** — Added to Epoch AI's Capabilities Index alongside ARC-AGI-2 and HLE (March 2026).
- **GDPval** (OpenAI-led) — Knowledge work benchmark spanning 44 occupations across top 9 GDP-contributing industries.
- **Humanity's Last Exam (HLE)** — 2,500 expert-authored questions from ~1,000 contributors across 50 countries. Published in *Nature* 2026.

---

## Notable Movements

### SWE-bench Verified Retirement — Contamination Gap Quantified

OpenAI retired SWE-bench Verified on 2026-02-23. The clearest contamination signal: Claude Opus 4.5 scores 80.9% on Verified vs. 45.9% on the standardized SWE-bench Pro public set vs. ~17% on proprietary never-seen codebases. Models are **3–6× more accurate** at bug localization on Verified tasks than on decontaminated equivalents like BeetleBox or SWE-rebench, despite using the same popular Python repos.

OpenAI's internal analysis of 138 flagged tasks found:
- 49 tasks had test specs that rejected functionally correct solutions
- 26 tasks required undocumented behavior not mentioned in problem descriptions
- All tested frontier models (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce gold patches verbatim via prompting with only the Task ID

Competitive note: OpenAI retired a benchmark where they trailed Anthropic; the new SWE-bench Pro resets the rankings to a tighter cluster.

### Terminal-Bench 2.0: ForgeCode Takes Top Spot

The ForgeCode agent (using Claude Opus 4.6) and ForgeCode (GPT-5.4) are tied at 81.8% as of 2026-03-12 — the highest recorded scores on TB 2.0. TongAgents (Gemini 3.1 Pro) entered the top 3 on 2026-03-13. The agent-model pairing matters more on terminal tasks than on patch generation: ForgeCode with Gemini 3.1 Pro scores 78.4% despite Gemini ranking lower on SWE-bench metrics.

### LiveCodeBench: Google Pulling Ahead on Competitive Programming

Gemini 3 Pro Preview holds 91.7% on the composite LiveCodeBench leaderboard and leads LiveCodeBench Pro Elo at 2887 — a ~500-point advantage over GPT-5.2 (Elo 2393). This is the widest gap between leading models on any major coding benchmark currently active.

### MiniMax M2.5 Fraud Allegations (Ongoing)

MiniMax's claimed SWE-bench Verified scores triggered independent audits questioning whether results reflect genuine capability or benchmark manipulation. The investigation remained ongoing as of 2026-03-19.

### No Contamination Standards Exist

As of today, there are no cross-industry standards for contamination detection, no adoption thresholds, and no enforcement mechanisms. The European Commission Joint Research Center's *"Can We Trust AI Benchmarks?"* identified systemic flaws: misaligned incentives, construct validity problems, and structural gaming. LMArena/Chatbot Arena disclosed that major labs submitted up to 10 entries per model, tested privately, and published only the best — gaining ~100 ELO points per strategic submission.

---

## Sources

- [SWE-bench Leaderboards — swebench.com](https://www.swebench.com/)
- [Scale Labs SWE-Bench Pro Leaderboard (Public)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [Scale Labs SWE-Bench Pro Leaderboard (Private)](https://labs.scale.com/leaderboard/swe_bench_pro_private)
- [SWE-Bench Pro Analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [Why SWE-bench Verified no longer measures frontier coding capabilities — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Terminal-Bench Leaderboard — tbench.ai](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench arXiv (2601.11868)](https://arxiv.org/abs/2601.11868)
- [LiveCodeBench Leaderboard (official)](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — pricepertoken.com](https://pricepertoken.com/leaderboards/benchmark/livecodebench)
- [HumanEval — LLM Stats](https://llm-stats.com/benchmarks/humaneval)
- [HumanEval — Papers With Code](https://paperswithcode.com/sota/code-generation-on-humaneval)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [MiniMax M2.5 Benchmark Fraud Debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [SWE-bench Verified Contamination Study — arXiv 2512.10218](https://arxiv.org/html/2512.10218v1)
