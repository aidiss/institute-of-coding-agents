---
title: "Benchmarks, April 11, 2026"
date: 2026-04-11
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Terminal-Bench 2.0 has a new leader: Claude Opus 4.6 at 82.9% (Apr 1 entry confirmed); Scale AI SEAL leaderboard adds mini-swe-agent entries pushing ceiling to 59.1% (GPT-5.4-pro) — harness mixing now active on official board; Claude Mythos Preview unverified anomaly now 4 days old"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-11

Two genuine movements since April 10. Terminal-Bench 2.0 has a new overall leader: Claude Opus 4.6 at 82.9% (±1.4%), confirmed via tbench.ai, dated April 1 — this entry was absent from yesterday's report. On the Scale AI SEAL SWE-bench Pro leaderboard, three new mini-swe-agent submissions now sit above the previous standard-eval ceiling of 45.9%, with GPT-5.4-pro reaching 59.1%. The SEAL board is now mixing two harness types, which degrades its value as a standardized comparator. The "Claude Mythos Preview" custom-scaffold anomaly at 77.8% on SWE-bench Pro enters its fourth day without verification. LiveCodeBench v6 and HumanEval are unchanged.

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

*Retired. OpenAI's February 2026 audit found verbatim gold-patch recall across all frontier models tested (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash). Additionally, 59.4% of tasks were found structurally flawed (49 over-specified, 26 under-specified). Models scoring ~80% here score 23–46% on SWE-bench Pro. Do not use for capability comparisons.*

---

### SWE-bench Pro — SEAL (Scale AI, public set, 731 tasks)

⚠ **Harness mixing alert (new as of April 11):** Three mini-swe-agent submissions now sit above the standard-eval ceiling. Scale AI marks these with asterisks but they appear in the same ranked table. Ranks 1–3 are not comparable to ranks 4–10.

| Rank | Model | Benchmark | Score | Harness | Date |
|------|-------|-----------|-------|---------|------|
| 1 | GPT-5.4-pro ⚠ | SWE-bench Pro (SEAL) | 59.1% ±3.6% | mini-swe-agent | ~Apr 2026 |
| 2 | Muse Spark ⚠ (unidentified) | SWE-bench Pro (SEAL) | 55.0% ±3.6% | mini-swe-agent | ~Apr 2026 |
| 3 | Claude Opus 4.6 (thinking) ⚠ | SWE-bench Pro (SEAL) | 51.9% ±3.6% | mini-swe-agent | ~Apr 2026 |
| 4 | Gemini 3.1 Pro (thinking) ⚠ | SWE-bench Pro (SEAL) | 46.1% ±3.6% | mini-swe-agent | ~Apr 2026 |
| 5 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ±3.6% | standard | 2026-03 |
| 6 | Claude Sonnet 4.5 | SWE-bench Pro (SEAL) | 43.6% ±3.6% | standard | 2026-03 |
| 7 | Gemini 3 Pro Preview | SWE-bench Pro (SEAL) | 43.3% ±3.6% | standard | 2026-03 |
| 8 | Claude Sonnet 4 | SWE-bench Pro (SEAL) | 42.7% ±3.6% | standard | 2026-03 |
| 9 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% ±3.5% | standard | 2026-03 |
| 10 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% ±3.6% | standard | 2026-03 |

*Confidence intervals overlap for ranks 5–9 on the standard-eval block; treat ordering within that cluster with caution. "Muse Spark" origin unknown — no public affiliation disclosed. Mini-swe-agent entries (rows 1–4) are submitted under a different evaluation protocol and cannot be ranked against the standard submissions below them.*

---

### SWE-bench Pro — Custom Scaffolds (self-reported, not comparable to SEAL)

| Rank | Agent | Model | Score | Date | Verified? |
|------|-------|-------|-------|------|-----------|
| 1 | **Claude Mythos Preview** ⚠ | Claude Mythos (preview) | **77.8%** | Apr 7, 2026 | ⚠ Unverified, self-reported |
| 2 | GLM-5.1 | GLM-5.1 | 58.4% | ~Apr 2026 | Self-reported |
| 3 | GPT-5.4 | GPT-5.4 | 57.7% | ~Mar 2026 | Self-reported |
| 4 | Claude Code | Claude Opus 4.5 | 55.4% | 2026-03 | Self-reported |

*"Claude Mythos Preview" is now 4 days old with no Anthropic disclosure, no independent replication, and no SEAL submission. The ~20 pp gap above the next custom-scaffold entry (GLM-5.1 at 58.4%) and ~19 pp above the new mini-swe-agent ceiling (GPT-5.4-pro 59.1%) remain unexplained.*

---

### SWE-rebench (rolling refresh, Nebius AI — Jan 2 – Mar 1, 2026 window, 57 tasks, 46 repos)

| Rank | Model | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | Claude Opus 4.6 | SWE-rebench | 65.3% (Pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench | 64.4% (Pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench | 62.8% (Pass@5: 70.2%) | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench | 62.3% (Pass@5: 75.4%) | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench | 60.9% (Pass@5: 73.7%) | 2026-03 |

*New entries (GPT-5.4, Claude Sonnet 4.6, Qwen3.5-397B-A17B) added to evaluation queue; scores pending. Tasks creation-date tagged for contamination transparency. Methodology update Feb 2026: removed demonstrations (models no longer need them) and lifted 80-step limit.*

---

### Terminal-Bench 2.0 (Harbor framework, Docker-isolated, 89 tasks)

**New leader as of April 11.** Claude Opus 4.6 at 82.9% (±1.4%) — confirmed via tbench.ai, dated April 1, 2026. GPT-5.4 (81.8%, March 12) and a second Claude Opus 4.6 run (81.8%, March 12) follow closely.

| Rank | Agent + Model | Score | Date | Verified? |
|------|--------------|-------|------|-----------|
| 1 | Claude Opus 4.6 | 82.9% ±1.4% | **Apr 1, 2026** | tbench.ai |
| 2 | GPT-5.4 | 81.8% ±2.0% | Mar 12, 2026 | tbench.ai |
| 3 | Claude Opus 4.6 (run 2) | 81.8% ±1.7% | Mar 12, 2026 | tbench.ai |
| 4 | Gemini 3.1 Pro | 80.2% ±2.6% | Mar 13, 2026 | tbench.ai |
| 5 | GPT-5.3-Codex | 78.4% ±2.2% | Mar 13, 2026 | tbench.ai |
| 6 | Gemini 3.1 Pro (run 2) | 78.4% ±1.8% | Mar 2, 2026 | tbench.ai |
| 7 | GPT-5.3-Codex (run 2) | 77.3% ±2.2% | Feb 24, 2026 | tbench.ai |
| 8 | Claude Opus 4.6 (run 3) | 75.3% ±2.4% | Mar 12, 2026 | tbench.ai |
| 9 | GPT-5.3-Codex (run 3) | 75.1% ±2.4% | Feb 6, 2026 | tbench.ai |
| 10 | Gemini 3.1 Pro (run 3) | 74.8% ±2.6% | Feb 23, 2026 | tbench.ai |

*Multiple runs of the same model create apparent "different agents" in the ranking. GPT-5.3-Codex spans ranks 5–9 (~7 pp) from run variation alone. Infrastructure allocation reported to swing scores ±6 pp (Anthropic audit). Approaching saturation on easy tasks — 89-task count may need expansion.*

---

### LiveCodeBench v6 (rolling, post-cutoff competitive programming — last refreshed Apr 8, 2026; 41 models)

| Rank | Model | Score (pass@1) | Date |
|------|-------|----------------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Apr 3, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Apr 3, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Apr 3, 2026 |
| 4 | Seed 2.0 Pro (ByteDance) | 87.8% | ~Apr 2026 |
| 5 | Kimi K2.5 | 85.6% | ~Apr 2026 |
| 6 | Qwen3.6 Plus | 87.1% | ~Apr 2026 |
| 7 | DeepSeek-V3.2 Thinking | 83.3% | ~Apr 2026 |
| 8 | Claude Opus 4.5 | 84.8% | ~Apr 2026 |
| 9 | Claude Opus 4.6 | 76.0% | ~Apr 2026 |
| — | *(average across 41 models)* | 67.1% | Apr 8, 2026 |

*Unchanged since April 8 refresh. Rolling post-cutoff sourcing (LeetCode, AtCoder, Codeforces) makes contamination structurally difficult — the most trustworthy signal for raw coding capability. Google and Chinese open-source labs dominate the top 5; no OpenAI model in the top 5.*

---

### HumanEval (164 Python tasks — saturated, frontier reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Kimi K2.5 | 99.0% | ~2026 |
| 2 | Various frontier models | 95–98% | 2025–2026 |

*Saturated. All frontier models score 95%+. Use EvalPlus (HumanEval+, 80× denser test cases) or BigCodeBench for meaningful signal. HumanEval scores are included here only for historical context.*

---

## New Benchmarks & Methodology

**LiveCodeBench v6** (rolling, 2026)
The current live slice of LCB is referred to informally as "v6" — problems harvested from competitive programming sites post-model-cutoffs. Qwen3.6 Plus leads the April slice at 87.1%, followed by Kimi K2.5 (85.6%) and Claude Opus 4.5 (84.8%). The rolling-window design is the field's most effective anti-contamination mechanism and is increasingly cited as a preferred signal over static benchmarks.

**GDPval** (OpenAI, January 2026)
44 knowledge-work occupations across 9 U.S. industries; tasks representing ~$3T annual economic output. GPT-5.4 (xHigh) leads at 1,675 pts / 83%. **Conflict-of-interest flag:** OpenAI designed, administers, and leads this benchmark; no independent validation or third-party replication published as of April 11. Treat as self-reported until externally verified.

**FeatureBench** (LiberCoders / ICLR 2026)
200 agentic feature-development tasks (not bug fixes) across 24 repos, 3,825 executable environments. Claude Opus 4.5 scores 11.0%; GPT-5.1-Codex tops at 12.5%. The ~63 pp gap between SWE-bench Verified performance and FeatureBench performance is the starkest known measurement of the bug-fix vs. open-ended development divide.

**APEX-Agents** (Epoch AI Capabilities Index, March 2026)
Multi-step autonomous agentic task completion. Independently verified. Gemini 3.1 Pro: 33.5%; Claude Opus 4.6: 29.8%; GPT-5.2: 23.0%. Epoch publishes full methodology; third-party reproducible.

**SWE-bench Live** (rolling)
Live GitHub issue resolution benchmark with continuous refresh for contamination resistance. No SEAL-equivalent standardized leaderboard yet; growing adoption.

**SWE-rebench methodology update** (February 2026)
Removed mandatory demonstrations (models now plan and follow tool formats without examples) and lifted the 80-step ceiling. Context window limit remains 128k. These changes reflect genuine capability improvements rather than benchmark gaming.

---

## Notable Movements

**Terminal-Bench 2.0 has a new leader: Claude Opus 4.6 at 82.9% (Apr 1).**
Yesterday's report showed the leaderboard frozen at March 9 data. An April 1 entry from Claude Opus 4.6 (82.9% ±1.4%) now sits atop tbench.ai — a ~0.5 pp improvement over the previous best run and the first April entry on the board. Confidence intervals overlap with GPT-5.4 (81.8%) and the concurrent Claude Opus 4.6 run (81.8%), so treat the ordering as statistical noise rather than a definitive gap.

**Scale AI SEAL leaderboard adds mini-swe-agent entries — harness mixing begins.**
Three mini-swe-agent submissions now appear in the same ranked table as standard-eval entries: GPT-5.4-pro (59.1%), Muse Spark (55.0%), Claude Opus 4.6 thinking (51.9%). These are marked with asterisks but occupy the top three rows. This erodes the SEAL board's primary value proposition — standardized comparability. Pending a harness-segregated view, the reliable ceiling for standard-eval SWE-bench Pro remains Claude Opus 4.5 at 45.9% (March 2026). "Muse Spark" has no disclosed affiliation or model details.

**"Claude Mythos Preview" anomaly: day 4, still unverified.**
The April 7 custom-scaffold entry at 77.8% on SWE-bench Pro has not been confirmed, explained, or replicated. The GPT-5.4-pro mini-swe-agent result of 59.1% (now on Scale AI) means a ~19 pp gap persists between Mythos and the next credible number on the board. No Anthropic announcement, no SEAL submission, no independent run. Do not cite until verified.

**Scaffold premium: the dominant distortion.**
Claude Opus 4.5 scores: 45.9% (SEAL standard) → 51.9% (mini-swe-agent, same SEAL board) → 55.4% (Claude Code custom scaffold). That's a 9.5 pp spread from harness alone on the same model. On Terminal-Bench 2.0, GPT-5.3-Codex spans 75.1%–78.4% across runs. Any leaderboard that mixes harness configurations is measuring agent infrastructure, not model capability.

**FeatureBench gap remains underreported.**
The 63 pp gulf between SWE-bench Verified and FeatureBench for Claude Opus 4.5 (74.4% vs. 11.0%) continues to receive less coverage than leaderboard point movements. This is the most operationally significant benchmark finding of the quarter for anyone making deployment decisions.

**MiniMax M2.5 audit unresolved.**
No conclusion since the February Verified-era controversy. MiniMax has moved focus to M2.7 (56.22% on custom-scaffold SWE-bench Pro); prior claims remain under audit.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis: Why 46% beats 81% — morphllm.com](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench contamination debate — codesota.com](https://www.codesota.com/news/swe-bench-contamination-debate)
- [OpenAI abandons SWE-bench Verified — blockchain.news](https://blockchain.news/news/openai-abandons-swe-bench-verified-contamination-flawed-tests)
- [SWE-bench Pro — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [Terminal-Bench 2.0 — tbench.ai](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench 2.0 — morphllm.com](https://www.morphllm.com/terminal-bench-2)
- [Terminal-Bench 2.0 benchmark — benchlm.ai](https://benchlm.ai/benchmarks/terminalBench2)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench — vals.ai](https://www.vals.ai/benchmarks/lcb)
- [AI Coding Benchmarks 2026 — morphllm.com](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [BenchLM.ai coding leaderboard](https://benchlm.ai/coding)
- [Best LLMs for coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [Benchmark gaming explained — MindStudio](https://www.mindstudio.ai/blog/benchmark-gaming-ai-inflated-scores-explained)
- [AI model benchmarks Apr 2026 — LM Council](https://lmcouncil.ai/benchmarks)
