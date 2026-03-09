---
title: "Benchmarks, March 9, 2026"
date: 2026-03-09
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Stable — frontier gap narrows to 5.4%, new entrants emerging"
prompt_hash: 6f5df01d4f13565eb7a5479a8277956ca8c08782
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-03-09

Standings are largely stable versus yesterday. The headline development is Epoch AI bumping its agentic harness to v2.0.3 on March 6 (OpenAI/Codex tool-call guards), the Tau2 Bench Telecom spotlight on Moonshot Kimi K2, and converging frontier scores — the gap between rank-1 and rank-10 on major benchmarks has narrowed to ~5.4%.

## Leaderboard

### SWE-bench Verified (Epoch AI v2.0.3 — independent, not self-reported)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 (229B open-weight) | SWE-bench Verified | 80.2% | Feb 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 7 | GLM-5 (744B MoE, 44B active) | SWE-bench Verified | ~77.8% | Feb 2026 |
| 8 | Claude Sonnet 4.5 | SWE-bench Verified | ~77.2% | Feb 2026 |
| 9 | Kimi K2.5 | SWE-bench Verified | ~76.8% | Feb 2026 |
| — | Sonar Foundation Agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% | Feb 19, 2026 ⚠️ self-reported |

Notes: Epoch AI bumped the harness to v2.0.3 on 2026-03-06 — added guards preventing post-GPT-5.1 OpenAI models from overriding Codex native tools; no score changes expected. OpenAI formally retired this benchmark Feb 23, citing saturation and confirmed training-data contamination across all major frontier models. Scores above should be interpreted with that caveat. The gap between rank-1 and rank-10 has narrowed to ~5.4 percentage points (down from ~11.9% a year ago).

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% | 2026 |
| 2 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% | 2026 |
| 3 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% | 2026 |
| — | GPT-5.3-Codex | SWE-bench Pro (self-reported) | ~57% | 2026 ⚠️ self-reported |
| — | GPT-4o | SWE-bench Pro (SEAL) | 4.9% | 2026 |
| — | Qwen-3 32B | SWE-bench Pro (SEAL) | 3.4% | 2026 |

Notes: Same standings as March 8. Private-subset drop remains the most contamination-resistant signal: Claude Opus 4.1 falls from 22.7% → 17.8%, GPT-5 from 23.1% → 14.9%. Scaffold accounts for ~10–15 pp of the gap between self-reported and SEAL scores. Cost-efficiency note: Claude 4.5 Sonnet achieves 70.6% at $0.56/task; GPT-5 mini scores 59.8% at $0.04/task.

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
| — | GPT-5.4 (xhigh) | — | 57.6% | Mar 2026 (Hard) |
| — | Gemini 3.1 Pro Preview | — | 53.8% | Mar 2026 (Hard) |

Notes: No new entries since March 8. Scaffold gap still the dominant story — GPT-5.3-Codex appears three times in the top 10 across different harnesses. Grok 4 scores 79.6% on **Aider Polyglot** (not Terminal-Bench), reported March 2026 — notable since it exceeds Gemini 3.1 Pro on that polyglot metric.

### LiveCodeBench v6 (contamination-controlled, rolling)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 |
| — | GLM-4.7 | ~84.9% | 2026 |
| — | Qwen3.5-plus | 83.6% | Feb 2026 |

Notes: 197 models evaluated as of March 7. Problems drawn continuously from LeetCode, AtCoder, and Codeforces — structurally resistant to overfitting. Gemini's lead on algorithmic tasks diverges from its SWE-bench rank, pointing to distinct capability profiles.

### Aider Polyglot (self-reported / vendor-run)

| Model | Score | Date |
|-------|-------|------|
| Grok 4 | 79.6% | Mar 2026 ⚠️ self-reported |
| Gemini 3.1 Pro | ~78% | Mar 2026 |

Notes: Aider Polyglot tests multi-language code editing. Grok 4's entry here is new as of early March 2026 and is self-reported — independent verification pending.

### Tau2 Bench — Telecom (agentic customer-service)

| Model | Score | Date |
|-------|-------|------|
| Moonshot Kimi K2 | #1 (score TBC) | Mar 2026 ⚠️ self-reported |

Notes: Kimi K2 claimed top spot on Tau2 Bench Telecom, a benchmark testing tool-using service agents. Positions this as a distinct product niche from "pair programmer" (Claude) toward "service agent." Score not independently verified.

### HumanEval (saturated — reference only)

| Model | Score | Note |
|-------|-------|------|
| Kimi K2.5 | ~99% | Effectively saturated |
| Claude Sonnet 4 | 95.1% | |
| Claude Opus 4 | 94.5% | |
| Codestral 25.01 | 86.6% | Mistral |

HumanEval is no longer a frontier discriminator. Industry has migrated to LiveCodeBench and SWE-bench Pro.

---

## New Benchmarks & Methodology

### Epoch AI harness v2.0.3 (Mar 6, 2026)
Epoch AI patched agentic coding benchmark harness to v2.0.3 on March 6. Change: added logic guards preventing post-GPT-5.1 OpenAI models from overriding Codex native tools during evaluation. No score changes expected from this update; old and new results remain directly comparable.

### HAL: SWE-bench Verified Mini (Princeton)
Princeton's HAL leaderboard now tracks a "Verified Mini" subset — a smaller, faster-to-run slice of SWE-bench Verified. Useful for cost-efficient ablations, but inherits the same contamination problems as the full Verified set.

### Live-SWE-agent Leaderboard
A new leaderboard at live-swe-agent.github.io tracks SWE-agent variants against continuously updated issue sets, addressing the static-dataset problem. Early results suggest same scaffold-driven variance seen on other boards.

### FrontierMath: Open Problems (Epoch AI, Jan 2026 — context)
Released January 2026; tests AI on genuinely unsolved mathematical research problems. Currently no model has achieved meaningful scores, confirming it is a hard upper-bound measure rather than a practical discriminator for coding agents.

### GDPval / APEX-Agents (Epoch AI, Feb 2026 — context)
Designed to measure economically valuable digital work across 44 knowledge-work occupations (GDPval) and enterprise agent tasks (APEX-Agents). Epoch AI's Feb 13 analysis found these correlate better with real-world deployment value than SWE-bench Verified. No full leaderboard yet.

---

## Notable Movements

### Convergence at the frontier
The score gap between rank-1 and rank-10 on major coding benchmarks has fallen to ~5.4 percentage points (from 11.9% a year ago). Rank-1 vs. rank-2 margins are now often below 0.5 pp. This compression makes scaffold and harness choices statistically more significant than model selection for many use cases.

### Grok 4 enters the coding benchmark conversation
xAI's Grok 4 posted 79.6% on Aider Polyglot — its first notable coding-benchmark result. Self-reported; awaiting independent verification. No SWE-bench Verified or Pro number published yet.

### Kimi K2 targets service-agent niche
Moonshot AI's Kimi K2 claimed the Tau2 Bench Telecom top spot, differentiating from the "AI pair programmer" cluster dominated by Claude/Gemini/GPT. This suggests increasing benchmark specialization as models diverge on use-case optimization.

### Open-source continues closing gap
MiniMax M2.5 (229B open-weight) holds #4 on SWE-bench Verified. GLM-5 (Zhipu, MIT license, Huawei Ascend-trained), Kimi K2.5, and DeepSeek V3.2 all rank in the top 10. DeepSeek V3.2 also ranks #3 on LiveCodeBench. Open-weight models are plausible frontier alternatives across multiple benchmark dimensions.

### OlMo Hybrid (AI2, Mar 6, 2026) — efficiency benchmark note
AI2 released OlMo Hybrid (7B), combining transformer attention with linear recurrent layers. Reaches same MMLU accuracy as OlMo 3 with 49% fewer training tokens — a 2× data efficiency improvement. Not a coding-specific benchmark result but signals that architecture choices now rival scale as a benchmark driver.

### Qwen3.5 efficiency models (Mar 2026)
Alibaba's Qwen3.5-4B and -9B released under Apache 2.0. Qwen3.5-9B reportedly outperforms OpenAI's open-source gpt-oss-120B on several third-party benchmarks at a fraction of the parameter count. Highlights the ongoing challenge of weight-count vs. capability framing in leaderboard comparisons.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-Bench Pro — SEAL by Scale AI](https://scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [SWE-bench Live — GitHub (Microsoft)](https://github.com/microsoft/SWE-bench-Live)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [Live-SWE-agent Leaderboard](https://live-swe-agent.github.io/)
- [HAL: SWE-bench Verified Mini — Princeton](https://hal.cs.princeton.edu/swebench_verified_mini)
- [SWE-Bench Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [Terminal-Bench 2.0 — tbench.ai](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench — vals.ai](https://www.vals.ai/benchmarks/lcb)
- [OpenAI drops SWE-bench Verified](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [OpenAI abandons SWE-bench Verified — blockchain.news](https://blockchain.news/news/openai-abandons-swe-bench-verified-contamination-flawed-tests)
- [arxiv 2602.04449 — SWE-bench methodology critique](https://arxiv.org/pdf/2602.04449)
- [Sonar Foundation Agent press release](https://www.sonarsource.com/company/press-releases/sonar-claims-top-spot-on-swe-bench-leaderboard/)
- [AI Model Benchmarks Mar 2026 — LM Council](https://lmcouncil.ai/benchmarks)
- [Epoch AI Benchmarks](https://epoch.ai/benchmarks)
- [AI News Briefs March 2026 — Radical Data Science](https://radicaldatascience.wordpress.com/2026/03/06/ai-news-briefs-bulletin-board-for-march-2026/)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
