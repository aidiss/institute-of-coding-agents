---
title: "Benchmarks, May 4, 2026"
date: 2026-05-04
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Leaderboards stable with no major new submissions; GPT-5.5 consolidates Terminal-Bench co-lead with Claude Mythos at 82%; LiveCodeBench remains dominated by Chinese models with DeepSeek-V4-Pro-Max at 93.5%; SWE-bench Verified contamination crisis structural and unchanged"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-05-04

No major leaderboard changes today. All primary benchmarks — SWE-bench Pro, Terminal-Bench 2.0, and LiveCodeBench — show the same top clusters as May 3. The structural contamination story on SWE-bench Verified continues to be the dominant methodology concern; the ~35-point gap between Verified and Pro for the same models remains the clearest signal that Verified is no longer a frontier discriminator. On decontaminated benchmarks (SWE-rebench, LiveCodeBench), DeepSeek and Chinese-origin models are more competitive than their Verified rankings suggest.

## Leaderboard

### SWE-bench Verified (⚠️ contaminated — reference only)

| Rank | Agent / Model | Score | Date | Notes |
|------|--------------|-------|------|-------|
| — | Claude Mythos Preview | 93.9% | Apr 7–8, 2026 | ⚠️ self-reported; restricted access |
| — | GPT-5.5 | 88.7% | Apr 23, 2026 | ⚠️ self-reported |
| — | Claude Opus 4.7 (Adaptive) | 87.6% | Apr 2026 | ⚠️ self-reported |
| — | GPT-5.3 Codex (agent) | 85.0% | Apr 2026 | ⚠️ self-reported |
| 1 | Claude Opus 4.5 | 80.9% | Feb 2026 | Epoch AI independent |
| 2 | Claude Opus 4.6 | 80.8% | Feb 2026 | Epoch AI independent |
| 3 | DeepSeek V4 Pro (Max) | 80.6% | Feb 2026 | Epoch AI independent |
| 4 | Kimi K2.6 | 80.2% | Feb 2026 | Epoch AI independent |
| 5 | GPT-5.2 | 80.0% | Feb 2026 | Epoch AI independent |
| 6 | Claude Sonnet 4.6 | 79.6% | Feb 2026 | Epoch AI independent |
| 7 | DeepSeek V4 Pro (High) | 79.4% | Feb 2026 | Epoch AI independent |

**Do not use Verified as a frontier discriminator.** OpenAI formally retired this benchmark in February 2026 after an internal audit found 59.4% of the hardest unsolved tasks had flawed test designs (35.5% too narrow, 18.8% too wide, 5.1% miscellaneous), and training data contamination is confirmed for all major frontier models. All entries above the Epoch AI block are self-reported and unverified — 0 of 89 leaderboard entries are independently verified per Epoch AI tracking. Claude Mythos Preview (93.9%) is not publicly available; access restricted to ~40 Project Glasswing security partners.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Score | Date | Scaffold |
|------|-------|-------|------|---------|
| — | Claude Mythos Preview | 77.8% | Apr 2026 | ⚠️ self-reported |
| — | Claude Opus 4.7 (Adaptive) | 64.3% | Apr 2026 | ⚠️ Anthropic-reported |
| — | GPT-5.5 | 58.6% | Apr 2026 | ⚠️ OpenAI-reported |
| — | Kimi K2.6 | 58.6% | 2026 | ⚠️ open weights; self-reported |
| — | GLM-5.1 | 58.4% | 2026 | ⚠️ self-reported |
| — | GPT-5.3 Codex (CLI) | 57.0% | 2026 | ⚠️ Codex CLI harness; self-reported |
| 1 | GPT-5.4 (xHigh) | 59.1 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 2 | Muse Spark | 55.0 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 3 | Claude Opus 4.6 (thinking) | 51.9 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 4 | Gemini 3.1 Pro (thinking) | 46.1 ± 3.6% | Apr 2026 | SEAL |
| 5 | Claude Opus 4.5 | 45.9 ± 3.6% | Mar 2026 | SEAL |
| 6 | Claude Sonnet 4.5 | 43.6 ± 3.6% | Mar 2026 | SEAL |
| 7 | Gemini 3 Pro | 43.3 ± 3.6% | Mar 2026 | SEAL |
| 8 | GPT-5 (High) | 41.8 ± 3.5% | Mar 2026 | SEAL |

SWE-bench Pro (1,865 tasks across 41 repositories in Python, Go, TypeScript, JavaScript; avg patch 107 lines/4.1 files vs. Verified's 11 lines/1 file) is the current primary independent coding benchmark. Apply a ~12-point scaffold discount when comparing self-reported custom-harness scores to SEAL-standardized entries. Ranks 3–8 under SEAL fall within overlapping confidence intervals and are statistically indistinguishable. The same model on Codex CLI can score 57% while SEAL-standardized yields ~41% — a 16-point scaffold gap.

### Terminal-Bench 2.0

| Rank | Model | Score | Date | Notes |
|------|-------|-------|------|-------|
| 1 | GPT-5.5 | 82.0% | May 1, 2026 | |
| 1 | Claude Mythos Preview | 82.0% | Apr 2026 | ⚠️ restricted access |
| 3 | Claude Opus 4.7 (Adaptive) | 69.4% | May 1, 2026 | ⚠️ self-reported |
| 4 | MiMo-V2.5-Pro | 68.4% | May 1, 2026 | Xiaomi |
| 5 | DeepSeek V4 Pro (Max) | 67.9% | May 1, 2026 | |
| 6 | Kimi K2.6 | 66.7% | May 1, 2026 | open weights |
| 7 | MiMo-V2.5 | 65.8% | May 1, 2026 | Xiaomi |
| 8 | Qwen 3.6 Max (preview) | 65.4% | May 1, 2026 | Alibaba |
| 9 | DeepSeek V4 Pro (High) | 63.3% | May 1, 2026 | |
| 10 | Composer 2 | 61.7% | May 1, 2026 | Cursor |
| 11 | Qwen3.6-27B | 59.3% | May 1, 2026 | Alibaba |
| 12 | DeepSeek V4 Pro | 59.1% | May 1, 2026 | |

**Terminal-Bench Hard subset** (Artificial Analysis): GPT-5.5 (xhigh) 60.6%, GPT-5.5 (high) 59.8%, GPT-5.5 (medium) 57.6%. 89 curated tasks in real Docker-containerized environments covering software engineering, ML, security, data science, and sysadmin. Verified by automated scripts. GPT-5.5 and Claude Mythos Preview are tied at the top; the second tier clusters between 66–70% with a meaningful gap below GPT-5.5. UC Berkeley demonstrated binary wrapper trojans can achieve ~100% on Terminal-Bench tasks without solving them — not attributed to any current leaderboard submission, but underscores unverified self-reported risk.

### LiveCodeBench (rolling, contamination-resistant)

**LCB v6 (limited submissions, May 1, 2026):**

| Rank | Model | Score (Pass@1) | Date | Provider |
|------|-------|----------------|------|---------|
| 1 | Kimi K2.6 | 89.6% | May 1, 2026 | Moonshot AI |
| 2 | Qwen 3.6 Plus | 87.1% | May 1, 2026 | Alibaba |
| 3 | Kimi K2.5 | 85.0% | May 1, 2026 | Moonshot AI |
| 4 | Claude Opus 4.5 | 84.8% | May 1, 2026 | Anthropic |
| 5 | Qwen 3.5 397B | 83.6% | May 1, 2026 | Alibaba |

**Broader leaderboard (all versions, most recent scores — llm-stats.com / Artificial Analysis):**

| Rank | Model | Score | Date | Provider |
|------|-------|-------|------|---------|
| 1 | DeepSeek V4 Pro (Max) | 93.5% | Apr 2026 | DeepSeek |
| 2 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 | Google |
| 3 | DeepSeek V4 Flash (Max) | 91.6% | Apr 2026 | DeepSeek |
| 4 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 | Google |
| 5 | DeepSeek V3.2 Speciale | 89.6% | 2026 | DeepSeek |
| 6 | DeepSeek V3.2 (Thinking) | 83.3% | 2026 | DeepSeek |
| 7 | MiniMax M2 | 83.0% | 2026 | MiniMax |
| 8 | Nemotron 3 Super (120B A12B) | 81.2% | 2026 | NVIDIA |
| 9 | Grok-3 Mini | 80.4% | 2026 | xAI |
| 10 | Grok 4 Fast | 80.0% | 2026 | xAI |

LCB continuously harvests fresh problems from LeetCode, AtCoder, and Codeforces posted after model training cutoffs — the most contamination-resistant mainstream coding benchmark by design. Chinese-origin models (DeepSeek, MiniMax, Kimi) dominate. Rankings diverge between trackers due to different problem-date windows and model configurations; 218 models evaluated total, average score 50.7%.

### HumanEval (saturated — reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Kimi K2.5 | 99.0% | Apr 2026 |
| 2 | Claude Sonnet 4.5 (Thinking) | 97.6% | Apr 2026 |
| 3 | DeepSeek R1 | 97.4% | Apr 2026 |
| 4 | Grok 4 | 97.0% | Apr 2026 |
| 4 | Claude Opus 4.6 | 96.0% | Apr 2026 |
| 5 | o1-mini | 96.2% | 2025 |

Most frontier models exceed 90%; benchmark average across 75+ models is ~89.7%. Not a frontier discriminator. EvalPlus (80x more test cases per problem) and HumanEval Pro (self-invoking variant, where even o1-mini drops from 96.2% to 76.2%) are more meaningful at this tier. **Status: Effectively saturated.**

---

## New Benchmarks & Methodology

### SWE-bench Live (Microsoft, NeurIPS 2025 D&B Track — rolling)

Continuously auto-updated benchmark adding ~50 freshly-verified GitHub issues per month. Currently at 1,565 task instances across 164 repositories. Added Windows/PowerShell and Multi-Language variants in October 2025. Best option alongside SWE-rebench for contamination resistance on real repository tasks.

### SWE-rebench (Nebius / Princeton — decontaminated, rolling)

Uses GitHub issues filed and resolved after each model's training cutoff. Current top-5 (April 24 window): Claude Opus 4.6 (65.3%), GPT-5.2 medium (64.4%), GLM-5 (62.8%), Junie (62.8%), GPT-5.4 medium (62.8%). Chinese models that score highly on SWE-bench Verified show 12+ point inflation on SWE-rebench — MiniMax M2.5 is the clearest example. Open-source models (GLM-5, Qwen3-Coder-Next) are meaningfully competitive at this difficulty tier.

### FeatureBench (arXiv:2602.10975 — hard, Feb 2026)

200 instances across 24 Python repositories measuring full feature implementation (not bug fixes). Top score: GPT-5.1-Codex at 12.5%; Claude Opus 4.5 at 11.0%. The low ceiling provides genuine frontier discrimination that Verified can no longer offer. One of the few benchmarks where no model approaches practical utility.

### BigCodeBench / EvalPlus

BigCodeBench (ICLR 2025): 1,140 tasks (Full) and ~150 tasks (Hard set) emphasizing realistic library/API usage. EvalPlus extends HumanEval with 80x more test cases. Both are the community-standard replacements for classic HumanEval on frontier model evaluation.

### GDPval (OpenAI, Oct 2025 — arXiv:2510.04374)

1,320 tasks across 44 knowledge-work occupations in 9 GDP-contributing industries. Blind expert evaluation finds frontier models (GPT-5, Claude Opus 4.1) produce output rated equal-to-or-better-than human experts ~50% of the time, completing tasks ~100x faster and ~100x cheaper. Distinct from coding benchmarks — measures economic productivity utility rather than software engineering capability.

---

## Notable Movements

### No new major submissions on May 4

All primary leaderboards — SWE-bench Pro (SEAL), Terminal-Bench 2.0, and LiveCodeBench — are unchanged from May 3. The next expected movements are new SEAL evaluation cycles and any public release of Claude Mythos Preview, which would allow independent Pro/Verified verification.

### Scaffold inflation gap persists

The spread between custom-harness self-reported scores and SEAL-standardized scores continues unaddressed. Labs reporting with optimized agent harnesses (Mythos 77.8%, Opus 4.7 64.3%, Kimi K2.6 58.6% on SWE-bench Pro) consistently exceed SEAL-verified baselines for comparable models. No benchmark organization has standardized harness requirements. Community heuristic: apply a ~12-point discount when comparing self-reported to SEAL scores.

### UC Berkeley exploit findings remain unaddressed

The April 2026 UC Berkeley RDI study demonstrating near-100% exploit paths on Terminal-Bench, SWE-bench Verified, SWE-bench Pro, GAIA, WebArena, and others has not prompted any public remediation from benchmark maintainers. Seven recurring vulnerability classes — shared evaluation environments, exposed reference answers, unsafe `eval()`, unfiltered LLM judges, weak string matching, broken validation logic, and trusting compromised test output — remain structural. No evidence any leaderboard submission has exploited these; the study flags systemic risk, not current fraud.

### Chinese models underrepresented on contamination-resistant benchmarks

On LiveCodeBench and SWE-rebench (decontaminated), DeepSeek, Kimi, and MiniMax models are fully competitive with Anthropic/OpenAI/Google. On SWE-bench Pro SEAL-standardized, the best available open-source result is Qwen 3 32B at ~3.4% — a dramatic capability cliff that makes the open/closed framing highly benchmark-dependent. The discrepancy points to scaffold optimization maturity (or contamination) rather than raw model capability gaps.

### HumanEval transition complete

With 75+ models averaging ~89.7% and the frontier cluster compressed between 96–99%, HumanEval functions as a minimum-competence check rather than a discriminator. FeatureBench, SWE-bench Pro, and LiveCodeBench are the current standard for frontier coding evaluation.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Verified — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Pro — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-bench Pro 2026 analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [SWE-rebench decontamination analysis — MindStudio](https://www.mindstudio.ai/blog/swe-rebench-benchmark-decontaminated-tests-model-inflation)
- [The SWE-Bench Illusion — arXiv:2506.12286](https://arxiv.org/abs/2506.12286)
- [Terminal-Bench 2.0 — BenchLM.ai](https://benchlm.ai/benchmarks/terminalBench2)
- [Terminal-Bench arXiv paper](https://arxiv.org/abs/2601.11868)
- [Terminal-Bench Hard Leaderboard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench v6 — BenchLM.ai](https://benchlm.ai/benchmarks/liveCodeBenchV6)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench — llm-stats.com](https://llm-stats.com/benchmarks/livecodebench)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [EvalPlus Leaderboard](https://evalplus.github.io/leaderboard.html)
- [BigCodeBench (ICLR 2025)](https://bigcode-bench.github.io/)
- [FeatureBench arXiv](https://arxiv.org/html/2602.10975v1)
- [UC Berkeley RDI — How We Broke Top AI Agent Benchmarks](https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/)
- [Why OpenAI no longer reports SWE-bench Verified](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench contamination debate — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-bench-Live (Microsoft)](https://swe-bench-live.github.io/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
- [GDPval paper — arXiv:2510.04374](https://arxiv.org/abs/2510.04374)
- [Aider Polyglot Leaderboard](https://aider.chat/docs/leaderboards/)
- [Claude Mythos Preview — InfoQ](https://www.infoq.com/news/2026/04/anthropic-claude-mythos/)
- [SWE-bench Leaderboard May 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
