---
title: "Benchmarks, March 11, 2026"
date: 2026-03-11
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Standings stable; Google launches Android Bench; Claude Opus 4.6 tops SWE-Rebench; Qwen3-Coder-Next enters top 20 at 3B active params"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-03-11

No score changes at the top of the major leaderboards since March 10. The headline developments today are Google's release of **Android Bench** (an Android-specific coding benchmark, top score 72%), **Claude Opus 4.6** claiming the #1 position on **SWE-Rebench** (Nebius AI's contamination-controlled rolling benchmark), and **Qwen3-Coder-Next** entering the top 20 on SWE-bench Verified with only 3B active parameters. The structural contamination and scaffold disputes surfaced last week by SWE-CI and FeatureBench continue to dominate methodology discussion — no resolution.

## Leaderboard

### SWE-bench Verified (Epoch AI v2.0.3 — independent, not self-reported)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 (229B open-weight) | SWE-bench Verified | 80.2% | Feb 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 7 | GLM-5 (Zhipu AI, 744B) | SWE-bench Verified | ~77.8% | Feb 2026 |
| 8 | Claude Sonnet 4.5 | SWE-bench Verified | ~77.2% | Feb 2026 |
| 9 | Kimi K2.5 (Moonshot AI) | SWE-bench Verified | ~76.8% | Feb 2026 |
| 10 | DeepSeek V3.2 | SWE-bench Verified | ~73.0% | Feb 2026 |
| — | Qwen3-Coder-Next (3B active params) | SWE-bench Verified | 70.6% | Mar 2026 — ⚠️ new entry |
| — | Sonar Foundation Agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% | Feb 19, 2026 — ⚠️ self-reported |

Standings unchanged from March 10. OpenAI retired this benchmark Feb 23, citing confirmed training-data contamination across all major frontier models; all scores carry that caveat. Rank-1 vs. rank-10 gap remains ~5.4 pp — scaffold and harness choice continues to matter more than model selection at these margins.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% | 2026 |
| 2 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% | 2026 |
| 3 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% | 2026 |
| — | GPT-5.3-Codex | SWE-bench Pro (self-reported) | ~56.8% | 2026 — ⚠️ self-reported |
| — | GPT-4o | SWE-bench Pro (SEAL) | 4.9% | 2026 |
| — | Qwen-3 32B | SWE-bench Pro (SEAL) | 3.4% | 2026 |

No new entries. SEAL standardized scaffold gap vs. self-reported scores remains ~10–15 pp. Private-subset scores (Claude Opus 4.1: 17.8%; GPT-5: 14.9%) remain the strongest contamination-resistant signal published.

### SWE-Rebench (Nebius AI — rolling, date-gated contamination control)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Claude Opus 4.6 | — | Mar 2026 — ⚠️ new entry |
| — | Kimi K2 Thinking | Best Pass@1 (open-source leader) | Mar 2026 |
| — | GLM-5 | Min tokens/problem (open-source leader) | Mar 2026 |
| — | Qwen3-Coder-Next | Best Pass@5 (open-source leader) | Mar 2026 |

SWE-Rebench mines fresh GitHub tasks and flags any problem whose creation date predates a model's release as potentially contaminated. Claude Opus 4.6 taking #1 here is a stronger signal than a Verified ranking because contamination is explicitly controlled by construction. Open-source models dominate efficiency sub-categories.

### Terminal-Bench 2.0 (tbench.ai — model × agent pairs)

| Rank | Model | Agent | Score | Date |
|------|-------|-------|-------|------|
| 1 | Gemini 3.1 Pro | Forge Code | 78.4% | Mar 2026 |
| 2 | GPT-5.3-Codex | Droid | 77.3% | Mar 2026 |
| 3 | GPT-5.3-Codex | Simple Codex | 75.1% | Mar 2026 |
| 4 | Gemini 3.1 Pro | Terminus-KIRA | 74.8% | Mar 2026 |
| 5 | Claude Opus 4.6 | Terminus-KIRA | 74.7% | Mar 2026 |
| 6 | GPT-5.3-Codex | Mux | 74.6% | Mar 2026 |
| 7 | (multiple) | OB-1 | 72.4% | Mar 2026 |
| 8 | Claude Opus 4.6 | TongAgents | 71.9% | Mar 2026 |
| 9 | (multiple) | Junie CLI | 71.0% | Mar 2026 |
| 10 | GPT-5.3-Codex | CodeBrain-1 | 70.3% | Mar 2026 |

No new entries. Scaffold gap remains the dominant story — GPT-5.3-Codex appears three times in the top 10 under different harnesses with a 6.8 pp spread.

### Android Bench (Google — new, Mar 2026)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3.1 Pro Preview | ~72% | Mar 2026 — ⚠️ Google self-reported |
| — | (range across tested models) | 16%–72% | Mar 2026 |

New benchmark. Tests real-world Android OS tasks from open-source GitHub projects. Wide performance spread (16%–72%) suggests the benchmark has headroom and is not yet saturated. Independent verification pending; Google self-reported first-round results.

### LiveCodeBench v6 (contamination-controlled, rolling)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 |
| — | Kimi K2.5 | ~85.0% | 2026 |
| — | GLM-4.7 | ~84.9% | 2026 |
| — | Qwen3.5-plus | 83.6% | Feb 2026 |

197 models evaluated. Problems drawn continuously from LeetCode, AtCoder, Codeforces — structurally resistant to overfitting. Gemini's lead on algorithmic tasks diverges from its SWE-bench ranking, reflecting distinct capability profiles across task types.

### SWE-CI (arXiv 2603.03823 — paper results, no public leaderboard yet)

| Model | Zero-Regression Rate | Note |
|-------|---------------------|------|
| Claude Opus (family) | >50% | Only family exceeding 50% |
| All others (17 of 18 models) | <50% | Majority below 25% |

Source: Mar 4, 2026. 100 tasks, avg 233-day / 71-commit CI history. No public interactive leaderboard; results are from the paper's evaluation of 18 models across 8 providers.

### HumanEval (saturated — reference only)

| Model | Score | Note |
|-------|-------|------|
| Kimi K2.5 | ~99% | Effectively saturated |
| GPT-5.3 Codex | ~93% | — |
| Claude Opus 4.6 / GPT-5.2 | ~95% | — |

HumanEval no longer discriminates at the frontier. Community has migrated to LiveCodeBench and SWE-bench Pro for meaningful comparisons.

---

## New Benchmarks & Methodology

### Android Bench (Google — released Mar 2026)

Google's first-party benchmark targeting Android-specific coding tasks drawn from real open-source GitHub projects. Evaluates models on challenges representative of actual Android OS development, from UI logic to system APIs. First-round results show Gemini 3.1 Pro Preview at ~72%, with a wide spread down to 16% for lower-tier models. Methodology details (scaffold, turn limits, scoring criteria) not yet fully published. Independent replication has not been confirmed.

### SWE-bench-Live finalized monthly update process

SWE-bench-Live confirmed its cadence: **50 newly verified, high-quality issues** added monthly, while Lite and Verified splits remain frozen to maintain fair leaderboard comparisons and manageable evaluation costs. Multi-language support (C, C++, C#, Python, Java, Go, JS/TS, Rust) across Windows and Linux Docker images via the **RepoLaunch** pipeline. Strongest contamination-resistance guarantee currently available at repository scale.

### Ongoing: contamination detection has no industry standard

As of March 2026, no cross-lab standard exists for contamination detection methodology, threshold, or reporting. Each provider uses different methods. Stanford HAI's 2026 AI Index flags "actual utility testing" as the field's most urgent unsolved evaluation problem. The UCStrategies analysis (2.8 million LMArena records) documented up to +100 Elo from selective submission — enforcement mechanisms remain absent.

---

## Notable Movements

### Claude Opus 4.6 tops SWE-Rebench

First meaningful leaderboard movement of the week: Claude Opus 4.6 takes #1 on SWE-Rebench, Nebius AI's date-gated, contamination-controlled alternative to SWE-bench Verified. Because SWE-Rebench explicitly flags problems that could have been in a model's training data, this ranking carries more signal than Verified's top positions.

### Google Android Bench raises the scope of coding evaluation

Android Bench introduces platform-specific, OS-layer software tasks — a dimension absent from every other major coding benchmark. The 16%–72% first-round spread suggests models vary widely on platform-grounded work in a way that SWE-bench (Python-centric) does not capture. If independently verified, Android Bench would be the most domain-specific rigorous benchmark yet released.

### Qwen3-Coder-Next in top 20 at 3B active params

Qwen3-Coder-Next's 70.6% on SWE-bench Verified with only 3 billion active parameters — while DeepSeek V3.2-Exp delivers 74.2% on Aider Polyglot at $1.30/run (22× cheaper than GPT-5) — continues the trend of efficiency-frontier models challenging the compute-cost assumptions underlying proprietary model pricing.

### Verified leaderboard locked at ~81% for third consecutive week

No model has exceeded 80.9% for three weeks. The ceiling effect here is now as plausible an explanation as genuine difficulty: if scores are inflated by contamination (as OpenAI's Feb 23 retirement implicitly acknowledged), the apparent plateau may simply reflect the saturation of trainable signal in the fixed 500-task set, not a capability wall.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-Bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [SWE-Bench Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [SWE-Rebench Leaderboard — Nebius AI](https://swe-rebench.com)
- [Terminal-Bench 2.0 leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench v5/v6/Pro — Emergent Mind](https://www.emergentmind.com/topics/livecodebench-v5-v6-pro)
- [Android Bench — Android Headlines](https://www.androidheadlines.com/2026/03/google-android-bench-ai-coding-leaderboard.html)
- [SWE-CI paper (arXiv 2603.03823)](https://arxiv.org/abs/2603.03823)
- [AI Coding Agents: Benchmark Gaming & Production Risks 2026 — ModelsLab](https://modelslab.com/blog/api/ai-coding-agents-benchmark-gaming-production-risks-2026)
- [AI Benchmarks Are a Game Now — UCStrategies](https://ucstrategies.com/news/ai-benchmarks-are-a-game-now-and-the-industry-is-cheating-to-win/)
- [AI Model Benchmarks Mar 2026 — LM Council](https://lmcouncil.ai/benchmarks)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
- [Best LLM for Coding 2026 — SmartScope](https://smartscope.blog/en/generative-ai/chatgpt/llm-coding-benchmark-comparison-2026/)
- [LLM benchmarks in 2026 — LXT](https://www.lxt.ai/blog/llm-benchmarks/)
- [Claude Opus 4.6 BrowseComp evaluation — SuperGok](https://supergok.com/claude-opus-4-6-browsecomp-evaluation/)
