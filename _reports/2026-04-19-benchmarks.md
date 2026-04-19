---
title: "Benchmarks, April 19, 2026"
date: 2026-04-19
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Active — Claude Mythos Preview claims SWE-bench Verified record; SWE-bench Pro tightening as true frontier signal; MirrorCode and GDPVal introduced"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-19

A new model (Claude Mythos Preview) claimed the SWE-bench Verified top spot this month with a self-reported 93.9%, continuing the upward march on a benchmark that OpenAI has already retired as contaminated. SWE-bench Pro remains the cleaner signal, with GPT-5.4 leading at 59.1%. Two new benchmarks — MirrorCode (METR/OpenAI) and GDPVal (OpenAI) — attempt to push evaluation toward real-world economic value.

## Leaderboard

### SWE-bench Verified (self-reported — benchmark widely considered contaminated)

> Note: OpenAI retired this benchmark in February 2026 citing contamination and 59.4% flawed tasks. Scores below reflect self-reported claims and should be read with that caveat.

| Rank | Agent / Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% | Apr 7, 2026 (self-reported) |
| 2 | GPT-5.3 Codex | SWE-bench Verified | 85.0% | Apr 2026 (self-reported) |
| 3 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 4 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 5 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 6 | MiniMax M2.5 (229B) | SWE-bench Verified | 80.2% | Feb 2026 |
| 7 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 8 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| — | Sonar Foundation Agent (Opus 4.5) | SWE-bench Verified | 79.2% | Feb 2026 (self-reported) |

The gap between ranks 1–2 (93.9% vs. 85.0%) is unusually large and warrants scrutiny. No independent verification of Claude Mythos Preview's SWE-bench Verified result has been published. Rows 3–8 are from the February 2026 official leaderboard refresh.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | Apr 2026 (self-reported) |
| 2 | GPT-5.4 (xHigh) | SWE-bench Pro (SEAL) | 59.1% ± 3.6% | Apr 2026 (self-reported) |
| 3 | Muse Spark | SWE-bench Pro (SEAL) | 55.0% ± 3.6% | Apr 2026 (independently verified) |
| 4 | Claude Opus 4.6 (thinking) | SWE-bench Pro (SEAL) | 51.9% ± 3.6% | Apr 2026 (self-reported) |
| 5 | Gemini 3.1 Pro (thinking) | SWE-bench Pro (SEAL) | 46.1% ± 3.6% | Apr 2026 (self-reported) |
| 6 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ± 3.6% | 2026 |
| 7 | Claude Sonnet 4.5 | SWE-bench Pro (SEAL) | 43.6% ± 3.6% | Apr 2026 (self-reported) |
| 8 | Gemini 3 Pro Preview | SWE-bench Pro (SEAL) | 43.3% ± 3.6% | Apr 2026 (self-reported) |
| 9 | Claude Sonnet 4.0 | SWE-bench Pro (SEAL) | 42.7% ± 3.6% | Apr 2026 (self-reported) |
| 10 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% ± 3.5% | 2026 |

Claude Mythos Preview's 77.8% stands far above the pack; no standardized scaffold confirmation from SEAL yet. Muse Spark is the only entry in the top 5 with independent verification. Score uncertainty margins (±3.5–3.6%) are meaningful at these levels — differences under ~6 points may not be statistically significant.

### Terminal-Bench 2.0

| Rank | Model / Agent | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Mythos Preview (extended) | Terminal-Bench 2.1 | 92.1% | Apr 16, 2026 (self-reported) |
| 2 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% | Apr 7, 2026 (self-reported) |
| 3 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% | Apr 2026 (self-reported) |
| 4 | Gemini 3.1 Pro Preview | Terminal-Bench 2.0 | 67.4% | Mar/Apr 2026 (self-reported) |
| 5 | Claude Opus 4.7 | Terminal-Bench 2.0 | 68.5% | Apr 2026 (self-reported) |
| 6 | GPT-5.4 | Terminal-Bench 2.0 | 75.1% | Apr 2026 (self-reported) |
| 7 | Muse Spark | Terminal-Bench 2.0 | 59.6% | Apr 2026 (self-reported) |
| 8 | Claude Sonnet 4.6 | Terminal-Bench 2.0 | 59.6% | Apr 2026 (self-reported) |

The 92.1% "extended" result for Claude Mythos Preview used extended timeouts on Terminal-Bench 2.1 — a different benchmark version. The 82.0% score on the standard 2.0 version is the more comparable figure. Terminal-Bench 2.0 has 89 tasks in sandboxed terminal environments (model training, sysadmin, complex scripting).

### LiveCodeBench (v6, contamination-controlled)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | Apr 14, 2026 |
| 2 | Gemini 3 Flash Preview | LiveCodeBench v6 | 90.8% | Apr 14, 2026 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | Apr 14, 2026 |
| — | Kimi K2.5 | LiveCodeBench v6 | ~85.0% | 2026 |
| — | GLM-4.7 | LiveCodeBench v6 | ~84.9% | 2026 |

LiveCodeBench continuously collects fresh problems from LeetCode, AtCoder, and Codeforces, making contamination harder. 218 models evaluated in total. Gemini's dual dominance (Flash slightly edges Pro on some slices) is notable.

### HumanEval (saturated — reference only)

| Model | Score | Date | Note |
|-------|-------|------|------|
| Kimi K2.5 (Reasoning) | 99.0% | Mar 2026 | Self-reported |
| Kimi K2.5 | 99.0% | Mar 2026 | Self-reported |
| Claude Sonnet 4.5 | 97.6% | Apr 2026 | Self-reported |
| DeepSeek R1 | 97.4% | 2026 | Self-reported |
| Grok 4 | 97.0% | 2026 | Self-reported |

HumanEval (164 hand-crafted problems) is effectively saturated. Most frontier models score 90%+. No meaningful signal remains for comparing top-tier models.

---

## New Benchmarks & Methodology

### MirrorCode (METR + OpenAI, April 10, 2026)

Long-horizon software engineering benchmark. Agents are given precise specifications and must reimplement entire production codebases from scratch. Cover 20+ programs spanning Unix utilities, data serialization, bioinformatics, interpreters, static analysis, cryptography, and compression. Lead result: Claude Opus 4.6 autonomously reimplemented a 16,000-line bioinformatics toolkit — work estimated at weeks for human engineers.

**Caveats noted by authors:** Tasks use precise formal specifications that differ significantly from real-world development (ambiguous requirements, iterative stakeholder feedback). Benchmark may already be approaching saturation for frontier models. Not yet a public leaderboard; preliminary results only.

### GDPVal (OpenAI, 2026)

Evaluates performance on economically valuable, real-world tasks across 44 occupations and 9 GDP-contributing sectors (finance, healthcare, legal, etc.). 220 tasks; outputs include documents, slides, spreadsheets, and diagrams. Graded by professionals with ~14 years average experience in blind comparisons against human deliverables. Key finding: frontier models approaching or matching human expert quality at 100x speed and a fraction of the cost. Methodology publicly available; no public leaderboard yet.

### SWE-bench Pro (Scale AI SEAL — ongoing)

Now established as the primary frontier differentiator. 1,865 tasks across 41 actively maintained repos in Python, Go, TypeScript, and JavaScript. Consecutive real commits with paired tests. GPL-licensed repos used as a legal deterrent against training inclusion. SEAL leaderboard applies standardized scaffolding to eliminate harness-driven inflation — the main source of comparable, independently-run scores.

---

## Notable Movements

### Claude Mythos Preview sweeps leaderboards (April 7–16, 2026)

Anthropic's Claude Mythos Preview claimed top spots on SWE-bench Verified (93.9%), SWE-bench Pro (77.8%), and Terminal-Bench (82.0% / 92.1% extended) in rapid succession. All results are self-reported. The 93.9% Verified score is striking given OpenAI's own retirement of the benchmark and documented contamination — a high score on a contaminated benchmark is not independent evidence of capability. The SWE-bench Pro result (77.8%) is more credible but awaits SEAL standardized-scaffold confirmation. Watch for independent reproduction.

### SWE-bench Verified vs. Pro performance gap narrows slightly

The gap between Verified and Pro scores has been ~20–40 points for most models. If Claude Mythos Preview's 77.8% Pro score holds up, the gap (93.9% vs. 77.8%) is smaller than for prior models (~80% vs. ~45%), suggesting either the model is genuinely stronger on harder tasks, or the Pro score is also inflated by scaffolding choices.

### Meta Llama 4 benchmark manipulation confirmed (retrospective)

Yann LeCun (departing Meta Chief AI Scientist) confirmed: "Results were fudged a little bit." Meta submitted a specialized non-public variant to LMArena; when the production model shipped, it dropped from #1 (ELO 1417) to #32. LMArena has since updated transparency policies. This incident is now the canonical case cited in contamination/gaming discussions.

### LessLeak-Bench: data leakage across 83 SE benchmarks

Published analysis found significant leakage rates across widely-used benchmarks: QuixBugs 100%, BigCloneBench 55.7%, APPS 10.8%, SWE-bench Verified 10.6%. StarCoder-7B achieved Pass@1 scores 4.9x higher on leaked vs. non-leaked APPS data. No industry standard for contamination detection exists; no enforcement mechanism.

### Scaffolding remains the hidden variable

On Terminal-Bench 2.0, the same model achieves meaningfully different scores depending on the agent wrapper. Muse Spark and Claude Sonnet 4.6 are tied at 59.6% despite being different models — likely scaffolding parity. SEAL's standardized scaffold on SWE-bench Pro is the field's best current answer, but it only covers that one benchmark.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Terminal-Bench 2.0 leaderboard](https://www.tbench.ai/leaderboard)
- [Terminal-Bench (llm-stats)](https://llm-stats.com/benchmarks/terminal-bench-2)
- [LiveCodeBench leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval leaderboard (llm-stats)](https://llm-stats.com/benchmarks/humaneval)
- [MirrorCode preliminary results — METR](https://metr.org/blog/2026-04-10-mirrorcode-preliminary-results/)
- [GDPVal — OpenAI](https://openai.com/index/gdpval/)
- [OpenAI retires SWE-bench Verified — Decrypt](https://decrypt.co/359012/openai-benchmark-measure-ai-coding-supremacy-contaminated)
- [OpenAI SWE-bench retirement statement](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Claude Mythos Preview benchmark claims](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026)
- [Meta Llama 4 benchmark manipulation — Slashdot](https://tech.slashdot.org/story/26/01/02/1449227/results-were-fudged-departing-meta-ai-chief-confirms-llama-4-benchmark-manipulation)
- [LessLeak-Bench: data leakage in SE benchmarks](https://arxiv.org/html/2502.06215v1)
- [AI Benchmarks Are a Game Now — UC Strategies](https://ucstrategies.com/news/ai-benchmarks-are-a-game-now-and-the-industry-is-cheating-to-win/)
