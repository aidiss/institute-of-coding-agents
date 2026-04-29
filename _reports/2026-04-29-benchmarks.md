---
title: "Benchmarks, April 29, 2026"
date: 2026-04-29
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Stable — no new scores posted April 29; Claude Mythos Preview holds all leaderboard tops; GPT-5.4 leads SEAL-standardized Pro; MirrorCode benchmark (METR co-development) remains the week's most significant methodological addition"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-29

No significant new scores were posted on April 29. The competitive picture is unchanged from April 28: Claude Mythos Preview (private, Anthropic) holds the top position on every benchmark where it was evaluated, GPT-5.4 leads the independently-run SEAL-standardized SWE-bench Pro leaderboard, and the scaffold-versus-model variance debate continues to dominate methodology discussions. The week's most notable structural addition is MirrorCode, a long-horizon SWE benchmark co-developed with METR released April 10, which shifts evaluation toward tasks that take hours rather than minutes.

## Leaderboard

### SWE-bench Verified (retired by OpenAI Feb 2026 — shown for reference; contaminated)

| Rank | Agent / Model | Benchmark | Score | Date | Notes |
|------|--------------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% | Apr 8, 2026 | Self-reported (Anthropic system card); model not publicly available |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Verified | 87.6% | Apr 16, 2026 | Self-reported (Anthropic) |
| 3 | GPT-5.3 Codex | SWE-bench Verified | 85.0% | Mar 2026 | Self-reported (OpenAI) |
| 4 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 | Self-reported; Claude Code scaffold |
| 5 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 | Self-reported; Claude Code scaffold |
| 6 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Mar 2026 | Self-reported (Google) |
| 7 | MiniMax M2.5 | SWE-bench Verified | 80.2% | Mar 2026 | Self-reported |
| 8 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 | Self-reported (OpenAI, since discontinued reporting) |
| 9 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Mar 2026 | Self-reported |
| 10 | DeepSeek V4 Pro (High) | SWE-bench Verified | 79.4% | Mar 2026 | Self-reported |

**Note:** OpenAI formally abandoned this benchmark on Feb 23, 2026 after auditing confirmed training contamination — all frontier models can reproduce verbatim gold patches on a subset of tasks. The 93.9% Mythos Preview vs. its 77.8% Pro score is a 16-point spread consistent with Verified contamination. No official updates since the Feb 2026 freeze.

### SWE-bench Pro — SEAL by Scale AI (standardized mini-SWE-agent harness, independently run)

| Rank | Model | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | GPT-5.4 (xHigh) | SWE-bench Pro (SEAL) | 59.1% ±3.56 | Apr 2026 | Independent (Scale AI); compute-heavy setting |
| 2 | Muse Spark (Meta) | SWE-bench Pro (SEAL) | 55.0% ±3.60 | Apr 2026 | Independent (Scale AI) |
| 3 | Claude Opus 4.6 (thinking) | SWE-bench Pro (SEAL) | 51.9% ±3.61 | Apr 2026 | Independent (Scale AI) |
| 4 | Gemini 3.1 Pro (thinking) | SWE-bench Pro (SEAL) | 46.1% ±3.60 | Apr 2026 | Independent (Scale AI) |
| 5 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ±3.60 | 2026 | Independent (Scale AI); prior #1 |

### SWE-bench Pro — Self-reported / custom scaffolding

| Rank | Agent / Model | Benchmark | Score | Date | Notes |
|------|--------------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | Apr 8, 2026 | Self-reported (Anthropic system card); scaffold undisclosed |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Pro | 64.3% | Apr 2026 | Self-reported (Anthropic) |
| 3 | GPT-5.5 | SWE-bench Pro | 58.6% | Apr 2026 | Self-reported (OpenAI) |
| 4 | Kimi 2.6 | SWE-bench Pro | 58.6% | Apr 2026 | Self-reported |
| 5 | GLM-5.1 | SWE-bench Pro | 58.4% | Apr 2026 | Self-reported (Z.AI) |
| 6 | Qwen 3.6 Max (preview) | SWE-bench Pro | 57.3% | Apr 2026 | Self-reported (Alibaba) |
| 7 | MiMo-V2.5-Pro | SWE-bench Pro | 57.2% | Apr 2026 | Self-reported (Xiaomi) |
| — | Claude Opus 4.5 (Auggie) | SWE-bench Pro | 51.8% | Apr 2026 | Self-reported (Augment Code); Context Engine scaffold |

**Note:** Self-reported Pro scores use custom scaffolding and cannot be compared directly to SEAL standardized runs. The best model scores 46% on SEAL-standardized Pro but 81% on Verified, illustrating why Pro is considered the more honest signal despite its own quality concerns (see Methodology section).

### Terminal-Bench 2.0

| Rank | Model / Agent | Benchmark | Score | Date | Notes |
|------|--------------|-----------|-------|------|-------|
| 1 | GPT-5.5 | Terminal-Bench 2.0 | 82.7% | Apr 2026 | Closed |
| 2 | Claude Opus 4.7 (Adaptive) | Terminal-Bench 2.0 | 69.4% | Apr 2026 | Closed |
| 3 | MiMo-V2.5-Pro | Terminal-Bench 2.0 | 68.4% | Apr 2026 | Closed |
| 4 | DeepSeek V4 Pro (Max) | Terminal-Bench 2.0 | 67.9% | Apr 2026 | Open |
| 5 | Kimi 2.6 | Terminal-Bench 2.0 | 66.7% | Apr 2026 | Open |
| 6 | GPT-5.4 | Terminal-Bench 2.0 | 75.1% | Apr 2026 | Closed |
| 7 | Claude Opus 4.6 | Terminal-Bench 2.0 | 65.4% | Apr 2026 | Closed |
| 8 | Gemini 3.1 Pro | Terminal-Bench 2.0 | 56.2% | Apr 2026 | Self-reported |
| — | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% / 92.1% | Apr 8, 2026 | Self-reported (Anthropic system card); 92.1% with 4-hour extended timeout |

**Note:** Berkeley researchers demonstrated Terminal-Bench can be exploited to 100% via binary wrapper trojans (see Methodology section). 89 tasks with quarterly refresh cadence.

### LiveCodeBench v6 (contamination-controlled)

| Rank | Model | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Gemini 3 Pro Preview (High) | LiveCodeBench v6 | 91.7% | 2026 | Artificial Analysis tracker |
| 2 | Gemini 3 Flash Preview (Thinking) | LiveCodeBench v6 | 90.8% | 2026 | — |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026 | — |
| — | Kimi K2.6 | LiveCodeBench v6 | 89.6% | 2026 | llm-stats.com tracker; window differs |
| 4 | GPT-5.2 | LiveCodeBench v6 | 89.4% | 2026 | — |
| 5 | GLM 4.7 Thinking | LiveCodeBench v6 | 89.4% | 2026 | — |
| — | Kimi K2.5 | LiveCodeBench v6 | 85.0% | 2026 | Self-reported |
| — | Gemini 3.1 Pro | LiveCodeBench v6 | 81.3% | 2026 | Self-reported |
| — | Claude Opus 4.6 | LiveCodeBench v6 | 76.0% | 2026 | Self-reported |

**Note:** 218 models evaluated (Artificial Analysis). Leaders vary across trackers due to differing evaluation windows and model versioning. Continuous problem injection from post-training competitive programming makes this the most contamination-resistant major coding benchmark.

### HumanEval (saturated — reference only)

| Model | Score | Notes |
|-------|-------|-------|
| Kimi K2.5 | 99.0% | llm-stats.com |
| Claude Sonnet 4.5 | 97.6% | — |
| DeepSeek R1 | 97.4% | — |
| Grok 4.1 Fast / o3 | 97.0% | HumanEval+ (stricter variant) |
| Claude Opus 4.6 | 96.0% | — |

**Note:** All frontier models score 95%+; HumanEval no longer differentiates leaders. Retained as a minimum-capability bar only.

---

## New Benchmarks & Methodology

### MirrorCode (METR co-development, released Apr 10, 2026)
Long-horizon SWE benchmark designed to evaluate AI on tasks requiring hours to days of work, not the minutes-scale tasks that dominate SWE-bench. Co-developed with METR (Model Evaluation and Threat Research). Initial results show AI agents can already complete some weeks-long coding tasks autonomously. No public leaderboard released as of report date; methodology paper pending.

### GDPval (OpenAI, released Q1 2026)
1,320 tasks across 44 occupations in 9 U.S. GDP sectors; 220 tasks open-sourced. Inputs are real professional work products (legal briefs, engineering blueprints, care plans, spreadsheets). Scoring: ELO ratings from blind pairwise human comparisons by domain experts. Agent framework: Stirrup (shell + web browsing). Top scores: GPT-5.5 (xHigh) at 1,780 ELO, GPT-5.5 (High) at 1,760, Claude Opus 4.7 (Adaptive) at 1,753. Self-reported by OpenAI; independent replication not yet available.

### SWE-bench Multilingual (swebench.com, live as of early 2026)
300 tasks from 42 repositories in 9 languages: C, C++, Go, Java, JavaScript/TypeScript, PHP, Ruby, Rust. Top self-reported score: Claude Mythos Preview at 87.3% (Anthropic system card, Apr 8); Composer 2 at 73.7%. 24 models evaluated.

### SWE-rebench (Nebius AI — rolling, anti-contamination)
Fresh GitHub issues sourced after each model's release date. Standardized 128K-context ReAct scaffold, run 5×. Current window (Jan–Mar 2026): 57 problems from 46 repos. Leader: Claude Opus 4.6 at 65.3% (Pass@1) / 70.2% (Pass@5). No April refresh published as of report date.

### SWE-bench-Live (in progress)
Contamination-resistant, reproducible, and continuously updatable benchmark for real-world issue resolution, sourcing tasks post-cutoff. No public leaderboard as of report date.

---

## Notable Movements

### No new scores on April 29
The leaderboard state is unchanged from April 28. All top-10 positions across SWE-bench Verified, SWE-bench Pro, Terminal-Bench, and LiveCodeBench reflect scores reported between April 8–27.

### Claude Mythos Preview holds all-time highs across every benchmark
Anthropic's Apr 8 system card results (93.9% Verified, 77.8% Pro, 87.3% Multilingual, 82.0%/92.1% Terminal-Bench) remain the highest recorded scores on every benchmark tested. The 16-point spread between Mythos's Verified and Pro scores is the largest gap ever recorded for a single model, consistent with Verified contamination. Model remains private; all scores self-reported from the system card.

### GPT-5.4 holds SEAL-standardized Pro at 59.1%
The Scale AI SEAL leaderboard continues to show GPT-5.4 (xHigh compute) leading at 59.1% ±3.56 under standardized conditions. This remains the most independently-verifiable top-line number in the competitive SWE-bench Pro space.

### Open-source narrows the gap on contamination-aware benchmarks
Kimi K2.6 (89.6%), GLM 4.7 Thinking (89.4%), and DeepSeek V3.2 Speciale (89.6%) are essentially tied with closed frontier models on LiveCodeBench v6. On Terminal-Bench, DeepSeek V4 Pro and Kimi 2.6 rank 4th and 5th ahead of Claude Opus 4.6.

---

## Methodology Disputes & Contamination

### OpenAI abandons SWE-bench Verified (Feb 23, 2026 — ongoing)
Frontier Evals audit of 138 unsolved tasks found 59.4% had material test design issues. Automated red-teaming confirmed all frontier models could reproduce verbatim gold patches. OpenAI now recommends SWE-bench Pro as the standard.

### UC Berkeley benchmark hackability audit (2026 — ongoing)
Berkeley's Center for Responsible, Decentralized Intelligence demonstrated near-perfect gaming on 8 major benchmarks without solving actual tasks: Terminal-Bench (100%, binary wrapper trojans), SWE-bench Verified (100%, 10-line conftest.py), SWE-bench Pro (100%, container parser overwrites). Released BenchJack, an automated benchmark hackability scanner.

### Scaffold variance documented at 22 points on SWE-bench Pro
Morph's analysis found harness swaps produce up to a 22-point swing on SWE-bench Pro, versus ~1 point from swapping frontier models with the same harness. This makes cross-announcement comparisons effectively meaningless without harness disclosure.

### LessWrong audit of SWE-bench Pro (Feb 2026 — ongoing)
Independent review of 100 random Pro problems found pervasive test leniency, incorrect test cases, and requirements inflation. Conclusion: "SWE-bench Pro is much, much worse" than Verified in terms of test quality — auditors do not recommend it as a drop-in replacement.

### IQuest-Coder-V1 git-log exploit (Jan 2026 — resolved)
IQuest Lab's 81.4% Verified claim was found within 48 hours to rely on outdated Docker images exposing git history; corrected score: 76.2%. Cited routinely in methodology discussions as a case study in transparent post-hoc correction.

---

## Reliability Tiers (as of April 29, 2026)

| Tier | Benchmarks | Reason |
|------|-----------|--------|
| Most reliable | SWE-rebench, LiveCodeBench, GDPval | Fresh/post-release sourcing or expert human grading |
| Contested | SWE-bench Pro (SEAL), Terminal-Bench 2.0 | Berkeley showed 100% exploits; SEAL standardization helps but vulnerabilities remain |
| Emerging | MirrorCode, SWE-bench-Live | No public leaderboard yet; methodology promising |
| Unreliable / retired | SWE-bench Verified | OpenAI formally abandoned; contamination confirmed; 100% exploit demonstrated |
| Saturated | HumanEval | No frontier differentiation; retained as minimum bar only |

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro Leaderboard — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-bench Verified Leaderboard — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Verified Benchmark 2026 — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Pro Leaderboard (2026): Why 46% Beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench Leaderboard](https://livecodebench.github.io/leaderboard.html)
- [SWE-bench & LiveCodeBench Leaderboard (March 2026) — BenchLM.ai](https://benchlm.ai/coding)
- [Best LLM for Coding 2026 — WhatLLM.org](https://whatllm.org/best-llm-for-coding)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [LLM Leaderboard 2026 — CodeSOTA](https://www.codesota.com/llm)
- [Is SWE-bench Verified Contaminated? — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [Every Major AI Benchmark in 2026 — Medium / Aditya Kumar Jha](https://medium.com/@adityakumarjha292004/every-major-ai-benchmark-in-2026-what-the-numbers-actually-mean-and-what-labs-dont-want-you-to-82cb582c1bcf)
- [April 2026 AI Models — Medium / Sanjeev Patel](https://medium.com/@sanjeevpatel3007/april-2026-ai-models-every-major-release-reviewed-6ea03d7bc0b7)
- [AI Model Benchmarks Apr 2026 — LM Council](https://lmcouncil.ai/benchmarks)
- [Claude Mythos Benchmarks — NxCode](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026)
- [SWE-bench Pro PDF — Scale AI](https://static.scale.com/uploads/654197dc94d34f66c0f5184e/SWEAP_Eval_Scale%20(9).pdf)
- [SWE-bench Leaderboard 2026 — CodeAnt AI](https://www.codeant.ai/blogs/swe-bench-scores)
- [SWE-bench Verified Leaderboard — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Pro Leaderboard — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-pro)
- [Epoch AI Benchmarks](https://epoch.ai/benchmarks)
