---
title: "Benchmarks, April 10, 2026"
date: 2026-04-10
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "No leaderboard movement since April 9; 'Claude Mythos Preview' at 77.8% on SWE-bench Pro custom scaffold remains unverified; SEAL standardized leaderboard unchanged; LiveCodeBench v6 at 41 models evaluated post April 8 refresh"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-10

No new leaderboard entries since April 9. The benchmark landscape is essentially static heading into the weekend. The "Claude Mythos Preview" anomaly at 77.8% on SWE-bench Pro (custom scaffold, self-reported, Apr 7) has not been verified or explained by Anthropic. The SEAL-standardized SWE-bench Pro leaderboard remains frozen at March 2026 data. LiveCodeBench v6 was last refreshed April 8 and continues to show Gemini models leading with no Anthropic or OpenAI entry in the top 5. FeatureBench and APEX-Agents continue to tell a sobering story: frontier models capable of 70–80% on SWE-bench Verified collapse to 11–12% on feature-development tasks.

---

## Leaderboard

### SWE-bench Verified (⚠ Retired Feb 23, 2026 — contaminated, for historical reference only)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 17, 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 ⚠ under audit | SWE-bench Verified | 80.2% | Feb 12, 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | ~Mar 2026 |
| 7 | Sonar Foundation Agent ⚠ self-reported | SWE-bench Verified | 79.2% | Feb 19, 2026 |
| 8 | Qwen3.6 Plus | SWE-bench Verified | 78.8% | ~Mar 2026 |
| 9 | Gemini 3 Flash | SWE-bench Verified | 78.0% | Feb 17, 2026 |
| 10 | GLM-5 ⚠ self-reported | SWE-bench Verified | 77.8% | ~Mar 2026 |

*All frontier scores above are contaminated. OpenAI's audit found verbatim gold-patch recall across GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. Scaffold: mini-SWE-agent v2.0.0. Do not use for capability comparisons.*

---

### SWE-bench Pro — SEAL Standardized Scaffold (Scale AI, public set, 731 tasks)

*Unchanged since April 9. This is the credible standard: common scaffold, confidence intervals published, comparable across labs.*

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ±3.6% | 2026-03 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro (SEAL) | 43.6% ±3.6% | 2026-03 |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro (SEAL) | 43.3% ±3.6% | 2026-03 |
| 4 | Claude Sonnet 4 | SWE-bench Pro (SEAL) | 42.7% ±3.6% | 2026-03 |
| 5 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% ±3.5% | 2026-03 |
| 6 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% ±3.6% | 2026-03 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro (SEAL) | 39.5% ±3.6% | 2026-03 |
| 8 | Qwen3-Coder-480B-A35B | SWE-bench Pro (SEAL) | 38.7% ±3.6% | 2026-03 |
| 9 | MiniMax 2.1 | SWE-bench Pro (SEAL) | 36.8% ±3.6% | 2026-03 |
| 10 | Gemini 3 Flash | SWE-bench Pro (SEAL) | 34.6% ±3.6% | 2026-03 |

*Confidence intervals overlap for ranks 2–6; treat ordering with caution. Private set (276 proprietary tasks) scores ~25% lower across labs — reliable contamination signal.*

---

### SWE-bench Pro — Custom Scaffolds (self-reported, not comparable to SEAL)

| Rank | Agent | Model | Score | Date | Verified? |
|------|-------|-------|-------|------|-----------|
| 1 | **Claude Mythos Preview** ⚠ | Claude Mythos (preview) | **77.8%** | Apr 7, 2026 | ⚠ Unverified, self-reported |
| 2 | GLM-5.1 | GLM-5.1 | 58.4% | ~Apr 2026 | Self-reported |
| 3 | GPT-5.4 | GPT-5.4 | 57.7% | ~Mar 2026 | Self-reported |
| 4 | Opus 4.6 + WarpGrep v2 (Morph) | Claude Opus 4.6 | 57.5% | 2026-03 | Self-reported |
| 5 | GPT-5.3-Codex CLI | GPT-5.3-Codex | 57.0% | 2026-03 | Self-reported |
| 6 | Claude Code | Claude Opus 4.5 | 55.4% | 2026-03 | Self-reported |

*"Claude Mythos Preview" is still an unrecognized model designation — no Anthropic announcement, no independent replication, no SEAL submission. Its ~20 pp gap over the next-best custom-scaffold result has not narrowed in three days. Treat as a flag, not a fact.*

---

### SWE-rebench (rolling refresh, Nebius AI — Jan 2 – Mar 1, 2026 window, 57 tasks, 46 repos)

New entries (GPT-5.4, Gemini 3.1 Pro Preview, Claude Sonnet 4.6, Qwen3.5-397B-A17B) added to the leaderboard this week; full scoring pending. Previous top results below.

| Rank | Model | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | Claude Opus 4.6 | SWE-rebench | 65.3% (Pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench | 64.4% (Pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench | 62.8% (Pass@5: 70.2%) | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench | 62.3% (Pass@5: 75.4%) | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench | 60.9% (Pass@5: 73.7%) | 2026-03 |

*Each task is creation-date tagged; red = model could have seen it in training. Transparent contamination-risk disclosure. New entries not yet fully scored as of April 10.*

---

### Terminal-Bench 2.0 (Harbor framework, Docker-isolated, 89 tasks — 28 models evaluated)

*No new entries since March 9. Leaderboard static.*

| Rank | Agent + Model | Score | Date | Verified? |
|------|--------------|-------|------|-----------|
| 1 | Forge Code + Gemini 3.1 Pro | 78.4% ±1.8% | Mar 9, 2026 | Self-reported |
| 2 | Droid + GPT-5.3-Codex | 77.3% ±2.2% | Mar 9, 2026 | Self-reported |
| 3 | Simple Codex + GPT-5.3-Codex | 75.1% ±2.4% | Mar 9, 2026 | **Independently verified** |
| 4 | Terminus-KIRA + Gemini 3.1 Pro | 74.8% ±2.6% | Mar 9, 2026 | Self-reported |
| 5 | Terminus-KIRA + Claude Opus 4.6 | 74.7% ±2.6% | Mar 9, 2026 | Self-reported |
| 6 | Mux + GPT-5.3-Codex | 74.6% ±2.5% | Mar 9, 2026 | Self-reported |
| 7 | OB-1 (multi-model) | 72.4% ±2.3% | Mar 9, 2026 | Self-reported |
| 8 | TongAgents + Claude Opus 4.6 | 71.9% ±2.7% | Mar 9, 2026 | Self-reported |
| 9 | Junie CLI (multi-model) | 71.0% ±2.9% | Mar 9, 2026 | Self-reported |
| 10 | CodeBrain-1 + GPT-5.3-Codex | 70.3% ±2.6% | Mar 9, 2026 | Self-reported |

*GPT-5.3-Codex spans ranks 2–10 depending on scaffold — ~7 pp spread from harness alone. Artificial Analysis independent eval of "hard" tasks only comes in ~24 pp below self-reported tops. Infrastructure CPU/memory allocation can swing scores ±6 pp (Anthropic audit). Saturation approaching: benchmark may need expansion to remain discriminative.*

---

### LiveCodeBench v6 (contamination-resistant rolling window — refreshed April 8, 2026; 41 models evaluated)

| Rank | Model | Score (pass@1) | Date |
|------|-------|----------------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Apr 3, 2026 |
| 2 | Gemini 3 Flash Preview | 90.8% | Apr 3, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Apr 3, 2026 |
| 4 | Seed 2.0 Pro (ByteDance) | 87.8% | ~Apr 2026 |
| 5 | DeepSeek-V3.2 Thinking | 83.3% | ~Apr 2026 |

*Rolling window of post-cutoff competitive programming (LeetCode, Codeforces, AtCoder) makes contamination structurally difficult. Last refreshed April 8. Average across 41 models: 67.1%. Google and Chinese open-source labs dominate; no Anthropic or OpenAI model in the top 5. Most trustworthy mainstream coding signal due to rolling post-cutoff problem sourcing.*

---

### HumanEval (164 Python tasks — saturated, frontier reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Kimi K2 0905 | 94.5% | Sep 2025 |
| 2 | Claude 3.5 Sonnet | 93.7% | Oct 2024 |
| 3 | GPT-5 | 93.4% | Aug 2025 |
| 4 | Kimi K2 Instruct | 93.3% | Jul 2025 |
| 5 | Qwen2.5-Coder 32B | 92.7% | Sep 2024 |

*Frontier models cluster 91–99%; no meaningful discrimination possible. Use EvalPlus (HumanEval+, 80× more tests) or BigCodeBench for real signal.*

---

## New Benchmarks & Methodology

**FeatureBench** (LiberCoders / ICLR 2026)
Tests agentic coding for complex feature development rather than bug fixes. 200 tasks, 3,825 executable environments, 24 open-source repos (L1: incremental features, L2: from scratch). Striking finding: Claude Opus 4.5 scores 74.4% on SWE-bench Verified but only **11.0%** on FeatureBench; GPT-5.1-Codex tops at 12.5%. This benchmark exposes the widest known gap between bug-fix performance and real-world development capability. Verification via fail-to-pass/pass-to-pass automated test suites.

**APEX-Agents** (Epoch AI Capabilities Index, added March 2026)
Multi-step autonomous agentic task completion under controlled conditions. Verified scores: Gemini 3.1 Pro 33.5%, Claude Opus 4.6 29.8%, GPT-5.2 23.0%, Gemini 3 Pro 18.4%. Epoch publishes methodology; third-party reproducible.

**GDPval** (OpenAI, January 2026)
44 knowledge-work occupations across 9 industries — tasks covering work worth ~$3T annually. GPT-5.4 (xhigh): 1,675 pts, 83%. **Conflict-of-interest flag:** OpenAI designed and administers the benchmark; leads on it; no independent validation as of April 10.

**SWE-bench Live** (rolling)
Live/rolling GitHub issue resolution benchmark. Designed to resist contamination through continuous refresh. No SEAL-equivalent standardized leaderboard yet; adoption growing.

**FLTEval** (March 2026)
Fault-localization tasks appearing in composite leaderboards (BenchLM.ai). Limited public methodology detail; treat scores as preliminary.

---

## Notable Movements

**No new entries April 9–10.**
For the second consecutive day the major leaderboards (SWE-bench Pro SEAL, Terminal-Bench 2.0, LiveCodeBench v6) show no new submissions. Quiet periods often precede model release announcements.

**"Claude Mythos Preview" anomaly now 72 hours old and unexplained.**
The Apr 7 custom-scaffold entry at 77.8% on SWE-bench Pro remains the outlier entry of the week. No Anthropic communications, no independent replication, no SEAL submission have materialized. The ~20 pp gap above the established custom-scaffold ceiling (~57%) grows harder to explain as noise or error — but equally, an authentic unreleased Anthropic model would typically generate some disclosure. Do not cite until verified.

**FeatureBench gap widens the capability narrative.**
The 63 pp gulf between Verified (74.4%) and FeatureBench (11.0%) for Claude Opus 4.5 is a durable finding that receives insufficient coverage relative to leaderboard churn. It suggests current SOTA models excel at bounded bug-fix tasks with defined patches, and collapse on open-ended feature synthesis — a meaningful distinction for production deployment decisions.

**Scaffold premium remains the dominant distortion.**
Same model (Opus 4.5): 45.9% SEAL → 55.4% Claude Code custom scaffold, a ~10 pp band from harness alone. On Terminal-Bench 2.0, GPT-5.3-Codex spans 70.3%–77.3% depending on scaffold. Any leaderboard mixing custom and standardized results is measuring agents, not models.

**MiniMax M2.5 audit unresolved.**
No conclusion since February controversy. MiniMax shifted focus to M2.7 (56.22% on SWE-bench Pro custom scaffold); Verified-era claims remain unresolved.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-bench Pro analysis: Why 46% beats 81% — morphllm.com](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-bench Live leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 — tbench.ai](https://www.tbench.ai/)
- [Terminal-Bench 2.0 — morphllm.com](https://www.morphllm.com/terminal-bench-2)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [Why we no longer evaluate SWE-bench Verified — OpenAI](https://openai.com/index/introducing-swe-bench-verified/)
- [AI Coding Benchmarks 2026 — morphllm.com](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [MiniMax M2.5 benchmark fraud debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [GDPval — OpenAI](https://openai.com/index/gdpval/)
- [GDPval-AA — Artificial Analysis](https://artificialanalysis.ai/evaluations/gdpval-aa)
