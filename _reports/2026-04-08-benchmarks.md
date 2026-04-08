---
title: "Benchmarks, April 8, 2026"
date: 2026-04-08
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "SWE-bench Verified contested; SWE-bench Pro consolidating as standard; Terminal-Bench 2.0 maturing rapidly"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-08

The competitive evaluation landscape continues to shift. SWE-bench Verified is effectively discredited for frontier comparison following OpenAI's February 23 retirement announcement, yet submissions continue. SWE-bench Pro is solidifying as the community standard. Terminal-Bench 2.0 has matured fast, with scores climbing from ~20–30% at launch to 75–80% range within months. HumanEval is saturated and largely ignored for frontier comparisons.

## Leaderboard

### SWE-bench Verified (⚠ Contested — officially retired by OpenAI Feb 23, 2026)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 17, 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 (self-reported, under audit) | SWE-bench Verified | 80.2% | Feb 12, 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | ~Mar 2026 |
| 7 | Sonar Foundation Agent (self-reported) | SWE-bench Verified | 79.2% | Feb 19, 2026 |
| 8 | Qwen3.6 Plus | SWE-bench Verified | 78.8% | ~Mar 2026 |
| 9 | Gemini 3 Flash | SWE-bench Verified | 78.0% | Feb 17, 2026 |
| 9 | MiMo-V2-Pro (self-reported) | SWE-bench Verified | 78.0% | ~Mar 2026 |
| 10 | GLM-5 (self-reported) | SWE-bench Verified | 77.8% | ~Mar 2026 |

Scaffold: mini-SWE-agent v2.0.0, bash-only, 1 attempt (official submissions). Verification: effectively all self-reported or lab-run; third-party reproduction rare. OpenAI's audit found contamination in 59.4%+ of difficult tasks and verbatim patch recall across all frontier models.

### SWE-bench Pro — SEAL (Scale AI, standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ±3.6 | 2026 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro (SEAL) | 43.6% ±3.6 | 2026 |
| 3 | Gemini 3 Pro | SWE-bench Pro (SEAL) | 43.3% ±3.6 | 2026 |
| 4 | Claude Sonnet 4 | SWE-bench Pro (SEAL) | 42.7% ±3.6 | 2026 |
| 5 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% ±3.5 | 2026 |
| 6 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% ±3.6 | 2026 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro (SEAL) | 39.5% ±3.6 | 2026 |
| 8 | Qwen3-Coder-480B | SWE-bench Pro (SEAL) | 38.7% ±3.6 | 2026 |
| 9 | MiniMax 2.1 | SWE-bench Pro (SEAL) | 36.8% | 2026 |
| 10 | Gemini 3 Flash | SWE-bench Pro (SEAL) | 34.6% | 2026 |

Scaffold: SWE-Agent standardized by SEAL; 250-turn limit; 731 public tasks across 41 repos. Custom-scaffold results (Claude Code, GPT-5.3-Codex CLI) reach 55–57% for top models — a ~10-point harness premium not reflected above.

### SWE-bench Pro — Custom Scaffolds (self-reported, not comparable to SEAL)

| Agent | Base Model | Score | Date |
|-------|-----------|-------|------|
| MiniMax 2.5 (self-reported) | MiniMax 2.5 | 57.6% | Mar 2026 |
| GPT-5.3-Codex CLI (self-reported) | GPT-5.3-Codex | 57.0% | 2026 |
| Claude Code | Opus 4.5 | 55.4% | 2026 |

### Terminal-Bench 2.0 (Harbor framework, Docker-isolated, 89 tasks)

| Rank | Agent + Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Forge Code + Gemini 3.1 Pro | Terminal-Bench 2.0 | 78.4% ±1.8 | Mar 9, 2026 |
| 2 | Droid + GPT-5.3-Codex | Terminal-Bench 2.0 | 77.3% ±2.2 | Mar 9, 2026 |
| 3 | Simple Codex + GPT-5.3-Codex | Terminal-Bench 2.0 | 75.1% ±2.4 | Mar 9, 2026 |
| 4 | Terminus-KIRA + Gemini 3.1 Pro | Terminal-Bench 2.0 | 74.8% ±2.6 | Mar 9, 2026 |
| 5 | Terminus-KIRA + Claude Opus 4.6 | Terminal-Bench 2.0 | 74.7% ±2.6 | Mar 9, 2026 |
| 6 | Mux + GPT-5.3-Codex | Terminal-Bench 2.0 | 74.6% ±2.5 | Mar 9, 2026 |
| 7 | OB-1 (multi-model) | Terminal-Bench 2.0 | 72.4% ±2.3 | Mar 9, 2026 |
| 8 | TongAgents + Claude Opus 4.6 | Terminal-Bench 2.0 | 71.9% ±2.7 | Mar 9, 2026 |
| 9 | Junie CLI (multi-model) | Terminal-Bench 2.0 | 71.0% ±2.9 | Mar 9, 2026 |
| 10 | CodeBrain-1 + GPT-5.3-Codex | Terminal-Bench 2.0 | 70.3% ±2.6 | Mar 9, 2026 |

Scaffold: Harbor framework (cloud-deployed Docker containers, automated verification). Verification: partial — OpenAI and Anthropic results independently verified; most third-party entries lack full verification marks. Notable: GPT-5.3-Codex spans 77.3%→70.3% depending on scaffold (7-point spread from harness alone).

### LiveCodeBench v6 (contamination-controlled, rolling window)

| Rank | Model | Benchmark | Score (pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | Apr 3, 2026 |
| 2 | Gemini 3 Flash Preview | LiveCodeBench v6 | 90.8% | Apr 3, 2026 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | Apr 3, 2026 |
| 4 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | ~Apr 2026 |
| 5 | DeepSeek-V3.2 Thinking | LiveCodeBench v6 | 83.3% | ~Apr 2026 |

Verification: independently maintained by academic researchers; rolling problem window (post-training-cutoff competitive programming from LeetCode, Codeforces, AtCoder) makes contamination structurally difficult.

### HumanEval (164 Python tasks — saturated, for reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Kimi K2 0905 | 94.5% | Sep 2025 |
| 2 | Claude 3.5 Sonnet | 93.7% | Oct 2024 |
| 3 | GPT-5 | 93.4% | Aug 2025 |
| 4 | Kimi K2 Instruct | 93.3% | Jul 2025 |
| 5 | Qwen2.5-Coder 32B | 92.7% | Sep 2024 |

Frontier models cluster at 91–95%. No meaningful signal for differentiating top-tier models. Community has shifted to EvalPlus, HumanEval Pro, and BigCodeBench for any HumanEval-style assessment.

---

## New Benchmarks & Methodology

### Terminal-Bench 2.0 + Harbor (ICLR 2026)
Launched November 7, 2025 alongside the Harbor evaluation framework. 89 manually verified tasks spanning software engineering, ML, security, data science, biology, and gaming — each in an isolated Docker container with automated verification. Now adopted by virtually all frontier labs. Scores have progressed from 20–30% at development → 40–45% at launch → ~75–80% within months, raising saturation concerns.

### SWE-rebench (Nebius AI)
Continuously updated, decontaminated stream of real GitHub tasks. Current window: Jan 2 – Mar 1, 2026 (57 tasks across 46 repos). Each problem is tagged with a creation date to flag any task a model could have seen during training. Tracks Pass@1, Pass@5, and tokens-per-problem. Designed explicitly as an anti-contamination SWE-bench alternative.

### SWE-bench Live
A live/rolling benchmark evaluating issue resolution against real GitHub issues in near-real-time, as distinct from the static snapshot approach of SWE-bench Verified.

### GDPval (OpenAI-led)
Spans 44 knowledge-work occupations across 9 US GDP-contributing industries, including software development. Privately authored tasks graded by trained domain reviewers. OpenAI's response to gaming of public benchmarks.

### FLTEval
Appearing in March 2026 composite leaderboards (BenchLM.ai); focused on fault localization tasks. Limited public methodology details as of publication.

### LiveCodeBench Pro
Harder tier with Olympiad-expert annotations, Elo-calibrated difficulty levels, and per-line failure audits targeting comparison with elite competitive programmers.

---

## Notable Movements

### OpenAI retires SWE-bench Verified (Feb 23, 2026)
The defining event of Q1 2026. OpenAI audited 138 problems (27.6% of the 500-problem set) and found:
- 59.4%+ of unresolved tasks were flawed — 49 had tests too narrowly defined (rejecting correct code), 26 required undocumented behavior
- All frontier models (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce original gold patches from Task ID alone — confirming training contamination
- Models scoring ~80% on Verified drop to ~23% on SWE-bench Pro under standardized conditions
- OpenAI now endorses SWE-bench Pro and is investing in privately authored benchmarks (GDPval)

### MiniMax M2.5 controversy
MiniMax announced 80.2% on SWE-bench Verified (Feb 12, 2026). Independent investigators found evidence of repository leakage via git commands revealing future commits, 7.8% of accepted patches failing developer test suites, and contamination in 27.6%+ of sampled tasks. MiniMax subsequently released M2.7 (March 18, 2026), scoring 56.22% on SWE-bench Pro.

### "The SWE-Bench Illusion" paper
Formal analysis showing frontier models can identify buggy file paths and plausible fixes using only the issue description — without repository context. Performance drops ~53% on repositories outside the SWE-bench set. ~32–33% of "successful" patches involve direct solution leakage; ~31% pass due to inadequate test coverage rather than correct behavior.

### Scaffold premium quantified
The same Opus 4.5 model scores 45.9% (SEAL standardized), 50.2% (Cursor), 53.1% (Auggie), and 55.4% (Claude Code) on SWE-bench Pro — an up-to-10-point spread from context management and tool-call design alone. Leaderboards mixing custom-scaffold and standardized results are comparing agents, not models.

### Qwen2.5-Coder score discrepancy
Qwen's technical blog claimed 73.7% on the Aider benchmark; the official Aider leaderboard shows 16.4% for the same model — a 57-point gap attributed to methodology differences (self-reported vs. independently measured).

### Gemini leads LiveCodeBench; DeepSeek close
Google's Gemini 3 Pro Preview leads LiveCodeBench at 91.7%, with Gemini 3 Flash close behind at 90.8%. DeepSeek V3.2 Speciale (89.6%) is the top non-Google model, notable given it is open-source. Benchmark structure (post-cutoff competitive programming) makes these among the more trustworthy frontier comparisons available.

### MIT Technology Review: "AI benchmarks are broken" (Mar 31, 2026)
Summarizes community consensus: no cross-industry standards for contamination detection or adoption thresholds, misaligned incentives structurally reward gaming, and EU Commission JRC has identified construct validity problems. Cognition (Devin) data shows agents spend 60% of time on search/context retrieval vs. code generation — no current benchmark isolates this.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified/)
- [SWE-bench Verified — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-bench Pro — morphllm.com](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [Terminal-Bench 2.0](https://www.tbench.ai/)
- [Terminal-Bench 2.0 — morphllm.com](https://www.morphllm.com/terminal-bench-2)
- [Terminal-Bench — llm-stats.com](https://llm-stats.com/benchmarks/terminal-bench-2)
- [Terminal-Bench 2.0 ICLR 2026 paper](https://openreview.net/forum?id=a7Qa4CcHak)
- [LiveCodeBench Leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — llm-stats.com](https://llm-stats.com/benchmarks/livecodebench)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [Why we no longer evaluate SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [OpenAI retires SWE-bench Verified — adwaitx.com](https://www.adwaitx.com/openai-swe-bench-verified-retired-ai-benchmarks/)
- [MiniMax M2.5 benchmark fraud debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [Sonar Foundation Agent press release](https://www.sonarsource.com/company/press-releases/sonar-claims-top-spot-on-swe-bench-leaderboard/)
- [AI coding benchmarks 2026 — morphllm.com](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [AI benchmarks are broken — MIT Technology Review](https://www.technologyreview.com/2026/03/31/1134833/ai-benchmarks-are-broken-heres-what-we-need-instead/)
- [SWE-bench February 2026 update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
