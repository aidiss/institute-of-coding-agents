---
date: 2026-03-07
category: benchmarks
prompt_hash: 6f5df01d4f13565eb7a5479a8277956ca8c08782
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-03-07

Who's winning? The competitive evaluation landscape is in flux: SWE-bench Verified is effectively retired by OpenAI due to contamination, SWE-bench Pro is emerging as the new standard, and open-source models are closing the gap across multiple leaderboards.

## Leaderboard

### SWE-bench Verified (Feb 2026 official refresh — not self-reported)

| Rank | Agent / Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 (229B) | SWE-bench Verified | 80.2% | Feb 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 7 | GLM-5 | SWE-bench Verified | ~79% | Feb 2026 |
| 8 | Kimi K2.5 | SWE-bench Verified | ~79% | Feb 2026 |
| 9 | DeepSeek V3.2 | SWE-bench Verified | ~79% | Feb 2026 |
| — | Sonar Foundation Agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% | Feb 19, 2026 (self-reported) |

Notes: Three Chinese open-source models (GLM-5, Kimi K2.5, DeepSeek V3.2) break the top 10. Sonar's score is self-reported. The official refresh was run by the SWE-bench team, not by labs.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% | 2026 |
| 2 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% | 2026 |
| 3 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% | 2026 |
| — | GPT-5.3-Codex | SWE-bench Pro (self-reported) | 57% | 2026 (self-reported) |
| — | Opus 4.6 + WarpGrep v2 | SWE-bench Pro (Morph internal) | 57.5% | 2026 (self-reported) |

Notes: Large gap between self-reported scores and SEAL standardized scaffold scores — scaffolding choice accounts for 10–15+ percentage points. Private-subset results are harder: Claude Opus 4.1 drops from 22.7% to 17.8%, GPT-5 drops from 23.1% to 14.9%.

### SWE-rebench (Nebius AI — contamination-controlled, rolling)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench | #1 (exact % not published) | Jan 2026 |
| — | Kimi K2 Thinking | SWE-rebench | 43.8% (Pass@1) | Jan 2026 |
| — | Kimi K2.5 | SWE-rebench | 37.9% (Pass@1) | Jan 2026 |
| — | Gemini 3 Flash Preview | SWE-rebench | 57.6% (Pass@1) | Jan 2026 |
| — | Gemini 3 Pro Preview | SWE-rebench | 56.5% (Pass@1) | Jan 2026 |
| — | GLM-4.7 | SWE-rebench | best open-source overall | Jan 2026 |
| — | Grok Code Fast 1 / gpt-oss-120b | SWE-rebench | ~29–30% | Jan 2026 |

Notes: Gemini 3 Flash slightly beats Gemini 3 Pro on Pass@1 despite being smaller. Kimi Thinking vs. base split is large (+6 points). Budget models at $0.03–0.04/problem reach ~30%.

### Terminal-Bench 2.0

| Rank | Model / Agent | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Gemini 3.1 Pro | Terminal-Bench 2.0 | 78.4% | Mar 2026 |
| 2 | Codex CLI (GPT-5) | Terminal-Bench 2.0 | 77.3% | Mar 2026 |
| 3 | Claude Opus 4.6 | Terminal-Bench 2.0 | 74.7% | Mar 2026 |
| 4 | Droid + Opus 4.6 | Terminal-Bench 2.0 | 69.9% | Mar 2026 |
| 5 | Claude Code | Terminal-Bench 2.0 | 58.0% | Mar 2026 |
| — | GPT-5.4 (xhigh) | Terminal-Bench Hard | 57.6% | Mar 2026 |
| — | Gemini 3.1 Pro Preview | Terminal-Bench Hard | 53.8% | Mar 2026 |
| — | GPT-5.3 Codex (xhigh) | Terminal-Bench Hard | 53.0% | Mar 2026 |

Notes: Claude Opus 4.6 jumped from 65.4% to 74.7% since January. Scaffold choice matters significantly — Droid vs. Claude Code using the same model differs by ~12 points.

### LiveCodeBench (v6, contamination-controlled)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview (high) | LiveCodeBench v6 | 91.7% | 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | LiveCodeBench v6 | 90.8% | 2026 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026 |
| — | Kimi K2.5 | LiveCodeBench v6 | 85.0% | 2026 |
| — | GLM-4.7 | LiveCodeBench v6 | 84.9% | 2026 |
| — | Qwen3.5-plus | LiveCodeBench v6 | 83.6% | Feb 2026 |

### HumanEval (largely saturated — for reference only)

| Model | HumanEval | Note |
|-------|-----------|------|
| Kimi K2.5 | 99.0% | Near-perfect; benchmark considered saturated |
| GLM-4.7 | 94.2% | Best open-source listed |
| GPT-5.3 Codex | 93% | Most frontier models 90%+ |

HumanEval is effectively saturated. Industry has shifted to SWE-bench and LiveCodeBench for frontier model comparison.

---

## New Benchmarks & Methodology

### SWE-rebench (Nebius AI)
A rolling, contamination-controlled replacement for SWE-bench Verified. Continuously mines fresh GitHub tasks and tags each problem with a creation date to flag any task a model could have seen during training. Tracks Pass@1, Pass@5, and tokens-per-problem. Available at [swe-rebench.com](https://swe-rebench.com).

### SWE-bench Pro (Scale AI)
1,865 tasks across 41 repositories in Python, Go, TypeScript, and JavaScript. Sourced from consecutive real commits with paired tests. Public subset uses GPL-licensed repos as a legal deterrent against training inclusion. Average task requires 107 lines of changes across 4.1 files. Includes a private subset that reveals generalization drops of 5–8 points for top models. The SEAL leaderboard runs all models with standardized scaffolding to reduce harness-driven score inflation.

### LiveCodeBench Pro
An extension of LiveCodeBench adding Olympiad-expert annotations, Elo-calibrated difficulty levels, and line-by-line model failure audits. Targets comparison with elite human competitive programmers.

### Terminal-Bench 2.0
Evaluates real terminal/DevOps tasks end-to-end — compiling, training, server setup. Hosted at [tbench.ai](https://www.tbench.ai/leaderboard). Results are reported per model-agent pair (e.g., Anthropic Claude Code, OpenAI Codex CLI, Terminus, Goose) because scaffold choice significantly affects scores.

---

## Notable Movements

### OpenAI retires SWE-bench Verified (Feb 23, 2026)
OpenAI's Frontier Evals team announced they are no longer evaluating against SWE-bench Verified, calling it "saturated and highly contaminated." GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash Preview were found capable of reproducing original fixes from memory — confirming training data overlap. An internal audit found 59.4% of tasks had flawed or problematic test designs. OpenAI now endorses SWE-bench Pro (top scores ~23% vs. 70%+ on Verified). Score increments between frontier models had dropped to 0.1%, signaling the benchmark no longer provides meaningful signal. Source: [Decrypt](https://decrypt.co/359012/openai-benchmark-measure-ai-coding-supremacy-contaminated), [adwaitx.com](https://www.adwaitx.com/openai-swe-bench-verified-retired-ai-benchmarks/).

### Score inflation on SWE-bench Verified
Top scores on SWE-bench Verified jumped from ~65% in early 2025 to 80.9% in March 2026. Agent scaffolds add 10–20 points over raw model scores. The Sonar Foundation Agent (powered by Claude Opus 4.5) self-reported 79.2% with an average of $1.26/issue and 10.5 min/issue.

### METR "doubling time" graph controversy
METR's widely-cited graph measuring how long LLMs can sustain autonomous coding tasks (used to estimate a "doubling time" for AI capability) received a formal critique questioning task realism, contamination in some tasks, and the methodology for estimating human completion time. One of METR's lead authors published a response acknowledging some points while defending the doubling time estimate overall. The graph is still in circulation but should be read with caveats.

### Open-source closing the gap
GLM-5, Kimi K2 Thinking, DeepSeek V3.2, and Qwen3-Coder-Next now rank alongside closed frontier models on multiple benchmarks. MiniMax M2.5 (229B) broke into the SWE-bench Verified top 5. On SWE-rebench, Gemini 3 Flash slightly outperforms Gemini 3 Pro despite being smaller and cheaper.

### Scaffolding matters more than model choice
On SWE-bench Pro (SEAL), Auggie, Cursor, and Claude Code all ran Opus 4.5 — yet Auggie solved 15 more problems than Cursor and 17 more than Claude Code out of 731 tasks. Score differences are increasingly scaffold differences, not model differences.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-Bench Pro — SEAL by Scale AI](https://scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [Terminal-Bench 2.0 Leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [Terminal-Bench — Epoch AI](https://epoch.ai/benchmarks/terminal-bench)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench GitHub](https://github.com/LiveCodeBench/LiveCodeBench)
- [Sonar Foundation Agent press release](https://www.sonarsource.com/company/press-releases/sonar-claims-top-spot-on-swe-bench-leaderboard/)
- [OpenAI drops SWE-bench Verified — Decrypt](https://decrypt.co/359012/openai-benchmark-measure-ai-coding-supremacy-contaminated)
- [OpenAI retires SWE-bench Verified — adwaitx.com](https://www.adwaitx.com/openai-swe-bench-verified-retired-ai-benchmarks/)
- [SWE-Bench Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [LLM Benchmarks 2026 — LXT](https://www.lxt.ai/blog/llm-benchmarks/)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
