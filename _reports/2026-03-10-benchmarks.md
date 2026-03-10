---
title: "Benchmarks, March 10, 2026"
date: 2026-03-10
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Stable leaderboards; SWE-CI paper surfaces regression-control gap; FeatureBench accepted at ICLR 2026"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-03-10

Standings unchanged from March 9. The headline development today is the new **SWE-CI** benchmark paper (arXiv 2603.03823, Mar 4) gaining wider attention: it exposes that most frontier models introduce regressions on 75%+ of long-horizon CI maintenance tasks — a capability dimension entirely invisible on SWE-bench Verified. **FeatureBench** (ICLR 2026) similarly shows Claude Opus 4.5 solving only 11% of complex feature-development tasks despite its 80.9% Verified score. Both papers reinforce the message that static patch-fixing benchmarks have reached saturation and structural unsoundness simultaneously.

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
| 7 | GLM-5 (Zhipu AI) | SWE-bench Verified | ~77.8% | Feb 2026 |
| 8 | Claude Sonnet 4.5 | SWE-bench Verified | ~77.2% | Feb 2026 |
| 9 | Kimi K2.5 | SWE-bench Verified | ~76.8% | Feb 2026 |
| — | Sonar Foundation Agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% | Feb 19, 2026 ⚠️ self-reported |

No score changes from March 9. OpenAI retired this benchmark Feb 23, citing confirmed training-data contamination across all major frontier models; scores here carry that caveat. Epoch AI harness remains at v2.0.3 (patched Mar 6 for GPT-5.1+ tool guards).

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% | 2026 |
| 2 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% | 2026 |
| 3 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% | 2026 |
| — | GPT-5.3-Codex | SWE-bench Pro (self-reported) | ~57% | 2026 ⚠️ self-reported |
| — | GPT-4o | SWE-bench Pro (SEAL) | 4.9% | 2026 |
| — | Qwen-3 32B | SWE-bench Pro (SEAL) | 3.4% | 2026 |

Scaffold accounts for ~10–15 pp of the gap between self-reported and SEAL numbers. Private-subset drop remains the most contamination-resistant signal: Claude Opus 4.1 falls from 22.7% → 17.8%, GPT-5 from 23.1% → 14.9%. No new entries today.

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

Scaffold gap remains the dominant story — GPT-5.3-Codex appears three times in the top 10 under different harnesses. No new entries since March 9.

### LiveCodeBench v6 (contamination-controlled, rolling)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 |
| — | GLM-4.7 | ~84.9% | 2026 |
| — | Kimi K2.5 | ~85.0% | 2026 |
| — | Qwen3.5-plus | 83.6% | Feb 2026 |

197 models evaluated as of March 7. Problems drawn continuously from LeetCode, AtCoder, and Codeforces — structurally resistant to overfitting. Gemini's lead on algorithmic tasks diverges from its SWE-bench ranking, highlighting distinct capability profiles.

### SWE-CI (new — not yet a public leaderboard)

| Model | Zero-Regression Rate | Note |
|-------|---------------------|------|
| Claude Opus (family) | >50% | Only family exceeding 50% |
| All others (17 of 18 models) | <50% | Majority below 25% |

Source: arXiv 2603.03823, Mar 4, 2026. 100 tasks, avg 233-day / 71-commit CI history. No public interactive leaderboard yet — results are from the paper's evaluation of 18 models across 8 providers.

### HumanEval (saturated — reference only)

| Model | Score | Note |
|-------|-------|------|
| Kimi K2.5 | ~99% | Effectively saturated |
| Claude Opus 4.6 / GPT-5.2 | ~95% | — |
| Claude Sonnet 4 | 95.1% | — |

HumanEval no longer discriminates at the frontier. Industry has migrated to LiveCodeBench and SWE-bench Pro.

---

## New Benchmarks & Methodology

### SWE-CI (arXiv 2603.03823 — Mar 4, 2026)

The first repository-level benchmark built on the **Continuous Integration loop**. Shifts evaluation from static one-shot bug-fixing toward dynamic, long-term **maintainability** and regression control — the dimension that Lehman's Laws say consumes 60–80% of real software lifecycle cost.

- **100 tasks**, each representing ~233 days and 71 commits of real repository history
- Tasks require dozens of analysis/coding iterations, not a single patch
- Novel **dual-agent CI cycle**: Architect + Programmer roles collaborate
- Metrics: Normalized Change and EvoScore (zero-regression rate primary)
- Dataset sourced from 4,923 repos filtered for 3+ years active maintenance, 500+ stars, permissive licences

Key finding: state-of-the-art LLMs introduce regressions on >75% of long-horizon tasks. Only Claude Opus exceeds a 50% zero-regression rate. This is the sharpest published evidence yet that SWE-bench scores are poor proxies for maintenance capability.

### FeatureBench (ICLR 2026 — accepted)

200 evaluation tasks and 3,825 executable environments from 24 open-source repos. Tests **complex feature development** rather than isolated bug fixes. Claude Opus 4.5 — which scores 80.9% on SWE-bench Verified — resolves only **11.0%** of FeatureBench tasks. Supports one-click inference via OpenHands, Claude Code, Codex, Gemini CLI, and mini-swe-agent. Auto-updatable toolkit mitigates data leakage over time.

### SWE-bench-Live Multi-Language / RepoLaunch (Microsoft)

SWE-bench-Live now covers C, C++, C#, Python, Java, Go, JS/TS, and Rust across Windows and Linux Docker images. **RepoLaunch** is the fully automated pipeline for benchmark construction and monthly refresh. Leaderboard updated monthly — the strongest contamination-resistance guarantee currently available at repository scale.

### Grok 4 on Aider Polyglot — self-report vs. independent (context)

xAI self-reports 72–75% for Grok 4 on SWE-bench Verified; independent testing with an SWE-agent scaffold returns **58.6%** — a 13–16 pp gap attributable to scaffold choice and possible self-reporting optimism. Highlights the ongoing absence of evaluation standards.

---

## Notable Movements

### SWE-CI reframes the capability question

The paper's regression-control findings make quantitative what practitioners already knew: a model that patches a filed bug in isolation may still systematically degrade a codebase under iterative feature work. The delta from Verified (~80%) to SWE-CI zero-regression rate (<25% for most models) is the single largest capability gap surfaced this week.

### FeatureBench confirms the saturation / complexity divide

Verified has saturated at ~81%; FeatureBench acceptance at ICLR 2026 puts a peer-reviewed stake in the ground showing frontier models are nowhere near saturating feature-level tasks. The 11% vs. 80.9% delta on the same underlying model (Claude Opus 4.5) is a striking illustration of benchmark selection effects.

### Benchmark gaming under structural scrutiny

A UCStrategies analysis of 2.8 million LMArena comparison records found that selective submission inflated Chatbot Arena scores by up to 100 Elo points. Stanford HAI's 2026 AI Index warns that "actual utility" testing is now the field's most urgent unsolved evaluation problem. No enforcement mechanism exists; contamination detection methods remain unstandardised across labs.

### Open-source at parity on select benchmarks

MiniMax M2.5 (229B open-weight, #4 on Verified), DeepSeek V3.2 (#3 on LiveCodeBench), Kimi K2.5, and GLM-5 all rank within the frontier cluster. DeepSeek V3.2-Exp delivers 74.2% on Aider Polyglot at $1.30/run — 22× cheaper than GPT-5. Open-weight alternatives are now plausible for production coding workflows on price/performance grounds.

### Frontier gap stays compressed

Rank-1 vs. rank-10 gap on Verified remains ~5.4 pp (vs. ~11.9% a year ago). At these margins, scaffold and harness selection are statistically more significant than model selection for most practical use cases.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-Bench Pro — SEAL by Scale AI](https://scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [SWE-bench-Live — Microsoft GitHub](https://github.com/microsoft/SWE-bench-Live)
- [SWE-Bench Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [Terminal-Bench 2.0 — tbench.ai](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [SWE-CI paper (arXiv 2603.03823)](https://arxiv.org/abs/2603.03823)
- [SWE-CI — most coding agents break 75%+ of their fixes over time (Engineer's Codex)](https://www.engineerscodex.com/swe-ci-coding-agent-benchmark)
- [FeatureBench — GitHub (ICLR 2026)](https://github.com/LiberCoders/FeatureBench)
- [FeatureBench — OpenReview ICLR 2026](https://openreview.net/forum?id=41xrZ3uGuI)
- [OpenAI drops SWE-bench Verified](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [OpenAI abandons SWE-bench Verified — blockchain.news](https://blockchain.news/news/openai-abandons-swe-bench-verified-contamination-flawed-tests)
- [AI Coding Agents: Benchmark Gaming & Production Risks 2026 — ModelsLab](https://modelslab.com/blog/api/ai-coding-agents-benchmark-gaming-production-risks-2026)
- [AI Benchmarks Are a Game Now — UCStrategies](https://ucstrategies.com/news/ai-benchmarks-are-a-game-now-and-the-industry-is-cheating-to-win/)
- [AI Model Benchmarks Mar 2026 — LM Council](https://lmcouncil.ai/benchmarks)
- [Epoch AI Benchmarks](https://epoch.ai/benchmarks)
- [Sonar Foundation Agent press release](https://www.sonarsource.com/company/press-releases/sonar-claims-top-spot-on-swe-bench-leaderboard/)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
