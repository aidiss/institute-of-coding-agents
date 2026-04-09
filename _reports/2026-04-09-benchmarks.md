---
title: "Benchmarks, April 9, 2026"
date: 2026-04-09
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "SWE-bench Verified contested/retired; SWE-bench Pro SEAL is the credible standard; mystery entry 'Claude Mythos Preview' at 77.8% on Pro custom scaffold; LiveCodeBench v6 refreshed April 8"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-09

Minimal movement since April 8. The standout event is an unverified leaderboard entry for "Claude Mythos Preview" at 77.8% on SWE-bench Pro (custom scaffold, self-reported), an extraordinary jump of ~20 pp above the previous custom-scaffold ceiling of ~57%. If genuine, it represents a major capability inflection; if not, it illustrates how easily unverified entries distort the perception of the field. LiveCodeBench v6 was refreshed on April 8 with 41 evaluated models; Gemini holds the top two slots. The SEAL-standardized SWE-bench Pro leaderboard is unchanged.

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

*All frontier scores above are contaminated. OpenAI's audit found verbatim gold-patch recall across GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash. Do not use for capability comparisons. Scaffold: mini-SWE-agent v2.0.0.*

---

### SWE-bench Pro — SEAL Standardized Scaffold (Scale AI, public set, 731 tasks)

*No new entries since April 8. This is the credible standard: common scaffold, confidence intervals published, comparable across labs.*

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

*"Claude Mythos Preview" is a new and unknown model designation. Its 77.8% score is ~20 pp above the next-best custom-scaffold result and has not been independently verified. Treat as a flag, not a fact.*

---

### SWE-rebench (rolling refresh, Nebius AI — current window Jan 2 – Mar 1, 2026, 57 tasks, 46 repos)

New entries added to leaderboard since April 8: `gpt-5.4-2026-03-05-medium`, `Gemini 3.1 Pro Preview`, `Claude Sonnet 4.6`, `Qwen3.5-397B-A17B`, `gpt-5.3-codex-xhigh`. Full scored results pending publication.

| Rank | Model | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | Claude Opus 4.6 | SWE-rebench | 65.3% (Pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench | 64.4% (Pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench | 62.8% (Pass@5: 70.2%) | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench | 62.3% (Pass@5: 75.4%) | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench | 60.9% (Pass@5: 73.7%) | 2026-03 |

*Each task is creation-date tagged; red = model could have seen it in training. Transparent contamination risk disclosure.*

---

### Terminal-Bench 2.0 (Harbor framework, Docker-isolated, 89 tasks — 28 models evaluated)

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

*GPT-5.3-Codex spans ranks 2–10 depending on scaffold, a ~7 pp spread from harness alone. "Hard" tasks only (Artificial Analysis independent eval): ~24 pp below self-reported tops. Infrastructure CPU/memory allocation can swing scores ±6 pp (Anthropic audit).*

---

### LiveCodeBench v6 (contamination-resistant rolling window — updated April 8, 2026; 41 models evaluated)

| Rank | Model | Score (pass@1) | Date |
|------|-------|----------------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Apr 3, 2026 |
| 2 | Gemini 3 Flash Preview | 90.8% | Apr 3, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Apr 3, 2026 |
| 4 | Seed 2.0 Pro (ByteDance) | 87.8% | ~Apr 2026 |
| 5 | DeepSeek-V3.2 Thinking | 83.3% | ~Apr 2026 |

*Rolling window of post-cutoff competitive programming (LeetCode, Codeforces, AtCoder) makes contamination structurally difficult. Leaderboard refreshed April 8 with 41 total models; average score 67.1%, best 87.8%. Google and Chinese labs dominate; no Anthropic/OpenAI model in top 5.*

---

### HumanEval (164 Python tasks — saturated, frontier reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Kimi K2 0905 | 94.5% | Sep 2025 |
| 2 | Claude 3.5 Sonnet | 93.7% | Oct 2024 |
| 3 | GPT-5 | 93.4% | Aug 2025 |
| 4 | Kimi K2 Instruct | 93.3% | Jul 2025 |
| 5 | Qwen2.5-Coder 32B | 92.7% | Sep 2024 |

*Frontier models cluster at 91–99%; no meaningful differentiation possible. Use EvalPlus (HumanEval+, 80× more tests) or BigCodeBench for any real signal.*

---

## New Benchmarks & Methodology

**SWE-bench Live** (rolling)
Live/rolling benchmark evaluating issue resolution against real GitHub issues in near-real-time, as distinct from the static snapshot of SWE-bench Verified. Actively maintained; no SEAL-equivalent standardized leaderboard yet.

**FeatureBench** (LiberCoders / ICLR 2026)
Tests agentic coding for complex feature development rather than bug fixes. 200 tasks, 3,825 executable environments, 24 open-source repos (L1: incremental features, L2: from scratch). Striking finding: Claude Opus 4.5 scores 74.4% on SWE-bench Verified but only **11.0%** on FeatureBench; GPT-5.1-Codex tops at 12.5%. Verification via fail-to-pass/pass-to-pass automated test suites.

**APEX-Agents** (Epoch AI Capabilities Index, added March 2026)
Multi-step autonomous agentic task completion. Verified scores: Gemini 3.1 Pro 33.5%, Claude Opus 4.6 29.8%, GPT-5.2 23.0%, Gemini 3 Pro 18.4%.

**GDPval** (OpenAI)
44 knowledge-work occupations across 9 industries. GPT-5.2: 70.9%. **Conflict-of-interest flag:** OpenAI designed the benchmark and leads on it; no independent validation yet.

**FLTEval** (March 2026)
Fault-localization tasks appearing in composite leaderboards (BenchLM.ai). Limited public methodology detail; treat scores as preliminary.

---

## Notable Movements

**Claude Mythos Preview drops a 77.8% on SWE-bench Pro (custom scaffold, unverified — Apr 7, 2026).**
An unrecognized model name with a score ~20 pp above the established custom-scaffold frontier (~57%). This either signals a major unreleased Anthropic model, an error, or a fabricated submission. Not on the SEAL standardized leaderboard. Flag for follow-up before citing.

**SWE-rebench grows to include GPT-5.4 and Gemini 3.1 Pro Preview (April 2026).**
New entries signal the benchmark is gaining adoption among frontier labs. Results pending full scoring publication. SWE-rebench remains the most contamination-transparent SWE-style evaluation available.

**LiveCodeBench v6 refreshed April 8 — Gemini holds top two.**
Updated to 41 evaluated models; average score 67.1%. Gemini 3 Pro Preview (91.7%) and Gemini 3 Flash Preview (90.8%) lead; DeepSeek V3.2 Speciale (89.6%) is the top non-Google model and is open-source. No Anthropic or OpenAI model in the top 5. Most trustworthy mainstream coding signal due to rolling post-cutoff problem sourcing.

**Scaffold premium remains the dominant distortion.**
Across SWE-bench Pro: the same model (Opus 4.5) scores 45.9% (SEAL) to 55.4% (Claude Code custom scaffold) — a ~10 pp band from harness alone. On Terminal-Bench 2.0, GPT-5.3-Codex spans 70.3%–77.3% depending on scaffold. Any leaderboard mixing custom and standardized results is measuring agents, not models.

**Saturation approaching on Terminal-Bench 2.0.**
Top verified entry (75.1%) was submitted March 9. Self-reported tops are at 78.4%. The benchmark launched with ~20–30% scores at development, ~40–45% at ICLR 2026 debut, and has reached the upper-70s within months. A harder variant or expansion is likely necessary to maintain signal.

**MiniMax M2.5 audit ongoing.**
No resolution since the February controversy. MiniMax released M2.7 in March (56.22% on SWE-bench Pro custom scaffold), moving away from the contested Verified scores. Treat any MiniMax Verified-era claims as unresolved until formal audit conclusion.

**EU JRC report baseline.**
"Can We Trust AI Benchmarks?" remains the reference for systemic issues: misaligned incentives, construct validity gaps, no cross-industry contamination standards, no adoption thresholds. No enforcement mechanisms as of April 2026.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified/)
- [SWE-bench Verified — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-bench Pro analysis: Why 46% beats 81% — morphllm.com](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Pro Benchmark 2026 — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-bench Live leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 — llm-stats.com](https://llm-stats.com/benchmarks/terminal-bench-2)
- [Terminal-Bench 2.0 — morphllm.com](https://www.morphllm.com/terminal-bench-2)
- [Terminal-Bench 2.0 — tbench.ai](https://www.tbench.ai/)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench v6 — llm-stats.com](https://llm-stats.com/benchmarks/livecodebench-v6)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [EvalPlus leaderboard](https://evalplus.github.io/leaderboard.html)
- [SWE-bench Verified contamination debate — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [AI Coding Benchmarks 2026 — morphllm.com](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [Best AI Models April 2026 — buildfastwithai.com](https://www.buildfastwithai.com/blogs/best-ai-models-april-2026)
- [SWE-bench & LiveCodeBench March 2026 — BenchLM.ai](https://benchlm.ai/coding)
- [Why we no longer evaluate SWE-bench Verified — OpenAI](https://openai.com/index/introducing-swe-bench-verified/)
- [MiniMax M2.5 benchmark fraud debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
