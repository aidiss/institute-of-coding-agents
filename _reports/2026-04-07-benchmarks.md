---
title: Benchmarks
date: 2026-04-07
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-07

## Context Note

The benchmark landscape is in significant flux. SWE-bench Verified — the most widely-cited coding benchmark for the past two years — was **officially retired by OpenAI on February 23, 2026** due to confirmed training contamination and systematically flawed test cases. All scores below are flagged for verification method and scaffold where known.

---

## Leaderboard

### SWE-bench Verified (Retired Feb 23, 2026)

> **Status:** Retired by OpenAI. Third-party trackers continue to publish scores but the benchmark is considered unreliable for frontier models. Scores from the official swebench.com scaffold (mini-SWE-agent v2, bash-only) run 3–5 points lower than self-reported figures.

| Rank | Agent / Model | Score | Date Reported | Verified? | Notes |
|------|---------------|-------|---------------|-----------|-------|
| 1 | Claude Opus 4.5 | 80.9% | 2025-11-24 | Self-reported (Anthropic) | 64K thinking budget; bash-only scaffold; 76.8% on official swebench.com run |
| 2 | Claude Opus 4.6 | 80.8% | 2026-02-05 | Self-reported (Anthropic) | Avg over 25 trials; peak 81.42% with prompt modification |
| 3 | Gemini 3.1 Pro | 80.6% | 2026-02-19 | Self-reported (Google) | Single attempt |
| 4 | MiniMax M2.5 | 80.2% | ~2026-01 | Self-reported | 230B params, 1M context, open-weight |
| 5 | GPT-5.2 (Thinking) | 80.0% | 2025-12-11 | Self-reported (OpenAI) | |
| 6 | Claude Sonnet 4.6 | 79.6% | 2026-02-17 | Self-reported (Anthropic) | Agentic coding config; official run: 75.8% |
| 7 | Qwen3.6 Plus | 78.8% | 2026-04-02 | Self-reported (Alibaba) | New entry |
| 8 | Gemini 3 Flash | 78.0% | 2025-12-17 | Self-reported (Google) | |
| 8 | MiMo-V2-Pro | 78.0% | ~2026-01 | Self-reported (Xiaomi) | 1.0T params, 1M context, open-source |
| 10 | GLM-5 | 77.8% | ~2026-01 | Self-reported (Zhipu AI) | 744B params, 200K context, open-source |

---

### SWE-bench Pro — SEAL Standardized Leaderboard (Scale AI)

> **Methodology:** All models run through identical infrastructure with 250-turn limit. Considered the most apples-to-apples comparison for frontier models. Scores are ~10–15 points lower than custom-scaffold self-reported figures for the same models.

| Rank | Model | Score | Date Added | Organization |
|------|-------|-------|------------|--------------|
| 1 | Claude Opus 4.5 | 45.89% | 2025-12-11 | Anthropic |
| 2 | Claude Sonnet 4.5 | 43.60% | 2025-09-19 | Anthropic |
| 3 | Gemini 3 Pro Preview | 43.30% | 2025-11-26 | Google |
| 4 | Claude Sonnet 4 | 42.70% | 2025-09-19 | Anthropic |
| 5 | GPT-5 (High) | 41.78% | 2025-11-26 | OpenAI |
| 6 | GPT-5.2-Codex | 41.04% | 2026-01-27 | OpenAI |
| 7 | Claude Haiku 4.5 | 39.45% | 2025-09-19 | Anthropic |
| 8 | Qwen3-Coder-480B | 38.70% | 2026-01-27 | Alibaba |
| 9 | MiniMax 2.1 | 36.81% | 2026-01-12 | MiniMax |
| 10 | Gemini 3 Flash | 34.63% | 2026-01-12 | Google |

**Self-reported custom-scaffold comparisons (same benchmark, different methodology):**
- GPT-5.3-Codex (OpenAI, custom): 56.8% — vs. 41.78% on SEAL (+15 pts from scaffold)
- Claude Opus 4.5 + WarpGrep v2 (custom): 57.5%

---

### Terminal-Bench 2.0

> **Methodology:** 89 tasks across security, biology, ML, gaming, sysadmin — Docker containers, binary scoring. Harbor harness connects models to live terminals. Published at ICLR 2026. Wide confidence intervals due to small task count. Agents have internet access during evaluation (structural concern — see below).

| Rank | Agent | Model | Score | Date | Organization |
|------|-------|-------|-------|------|--------------|
| 1 | ForgeCode | GPT-5.4 | 81.8% ±2.0 | 2026-03-12 | ForgeCode / OpenAI |
| 1 | ForgeCode | Claude Opus 4.6 | 81.8% ±1.7 | 2026-03-12 | ForgeCode / Anthropic |
| 3 | TongAgents | Gemini 3.1 Pro | 80.2% ±2.6 | 2026-03-13 | BIGAI / Google |
| 4 | SageAgent | GPT-5.3-Codex | 78.4% ±2.2 | 2026-03-13 | OpenSage / OpenAI |
| 4 | ForgeCode | Gemini 3.1 Pro | 78.4% ±1.8 | 2026-03-02 | ForgeCode / Google |
| 6 | Droid | GPT-5.3-Codex | 77.3% ±2.2 | 2026-02-24 | Factory / OpenAI |
| 7 | Capy | Claude Opus 4.6 | 75.3% ±2.4 | 2026-03-12 | Capy / Anthropic |
| 8 | Simple Codex | GPT-5.3-Codex | 75.1% ±2.4 | 2026-02-06 | OpenAI |
| 9 | Terminus-KIRA | Gemini 3.1 Pro | 74.8% ±2.6 | 2026-02-23 | KRAFTON AI |
| 10 | Terminus-KIRA | Claude Opus 4.6 | 74.7% ±2.6 | 2026-02-22 | KRAFTON AI |

*Scaffold gap example: same GPT-5.3-Codex scores 77.3% (Droid) vs. 70.3% (CodeBrain-1) — 7 points from harness alone.*

---

### LiveCodeBench

> **Methodology:** Continuously harvests problems from LeetCode, AtCoder, CodeForces posted after model training cutoffs. Tests code generation, self-repair, execution, and test output prediction. Considered one of the most contamination-resistant coding benchmarks. Source: livecodebench.github.io, retrieved 2026-04-07 (68 models evaluated; benchmark average 51.4%).

| Rank | Model | Score |
|------|-------|-------|
| 1 | DeepSeek-V3.2 (Thinking) | 83.3% |
| 2 | MiniMax M2 | 83.0% |
| 3 | LongCat-Flash-Thinking-2601 | 82.8% |
| 4 | Nemotron 3 Super (120B A12B) | 81.2% |
| 5 | Grok-3 Mini | 80.4% |
| 6 | Grok-4 Fast | 80.0% |
| 7 | Grok-3 | 79.4% |
| 7 | Grok-4 Heavy | 79.4% |
| 7 | LongCat-Flash-Thinking | 79.4% |
| 10 | Grok-4 | 79.0% |

*Note: Artificial Analysis tracker shows different leaders (Gemini 3 Pro Preview at 91.7%) — discrepancy likely reflects different evaluation windows or model variants.*

---

### HumanEval

> **Status: Effectively saturated and contamination-compromised.** Top frontier models cluster at 93–98%. Training contamination is well-documented and acknowledged; scores should be treated as lower bounds on memorization, not upper bounds on capability. Retained as legacy baseline only.

| Rank | Model | Score | Date Announced |
|------|-------|-------|----------------|
| 1 | Kimi K2 0905 | 94.5% | 2025-09-05 |
| 2 | Claude 3.5 Sonnet | 93.7% | 2024-10-22 |
| 3 | GPT-5 | 93.4% | 2025-08-07 |
| 4 | Kimi K2 Instruct | 93.3% | 2025-07-11 |
| 5 | Qwen2.5-Coder 32B Instruct | 92.7% | 2024-09-19 |

*(Other trackers cite Codex 5.3 at 98.1% and Claude Sonnet 4.5 at 97.6%, likely on HumanEval+ or different prompt configs.)*

---

## New Benchmarks & Methodology

| Benchmark | Released | Description | Key Feature |
|-----------|----------|-------------|-------------|
| **SWE-bench Pro** | Mid-2025 | 1,865 tasks across 41 repos, 123 languages | Contamination-resistant; multi-file/multi-language |
| **SWE-bench-Live** | 2025 (NeurIPS 2025 D&B) | 1,565 tasks from 164 repos, updated monthly | Automated monthly refresh; contamination-free by design |
| **Terminal-Bench 2.0** | Jan–Mar 2026 (ICLR 2026) | 89 tasks in Docker: security, biology, gaming, sysadmin, ML | Real terminal environment; multi-domain |
| **SWE-rebench** | Active 2026 | 57 problems from 46 repos, rolling time windows | Tracks cost/problem and token efficiency alongside accuracy |
| **SWE-MERA** | Nov 2025 (EMNLP 2025 Demos) | Dynamic benchmark on GitHub issues | Rigorous quality validation; dynamic generation |
| **Aider Polyglot** | Ongoing (refined 2025) | 225 Exercism problems in C++, Go, Java, JS, Python, Rust | Two-attempt format; GPT-5 leads at 88.0% |
| **LiveCodeBench v6** | Active 2026 | Updated with post-cutoff competition problems | Seed 2.0 Pro (ByteDance) at 87.8% |

---

## Notable Movements

### SWE-bench Verified Retirement (2026-02-23)
The defining event of this cycle. OpenAI published a formal analysis and retired SWE-bench Verified, citing:
- **Training data leakage confirmed** across all major frontier models. In one documented case, GPT-5.2's chain-of-thought revealed recall of a specific parameter from training data rather than reasoning about the repository.
- **Flawed test design**: ~59.4% of the hardest unsolved tasks had tests that rejected correct solutions by enforcing undocumented implementation details.
- **Score vs. reality gap**: Models scoring 80% on Verified drop to roughly 23–46% on SWE-bench Pro — a 35+ point gap from memorization, task difficulty increase, and multi-file complexity.

OpenAI explicitly endorsed SWE-bench Pro as the successor standard. Commentary: [Latent Space](https://www.latent.space/p/swe-bench-dead), [Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/).

### Scaffold Inflation Documented at Scale
A consistent finding across benchmarks: 4–12 points of apparent model performance is attributable to agent scaffolding, not model quality.
- Same Claude Opus 4.5 model: 50.2%–55.4% on SWE-bench Pro depending on agent system — 5.2 points from context retrieval and tool orchestration alone.
- Same GPT-5.3-Codex: 77.3% (Droid) vs. 70.3% (CodeBrain-1) on Terminal-Bench 2.0.
- Qwen2.5-Coder self-reported 73.7% on Aider; independently verified Aider leaderboard: 16.4% — a 57-point discrepancy attributed to scaffold and prompt engineering differences.

### LessLeak-Bench Findings
Research published in 2025 analyzing 83 SE benchmarks found:
- ~32–33% of "successful" patches on some SWE-bench configurations involve direct solution leakage from training data.
- ~31% of passes are due to inadequate test coverage rather than correct implementations.
- Performance drops ~53% (relative) when moving to repositories outside the SWE-bench set.

### Internet Access on Terminal-Bench (Unresolved)
Terminal-Bench 2.0 agents have live internet access during evaluation. This creates the structural possibility of agents finding solutions online at evaluation time — not yet addressed in the methodology.

### Real-World vs. Benchmark Gap
A METR study (July 2025) found experienced open-source developers with AI tool access showed **no statistically significant productivity improvement** on real software engineering tasks, despite frontier models scoring 70–80%+ on SWE-bench Verified at the time. MIT Technology Review (2026-03-31): "AI benchmarks are broken. Here's what we need instead."

---

## Benchmark Reliability Summary

| Benchmark | Contamination Risk | Scaffold Sensitivity | Frontier Ceiling | Status |
|-----------|-------------------|---------------------|-----------------|--------|
| SWE-bench Verified | Very High (confirmed) | High | ~81% (self-reported) | **Retired Feb 2026** |
| SWE-bench Pro (SEAL) | Low | Low (standardized) | ~46% | Active — recommended |
| SWE-bench Pro (custom) | Low | High | ~57% (self-reported) | Active — use with caution |
| Terminal-Bench 2.0 | Low | Medium | ~82% | Active (ICLR 2026) |
| LiveCodeBench | Low (post-cutoff) | Mixed | ~83% | Active — good signal |
| HumanEval | Very High | High | ~94–98% | Saturated — legacy only |
| SWE-bench-Live | Very Low (monthly refresh) | Low | TBD | Active (NeurIPS 2025) |
| SWE-rebench | Low | Low | ~65% | Active — adds cost/token data |
