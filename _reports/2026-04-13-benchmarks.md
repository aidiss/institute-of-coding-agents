---
title: Benchmarks — Competitive Evaluation Landscape
date: 2026-04-13
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — April 13, 2026

The big event since the April 1 report: Anthropic released **Claude Mythos Preview** on April 7 with a self-reported 93.9% on the now-retired SWE-bench Verified — the highest score ever recorded there, but on a contaminated benchmark. Separately, GLM-5.1 (open source) posted 58.4% on SWE-bench Pro, briefly topping the public leaderboard. APEX-Agents-AA launched as a new agent-specific evaluation. The contamination-standardization gap continues to widen.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23** (contaminated)

Included for historical reference and because new entries continue to be self-reported against it. Do not use for capability comparisons. OpenAI confirmed training data contamination across all frontier labs; verbatim gold-patch reproduction documented for GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% | 2026-04-07 | Self-reported; model not publicly available |
| 2 | GPT-5.3 Codex | SWE-bench Verified | ~85% | 2026-Q1 | Self-reported |
| 3 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | 2026-02-17 | Self-reported; 76.8% standardized |
| 4 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | 2026-02-17 | Self-reported |
| 5 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | 2026-02-17 | Self-reported; ~75.6% standardized |
| 6 | MiniMax M2.5 (high reasoning) | SWE-bench Verified | 80.2% | 2026-02-17 | Self-reported; audit ongoing |
| 7 | GPT-5.2 | SWE-bench Verified | 80.0% | 2026-02-17 | Self-reported; 72.8% standardized |
| 8 | GLM-5 (high reasoning) | SWE-bench Verified | 77.8% | 2026-02-17 | Self-reported |
| 9 | Claude Sonnet 4.5 | SWE-bench Verified | 77.2% | 2026-02-17 | Self-reported; 72.8% standardized |
| 10 | Gemini 3 Flash (high reasoning) | SWE-bench Verified | 78.0% | 2026-02-17 | Self-reported; 75.8% standardized |

*Standardized scaffold: mini-SWE-agent v2.0.0. Self-reported scores use custom scaffolding and are not comparable. Claude Mythos 93.9% is the highest score ever recorded but is unverified; model restricted to Project Glasswing participants only.*

### SWE-bench Pro — SEAL Standardized Scaffold (public set, 731 instances)

Active replacement for Verified. GPL-licensed code as contamination barrier; private set (276 proprietary instances) consistently scores ~25% lower. Ranks 2–6 overlap within confidence intervals; treat ordering with caution.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% | 2026-03 |
| 2 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% | 2026-03 |
| 3 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% | 2026-03 |
| 4 | Claude Sonnet 4 | SWE-bench Pro | 42.7% ±3.59% | 2026-03 |
| 5 | GPT-5 (High) | SWE-bench Pro | 41.8% ±3.49% | 2026-03 |
| 6 | GPT-5.2-Codex | SWE-bench Pro | 41.0% ±3.57% | 2026-03 |
| 7 | Claude Haiku 4.5 | SWE-bench Pro | 39.5% ±3.55% | 2026-03 |
| 8 | Qwen3-Coder-480B-A35B | SWE-bench Pro | 38.7% ±3.55% | 2026-03 |
| 9 | MiniMax 2.1 | SWE-bench Pro | 36.8% ±3.55% | 2026-03 |
| 10 | Gemini 3 Flash | SWE-bench Pro | 34.6% ±3.55% | 2026-03 |

*No new SEAL-standardized entries as of 2026-04-13. GLM-5.1's 58.4% score (below) used custom scaffolding — not comparable.*

### SWE-bench Pro — Custom Agent Systems (self-reported, non-comparable to SEAL)

New entries since April 1. All self-reported; scaffold differences account for most of the gap vs. SEAL.

| Rank | Agent | Benchmark | Score | Date | Notes |
|------|-------|-----------|-------|------|-------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% | 2026-04-07 | Self-reported; not publicly available |
| 2 | GLM-5.1 (Zai, open source) | SWE-bench Pro | 58.4% | 2026-04-08 | Self-reported; open weights |
| 3 | GPT-5.4 | SWE-bench Pro | 57.7% | 2026-03 | Self-reported |
| 4 | Opus 4.6 + WarpGrep v2 (Morph) | SWE-bench Pro | 57.5% | 2026-03 | Self-reported |
| 5 | GPT-5.3-Codex CLI | SWE-bench Pro | 57.0% | 2026-03 | Self-reported |
| 6 | GPT-5.2-Codex (custom) | SWE-bench Pro | 56.4% | 2026-03 | Self-reported |
| 7 | Claude Code (Opus 4.5) | SWE-bench Pro | 55.4% | 2026-03 | Self-reported |

### SWE-rebench v2 (rolling, 2026-01 – 2026-03, 128 tasks, 46 repos)

No new entries since April 1.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%) | 2026-03 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%) | 2026-03 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%) | 2026-03 |
| 4 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%) | 2026-03 |
| 5 | DeepSeek-V3.2 | SWE-rebench v2 | 60.9% (pass@5: 73.7%) | 2026-03 |
| 6 | Claude Sonnet 4.6 | SWE-rebench v2 | 60.7% | 2026-03 |

### Terminal-Bench 2.0 (89 realistic terminal tasks, Docker-sandboxed; ICLR 2026)

Self-reported entries inflate scores significantly vs. independent evaluation; see Notes column.

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | ForgeCode (GPT-5.4) | Terminal-Bench 2.0 | 81.8% ±2.0% | 2026-03-12 | Self-reported |
| 1 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 3 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| 4 | SageAgent (GPT-5.3-Codex) | Terminal-Bench 2.0 | 78.4% ±2.2% | 2026-03-13 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Verified** |
| — | Terminus 2 (GPT-5.3-Codex) | Terminal-Bench 2.0 | 64.7% ±2.7% | 2026-03 | **Verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Verified** |

*"Hard" tasks only (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8%, GPT-5.3-Codex 53.0% — ~24 pp below self-reported tops. Infrastructure resource allocation can swing scores up to 6 pp (Anthropic audit finding). No new verified entries this week.*

### LiveCodeBench v6 (contamination-resistant competitive programming)

New leader as of early April: Qwen3.6 Plus has surpassed Gemini 3 Pro at the top.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Qwen3.6 Plus (Alibaba) | LiveCodeBench v6 | 87.1% | 2026-04 |
| 2 | Gemini 3 Pro Preview | LiveCodeBench v6 | 91.7% | 2026-03-22 |
| 3 | Gemini 3 Flash Preview (Reasoning) | LiveCodeBench v6 | 90.8% | 2026-03-22 |
| 4 | DeepSeek V3.2 Speciale | LiveCodeBench v6 | 89.6% | 2026-03-22 |
| 5 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-03-30 |
| 6 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | ~85% | 2026-03 |
| 7 | Claude Opus 4.6 | LiveCodeBench v6 | 76.0% | 2026-Q1 |

*Note: Scores may not be directly comparable across dates due to LiveCodeBench's rolling problem set. LiveCodeBench Pro Elo (hardest problems): Gemini 3.1 Pro leads at Elo 2887 vs. GPT-5.2 at Elo 2393.*

### HumanEval (164 Python problems — saturated, not recommended for frontier comparison)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2.5 (Reasoning) | HumanEval | ~99.0% | 2026-Q1 |
| 2 | Claude Sonnet 4.5 | HumanEval | 97.6% | 2026-03-24 |
| 3 | DeepSeek R1 | HumanEval | 97.4% | 2026-03-24 |
| 4 | Grok 4 | HumanEval | 97.0% | 2026-03-24 |
| 5 | Claude Opus 4.6 | HumanEval | 95.0% | 2026-Q1 |

*All scores self-reported; benchmark saturated since late 2025. HumanEval+ (EvalPlus) is stricter: Kimi K2 Base leads at 80.3%.*

---

## New Benchmarks & Methodology

**APEX-Agents-AA** (Artificial Analysis, launched April 2026)
The first leaderboard specifically designed to evaluate AI agents on long-horizon professional services tasks. Key finding from early results: model scores on traditional benchmarks correlate poorly with agent task completion rates — a model scoring 5% higher on a general benchmark may score 15% lower on agent tasks, because agent reliability depends on factors benchmarks don't measure: tool-use consistency, error recovery, and context management across long sessions. Scores pending; this benchmark's design addresses scaffold-independence concerns directly.

**Terminal-Bench 2.0** (ICLR 2026, ongoing)
Now distinguishing "verified" from "self-reported" entries explicitly in the leaderboard UI. The 6–24 pp gap between self-reported and verified scores is documented on the leaderboard itself. Infrastructure resource allocation remains an acknowledged confound.

**SWE-bench Pro (Scale AI SEAL)** — active primary standard
731-instance public (GPL-licensed, contamination barrier) + 276-instance proprietary private set. Private set consistently runs ~25% below public scores across all labs, confirming contamination on the public portion as well.

---

## Notable Movements

**Claude Mythos Preview: 93.9% on SWE-bench Verified** (2026-04-07, self-reported, unverified)
Anthropic announced Claude Mythos Preview — its most capable model — but will not release it publicly due to cybersecurity capability concerns. The 93.9% score is the highest ever recorded on SWE-bench Verified, a 13.1 pp jump over Opus 4.6's 80.8%. However, SWE-bench Verified is contaminated and retired; the result must be treated as self-reported on a deprecated benchmark. Mythos also scored 77.8% on SWE-bench Pro (custom scaffold, self-reported). The model is available only to ~40 whitelisted security teams via Project Glasswing (Apple, Google, Microsoft, Amazon among participants). Pricing: $25/$125 per token input/output.

**GLM-5.1 open source claims top custom-agent SWE-bench Pro score** (2026-04-08)
Zai released GLM-5.1 as fully open-weights, posting 58.4% on SWE-bench Pro — which, if taken at face value, beats the custom-agent scores of GPT-5.4 (57.7%) and Claude Opus 4.6 + WarpGrep (57.5%). Scaffold methodology not independently verified; treat as self-reported until external replication. Significant if confirmed — would be the first open-source model to top the custom-agent SWE-bench Pro list.

**Qwen3.6 Plus moves to front on LiveCodeBench v6** (2026-04)
Alibaba's Qwen3.6 Plus posted 87.1% on LiveCodeBench v6, taking the lead on the most contamination-resistant coding benchmark currently active. Chinese labs (ByteDance, Alibaba, DeepSeek, Moonshot) now hold 5 of the top 6 spots on LiveCodeBench; Anthropic and OpenAI continue to be absent from the top positions.

**The Verified→Pro gap holds at ~35 pp**
Claude Mythos: 93.9% (self-reported Verified) → 77.8% (self-reported Pro, custom scaffold) → unknown (SEAL standardized). The ~16 pp drop from Verified to custom-scaffold Pro, and likely another 10–15 pp to SEAL standardized, continues the pattern seen with Opus 4.5 (80.9% → 45.9%). Benchmark selection determines who appears to "win."

**MiniMax audit status: unresolved**
Independent audit of MiniMax's SWE-bench Verified scores, flagged 2026-03-19, remains unresolved as of 2026-04-13. Treat MiniMax scores as unverified.

**APEX-Agents-AA exposes benchmark-to-agent correlation breakdown**
Artificial Analysis' early APEX-Agents-AA data formalizes what practitioners have observed: leaderboard rank on SWE-bench or LiveCodeBench is a weak predictor of real agentic task completion. The new benchmark explicitly tests tool-use consistency and long-horizon error recovery. Whether it becomes a credible standard depends on adoption by major labs.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/) — retired 2026-02-23
- [SWE-bench Pro leaderboard — Scale AI SEAL](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis: Why 46% beats 81% — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [Why OpenAI no longer evaluates SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Claude Mythos Preview — red.anthropic.com](https://red.anthropic.com/2026/mythos-preview/)
- [Claude Mythos Benchmarks Explained — NxCode](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026)
- [Claude Mythos Preview: Benchmarks & Project Glasswing — LLM-Stats](https://llm-stats.com/blog/research/claude-mythos-preview-launch)
- [Is SWE-bench Verified contaminated? — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [Open Source AI beats closed-source on SWE-bench Pro — IBL.ai](https://ibl.ai/blog/open-source-ai-swe-bench-pro-2026)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [Terminal-Bench 2.0 (tbench.ai)](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [SWE-bench & LiveCodeBench — BenchLM.ai](https://benchlm.ai/coding)
- [Best AI for Coding 2026 — LLM-Stats](https://llm-stats.com/leaderboards/best-ai-for-coding)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [HumanEval — BenchLM.ai](https://benchlm.ai/benchmarks/humaneval)
- [LLM-Stats.com benchmarks](https://llm-stats.com/)
