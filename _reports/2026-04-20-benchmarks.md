---
title: "Benchmarks, April 20, 2026"
date: 2026-04-20
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Active — Claude Opus 4.7 settles into SWE-bench Pro at 64.3%; ARC-AGI-3 harness dispute surfaces; SWE-rebench claims to expose Chinese model score inflation"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-20

Claude Opus 4.7 (released April 16) has now been evaluated on SWE-bench Pro via SEAL's standardized scaffold, landing at 64.3% — above GPT-5.4's 59.1% and meaningfully below Claude Mythos Preview's 77.8%, which remains unconfirmed by SEAL. The day's other notable items: an ARC-AGI-3 harness dispute in which a custom scaffold pushed Claude Opus 4.6 from 0.25% to 97.1% on a single variant, and the launch of SWE-rebench, a decontaminated alternative benchmark that claims to expose score inflation in Chinese-origin model submissions.

## Leaderboard

### SWE-bench Verified (self-reported — benchmark widely considered contaminated)

> Note: OpenAI retired this benchmark in February 2026 citing contamination and 59.4% flawed tasks. Scores below are self-reported and should be read with that caveat.

| Rank | Agent / Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% | Apr 7, 2026 (self-reported) |
| 2 | Claude Opus 4.7 | SWE-bench Verified | 87.6% | Apr 16, 2026 (self-reported) |
| 3 | GPT-5.3 Codex | SWE-bench Verified | 85.0% | Apr 2026 (self-reported) |
| 4 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 5 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 6 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 7 | MiniMax M2.5 (229B) | SWE-bench Verified | 80.2% | Feb 2026 |
| 8 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 9 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 10 | Qwen3.6 Plus | SWE-bench Verified | 78.8% | Apr 2026 (self-reported) |

Claude Opus 4.7's 87.6% is self-reported and has not been independently verified. It places below Claude Mythos Preview (93.9%) but the comparison is awkward: Mythos Preview is an unnamed preview, Opus 4.7 is a shipping model. The two may share lineage. No independent reproduction of either top result has been published.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | Apr 2026 (self-reported; SEAL confirmation pending) |
| 2 | Claude Opus 4.7 | SWE-bench Pro (SEAL) | 64.3% | Apr 20, 2026 |
| 3 | GPT-5.4 (xHigh) | SWE-bench Pro (SEAL) | 59.1% ± 3.6% | Apr 2026 (self-reported) |
| 4 | Muse Spark | SWE-bench Pro (SEAL) | 55.0% ± 3.6% | Apr 2026 (independently verified) |
| 5 | Claude Opus 4.6 (thinking) | SWE-bench Pro (SEAL) | 51.9% ± 3.6% | Apr 2026 |
| 6 | Gemini 3.1 Pro (thinking) | SWE-bench Pro (SEAL) | 46.1% ± 3.6% | Apr 2026 |
| 7 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% ± 3.6% | 2026 |
| 8 | Claude Sonnet 4.5 | SWE-bench Pro (SEAL) | 43.6% ± 3.6% | Apr 2026 |
| 9 | Gemini 3 Pro Preview | SWE-bench Pro (SEAL) | 43.3% ± 3.6% | Apr 2026 |
| 10 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% ± 3.5% | 2026 |

Claude Opus 4.7 at 64.3% is today's key new data point: it overtakes GPT-5.4 (59.1%) under the standardized SEAL scaffold, making it the top confirmed result. Claude Mythos Preview's 77.8% is ~14 points higher but still lacks SEAL confirmation. Uncertainty margins of ±3.5–3.6% mean differences smaller than ~7 points are not statistically significant.

### Terminal-Bench 2.0

| Rank | Model / Agent | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Mythos Preview (extended) | Terminal-Bench 2.1 | 92.1% | Apr 16, 2026 (self-reported; extended timeouts) |
| 2 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% | Apr 7, 2026 (self-reported) |
| 3 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% | Apr 2026 (self-reported) |
| 4 | GPT-5.4 | Terminal-Bench 2.0 | 75.1% | Apr 2026 (self-reported) |
| 5 | Claude Opus 4.7 | Terminal-Bench 2.0 | 68.5% | Apr 2026 (self-reported) |
| 6 | Gemini 3.1 Pro Preview | Terminal-Bench 2.0 | 67.4% | Mar/Apr 2026 (self-reported) |
| 7 | Claude Opus 4.6 | Terminal-Bench 2.0 | 65.4% | Apr 2026 (self-reported) |
| 8 | Muse Spark | Terminal-Bench 2.0 | 59.6% | Apr 2026 (self-reported) |
| 9 | Claude Sonnet 4.6 | Terminal-Bench 2.0 | 59.6% | Apr 2026 (self-reported) |

The 92.1% "extended" result used Terminal-Bench 2.1 (different version, longer timeouts) — not comparable to the 2.0 column. GPT-5.4 leads Claude Opus 4.7 on Terminal-Bench (75.1% vs. 68.5%) despite Opus 4.7 leading on SWE-bench Pro — the two benchmarks appear to be measuring distinct capability profiles.

### LiveCodeBench (v6, contamination-controlled)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | Apr 14, 2026 |
| 2 | Gemini 3 Flash Preview | LiveCodeBench v6 | 90.8% | Apr 14, 2026 |
| 3 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | Apr 14, 2026 |
| 4 | GLM-4.7 | LiveCodeBench v6 | ~84.9% | 2026 |
| 5 | Qwen3.5-plus | LiveCodeBench v6 | ~83.6% | Feb 2026 |
| — | Claude Opus 4.6 | LiveCodeBench v6 | ~76.0% | 2026 |

LiveCodeBench is the most contamination-resistant mainstream signal (fresh competitive programming problems from LeetCode/AtCoder/Codeforces). Gemini models holding the top two spots here while trailing on SWE-bench Pro highlights the benchmark-profile divergence across labs. 218 models on the leaderboard total.

### HumanEval (saturated — reference only)

| Model | Score | Date | Note |
|-------|-------|------|------|
| Kimi K2.5 (Reasoning) | 99.0% | Mar 2026 | Self-reported |
| Claude Sonnet 4.5 | 97.6% | Apr 2026 | Self-reported |
| DeepSeek R1 | 97.4% | 2026 | Self-reported |
| Grok 4 | 97.0% | 2026 | Self-reported |

HumanEval (164 hand-crafted problems) is effectively saturated. Frontier models cluster at 95%+; no meaningful differentiation remains. Included for historical continuity only.

---

## New Benchmarks & Methodology

### SWE-rebench (April 2026)

A decontaminated fork of SWE-bench designed to expose score inflation. Key claim: replaces original tasks with semantically equivalent but newly-constructed variants to strip training-set memorization. Initial analysis targets Chinese-origin model submissions, finding significant score drops relative to original SWE-bench Verified numbers. The benchmark itself has not yet undergone independent methodological review — "decontaminated" is a claim, not a guarantee. Watch for third-party reproduction.

### ARC-AGI-3 Harness Dispute (April 2026)

A Duke-affiliated team's custom scaffold pushed Claude Opus 4.6 from 0.25% to 97.1% on a single ARC-AGI-3 environment variant (TR87). The official benchmark feeds agents raw JSON; the Duke harness converted tasks to a more human-readable visual format. The result exposed a sharp interface sensitivity: the model is not failing the underlying reasoning task, it is failing the particular encoding. ARC's official position characterizes this as a methodological flaw in the harness, not evidence of emergent competence. The episode reinforces that harness choice can dominate model capability in agent benchmarks.

### SWE-bench Pro (Scale AI SEAL — ongoing)

Now established as the primary frontier differentiator post–Verified contamination. 1,865 tasks across 41 actively maintained repos in Python, Go, TypeScript, and JavaScript. GPL-licensed repos included as a legal deterrent against training inclusion. SEAL standardized scaffold is the field's best current answer to harness-inflation — today's Claude Opus 4.7 result (64.3%) is the first top-10 entry in the table with both a recently-released shipping model and a standardized scaffold.

---

## Notable Movements

### Claude Opus 4.7 establishes SEAL-confirmed SWE-bench Pro position

Four days after its April 16 release, Claude Opus 4.7 has a SEAL-confirmed SWE-bench Pro score of 64.3%, placing it above GPT-5.4 (59.1%) as the top independently-run result. The model was announced with a 1M context window. It does not displace Claude Mythos Preview's self-reported 77.8%, but Mythos Preview remains unconfirmed under standardized conditions.

### Benchmark divergence across capability profiles hardening

A pattern is now clear: Gemini models lead LiveCodeBench (competitive programming), GPT-5.4 leads Terminal-Bench (sysadmin/scripting), and Anthropic models lead SWE-bench Pro (repository-level debugging). These are not equivalent tasks. Claims of overall coding leadership depend entirely on which benchmark is cited — and labs have incentive to cite the ones where they lead.

### SWE-bench Verified effectively retired as a frontier signal

The accumulation of contamination evidence — OpenAI's February retirement, LessLeak-Bench's 10.6% leakage finding, GPT-5.2 producing exact gold patches from task snippets, and Yann LeCun's confirmation of Meta's LMArena manipulation — has made Verified scores nearly uninterpretable for frontier models. Scores above ~80% should be treated as evidence of contamination exposure, not raw capability.

### ARC-AGI-3 near-saturation claim remains disputed

The 97.1% result for Claude Opus 4.6 on ARC-AGI-3 TR87 (using the Duke harness) has not been replicated on the standard benchmark protocol. ARC's official leaderboard still shows sub-50% results for frontier models on the standard task encoding. The dispute highlights a recurring issue: when a model suddenly "solves" a benchmark, the first question is usually the encoding, not the model.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Pro leaderboard — llm-stats](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-bench Verified leaderboard — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Verified leaderboard — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-rebench: decontaminated tests — MindStudio](https://www.mindstudio.ai/blog/swe-rebench-benchmark-decontaminated-tests-model-inflation)
- [OpenAI retires SWE-bench Verified](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Terminal-Bench leaderboard](https://www.tbench.ai/leaderboard)
- [LiveCodeBench leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval leaderboard — PricePerToken](https://pricepertoken.com/leaderboards/benchmark/humaneval)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-bench scores explained — DEV Community](https://dev.to/rahulxsingh/swe-bench-scores-and-leaderboard-explained-2026-54of)
- [LLM coding benchmarks 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [Claude Mythos benchmark claims — NxCode](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026)
- [LessLeak-Bench: data leakage in SE benchmarks](https://arxiv.org/html/2502.06215v1)
- [AI Benchmarks 2026 limits — Kili Technology](https://kili-technology.com/blog/ai-benchmarks-guide-the-top-evaluations-in-2026-and-why-theyre-not-enough)
