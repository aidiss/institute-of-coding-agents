---
title: "Benchmarks, May 1, 2026"
date: 2026-05-01
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Fractured — Verified is a dead metric, Pro is the new floor, and Claude Mythos Preview claims numbers that require independent verification"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-05-01

The leaderboard picture has shifted sharply since March. Claude Mythos Preview (an unreleased or preview model) is reporting headline SWE-bench Verified scores of 93.9% and SWE-bench Pro scores of 77.8% — both unverified by an independent scaffold. Meanwhile, the contamination story on Verified has only deepened, making those top-line numbers close to meaningless. SWE-bench Pro, SWE-rebench, LiveCodeBench, and Terminal-Bench remain the credible signals.

## Leaderboard

### SWE-bench Verified (⚠️ contaminated — reference only)

| Rank | Agent / Model | Score | Date | Notes |
|------|--------------|-------|------|-------|
| — | Claude Mythos Preview | 93.9% | Apr 28, 2026 | ⚠️ unverified / self-reported |
| — | Claude Opus 4.7 (Adaptive) | 87.6% | Apr 2026 | ⚠️ self-reported |
| — | GPT-5.3 Codex (agent) | 85.0% | Apr 2026 | ⚠️ self-reported |
| 1 | Claude Opus 4.5 | 80.9% | Feb 2026 | Epoch AI independent |
| 2 | Claude Opus 4.6 | 80.8% | Feb 2026 | Epoch AI independent |
| 3 | Gemini 3.1 Pro | 80.6% | Feb 2026 | Epoch AI independent |
| 4 | MiniMax M2.5 | 80.2% | Feb 2026 | Epoch AI independent |
| 5 | GPT-5.2 | 80.0% | Feb 2026 | Epoch AI independent |

**Do not use Verified scores as a frontier discriminator.** OpenAI formally retired this benchmark in February 2026 after an internal audit found 59.4% of tasks had flawed or problematic test designs, and contamination is confirmed for all major frontier models. Scores above ~80% are almost certainly inflated; the 93.9% figure for Mythos Preview has not been reproduced under a standardized scaffold.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Score | Date | Scaffold |
|------|-------|-------|------|---------|
| — | Claude Mythos Preview | 77.8% | Apr 29, 2026 | ⚠️ unverified / self-reported |
| 1 | Claude Opus 4.7 (Adaptive) | 64.3% | Apr 2026 | ⚠️ Anthropic-reported |
| 2 | GPT-5.4 (xHigh) | 59.1% | Apr 2026 | SEAL mini-swe-agent |
| 3 | GPT-5.5 | 58.6% | Apr 2026 | SEAL |
| 4 | GPT-5.3-Codex (agent) | 56.8% | Apr 2026 | ⚠️ self-reported |
| — | Claude Opus 4.5 | 45.9% | Mar 2026 | SEAL (prior baseline) |

The top 6 SEAL-scored models are separated by ~4.9 percentage points, with overlapping confidence intervals — ranks 2–6 are statistically indistinguishable. The gap between the Mythos Preview self-report (77.8%) and the next independently verified score (64.3%) is suspiciously large and warrants scrutiny.

### SWE-rebench (Nebius — fixed ReAct scaffold, fresh issues, 5 runs)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Claude Opus 4.6 | 65.3% | Apr 24, 2026 |
| 2 | GLM-5 | 62.8% | Apr 2026 |
| 3 | GLM-5.1 | 62.7% | Apr 2026 |
| — | Kimi K2 Thinking | Best pass@1 leader | Apr 2026 |
| — | Qwen3-Coder-Next | Best pass@5 leader | Apr 2026 |

SWE-rebench uses continuously fresh GitHub issues under a fixed ReAct scaffold — structurally contamination-resistant. Claude Code achieves the highest pass@5 of any model tracked. Open-source models (GLM-5, Kimi K2 Thinking, Qwen3-Coder-Next) are meaningfully competitive with closed-source at this cadence.

### Terminal-Bench (tbench.ai)

| Rank | Model | Score | Date | Notes |
|------|-------|-------|------|-------|
| 1 | GPT-5.4 | 75.1% | Apr 2026 | |
| 2 | Claude Opus 4.6 | 65.4% | Apr 2026 | |

Terminal-Bench scores have shifted since March (Gemini 3.1 Pro + Forge Code led at 78.4% in early March). April update shows GPT-5.4 pulling ahead of Gemini and Claude. Scaffold still matters — Opus 4.6 reached 74.7% under Terminus-KIRA in March vs. 65.4% in April's reported figure; the harness used for the April number is not specified in available sources.

### LiveCodeBench (contamination-controlled, rolling)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 |

No April 2026 LiveCodeBench update was found in search results — figures are the March 7 standings. Gemini's sustained lead here (algorithmic / competitive programming) continues to diverge from SWE-bench rankings.

### HumanEval (saturated — reference only)

HumanEval is no longer a frontier discriminator. Kimi K2.5 reports ~99.0%; all major frontier models score 95%+. Not worth tracking.

---

## New Benchmarks & Methodology

### GDPval (OpenAI-led, early 2026)
Spans 44 knowledge work occupations, positioning itself as an economically grounded measure of AI work output rather than a narrow coding proxy. No public leaderboard yet; methodology details are sparse in available sources.

### SWE-rebench gains traction
Nebius's continuously-updated benchmark (fresh GitHub issues, fixed ReAct scaffold, 5-run averaging) is emerging as a credible alternative to SWE-bench Pro for researchers who want contamination resistance without Scale AI's evaluation access. The pass@5 / pass@1 split is a useful signal for agent reliability vs. raw capability.

### SWE-bench Pro private subset remains the hardest bar
276 instances from 18 private, proprietary startup codebases. Top models drop 5–8 points from public-subset scores. This remains the most contamination-resistant single measure available.

---

## Notable Movements

### Claude Mythos Preview headline — treat with extreme caution
A model apparently called "Claude Mythos Preview" is being cited across aggregators with 93.9% on SWE-bench Verified and 77.8% on SWE-bench Pro. Neither figure has been reproduced under an independent standardized scaffold. Given the documented gap between self-reported and SEAL-verified scores (often 10–15 points on Pro), and given that Verified is acknowledged as contaminated, these numbers should be treated as marketing claims until reproduced. If confirmed under SEAL, the Pro score would be a genuine step change.

### OpenAI's score narrative has shifted
GPT-5.4 and GPT-5.5 now lead on SWE-bench Pro under SEAL (ranks 2–3 if Mythos Preview is excluded), reversing Anthropic's prior advantage with Opus 4.5. The cluster at 56–64% on Pro is tight — harness choice within that range is as decisive as model choice.

### Open source competitive on rebench, less so on Pro
GLM-5 and GLM-5.1 rank 2nd and 3rd on SWE-rebench; Qwen3-Coder-Next leads pass@5. But on SWE-bench Pro (SEAL), earlier scores for Qwen-3 32B (3.4%) and GPT-4o (4.9%) show a dramatic capability cliff. The open-source story is "strong on contamination-resistant easy-to-medium tasks, weak on Pro-difficulty private codebases."

### Verified's zombie scores still circulating
Despite OpenAI's February retirement and widespread acknowledgment of contamination, aggregator sites continue reporting Verified scores prominently — including the unverified Mythos Preview 93.9%. Labs have an incentive to keep Verified alive because Pro scores are lower and harder to game. Watch for Verified-vs-Pro framing as a signal of selective reporting.

### Gemini algorithm lead persists, repository lead does not
Gemini 3 Pro Preview tops LiveCodeBench (competitive programming, algorithm problems) at 91.7% but does not appear in the Pro top 5 on real-repository bug fixing. The divergence is consistent across March and April data: Gemini appears stronger on algorithmic reasoning, Claude and GPT on codebase navigation and patching.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-Bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Verified — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Pro — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-Rebench Benchmark 2026 — BenchLM.ai](https://benchlm.ai/benchmarks/sweRebench)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [SWE-Bench Verified Leaderboard March 2026 — marco.dev](https://www.marc0.dev/en/leaderboard)
- [SWE-Bench Verified Leaderboard — llm-stats.com](https://llm-stats.com/benchmarks/swe-bench-verified)
- [Is SWE-bench Verified Contaminated? — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [Why SWE-bench Verified no longer measures frontier coding — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench Leaderboard 2026 — CodeAnt AI](https://www.codeant.ai/blogs/swe-bench-scores)
- [Claude Mythos Benchmarks Explained — NxCode](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026)
- [LiveCodeBench Leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [Best LLMs for Coding 2026 — Onyx AI](https://onyx.app/insights/best-llms-for-coding-2026)
- [Best LLM for Coding — WhatLLM.org](https://whatllm.org/best-llm-for-coding)
- [LLM Coding Benchmarks 2025–2026 — CodeSOTA](https://www.codesota.com/llm/coding-benchmarks)
- [SWE-bench & LiveCodeBench Leaderboard March 2026 — BenchLM.ai](https://benchlm.ai/coding)
- [Every Major AI Benchmark in 2026 — Medium](https://medium.com/@adityakumarjha292004/every-major-ai-benchmark-in-2026-what-the-numbers-actually-mean-and-what-labs-dont-want-you-to-82cb582c1bcf)
