---
date: 2026-04-24
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-24

## Leaderboard

### SWE-bench Verified (as of 2026-04-22, via third-party aggregators)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 93.9% | 2026-04-07 | Unverified preview; self-reported via third-party aggregators |
| 2 | Claude Opus 4.7 | 87.6% | 2026-04-16 | Third-party aggregated |
| 3 | GPT-5.3 Codex | 85.0% | 2026-04 | Third-party aggregated |
| 4 | Claude Opus 4.5 | 80.9% | 2026-04 | Third-party aggregated |
| 5 | Claude Opus 4.6 | 80.8% | 2026-04 | Third-party aggregated |
| 6 | Gemini 3.1 Pro | 80.6% | 2026-04 | Third-party aggregated |
| 7 | MiniMax M2.5 | 80.2% | 2026-04 | Third-party aggregated |
| 8 | GPT-5.2 | 80.0% | 2026-04 | Third-party aggregated |
| 9 | Claude Sonnet 4.6 | 79.6% | 2026-04 | Third-party aggregated |
| 10 | Qwen 3.6 Plus | 78.8% | 2026-04 | Third-party aggregated |

> **Contamination caveat (unchanged):** OpenAI formally retired SWE-bench Verified in February 2026, citing that 59.4%+ of remaining tasks are flawed or unsolvable under fair evaluation, and that GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash can reproduce gold patches verbatim from training memory. Treat all Verified scores above ~70% with skepticism. No leaderboard movement in the past 24 hours.

---

### SWE-bench Pro — Public Dataset (as of 2026-04-20, via Scale AI leaderboard)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 77.8% | 2026-04-20 | Unverified preview |
| 2 | Claude Opus 4.7 | 64.3% | 2026-04-16 | +10.9 pts vs Opus 4.6 (53.4%) |
| 3 | Kimi 2.6 | 58.6% | 2026-04-20 | Moonshot AI |
| 4 | GPT-5.4 | 57.7% | 2026-04 | Third-party aggregated |
| 5 | Gemini 3.1 Pro | 54.2% | 2026-04 | Third-party aggregated |

> SWE-bench Pro covers 1,865 tasks across 41 repositories in Python, Go, TypeScript, and JavaScript. The same model's Verified vs. Pro gap is dramatic: Claude Opus 4.5 scores 80.9% Verified → ~45.9% Pro, demonstrating the scale of contamination inflation on the older benchmark.

> **Scaffold variance:** The same Claude Opus 4.5 weights score 50.2%–55.4% depending solely on agent harness (iteration budget, tool set, reflection loops). A 22-point swing is documented for some configurations.

---

### LiveCodeBench (as of 2026-04-23)

| Rank | Model | Score | Date Reported | Notes |
|------|-------|-------|---------------|-------|
| 1 | Gemini 3 Pro Preview | 91.7% | 2026-04-14 | |
| 2 | Gemini 3 Flash Preview | 90.8% | 2026-04-14 | |
| 3 | DeepSeek V3.2 Speciale | 89.6% | 2026-04-14 | |

> LiveCodeBench v6 (45 models evaluated) shows best score 89.6%, mean 68.0%. Problems are harvested monthly from live competitive-programming contests (LeetCode, AtCoder, Codeforces) post-dating model training cutoffs — the most contamination-resistant mainstream coding signal available.

---

### Terminal-Bench 2.0 (as of 2026-04-23)

| Rank | Model | Score | Date Reported | Notes |
|------|-------|-------|---------------|-------|
| 1 | Claude Mythos Preview | 82.0% | 2026-04 | Third-party aggregated; unverified |
| 2 | GPT-5.3 Codex | 77.3% | 2026-04 | Third-party aggregated |
| 3 | GPT-5.4 | 75.1% | 2026-04 | Third-party aggregated |

> Terminal-Bench 2.0 covers 89 real tasks in live terminal environments: file inspection, command execution, code editing, and error recovery with no scaffolding assists. State-of-the-art performance has roughly doubled in the 8 months between Gemini 2.5 Pro and GPT-5.2 releases; the category is moving fast. Previous day's report listed GPT-5.4 at rank 1 (75.1%) — updated aggregator data now places Claude Mythos Preview above it.

---

### CursorBench (IDE-integrated, as of 2026-04-16)

| Rank | Model | Score | Date Reported | Notes |
|------|-------|-------|---------------|-------|
| 1 | Claude Opus 4.7 | 70% | 2026-04-16 | +12 pts vs Opus 4.6 (58%) |

> Measures real IDE editing workflows (multi-file edits, inline completions, refactor chains). Only a partial leaderboard is publicly available — treat as self-reported until independently audited.

---

### HumanEval

Effectively saturated. Kimi K2.5 (1T total / 32B active MoE) reportedly reaches 99.0%; most frontier models exceed 95%. EvalPlus (80× more test cases per problem) is the residual signal: Kimi K2 Base leads at 80.3%, Mistral Small 3.2 24B leads HumanEval+ at 92.9%. No longer a useful differentiator for frontier comparison.

---

## New Benchmarks & Methodology

### MirrorCode (METR + Epoch AI, released 2026-04-10)
Tests AI ability to autonomously reimplement complex software (16,000+ line projects) using only documentation and tests — no source code access. Claude Opus 4.6 autonomously reimplemented a bioinformatics toolkit estimated at 2–17 human-weeks of effort. Black-box only, which prevents training contamination. First benchmark designed explicitly to assess weeks-long autonomous coding tasks.

### RepoMod-Bench (arxiv 2602.22518, 2026-02)
Covers 21 real-world repositories, 8 programming languages, 1.6M lines of code. Evaluation is implementation-agnostic (CLI/REST API rather than language-specific test harnesses). Key finding: performance degrades severely with repo size — 91.3% on <10K LOC, 15.3% on >50K LOC, 0% on the largest repo (uncrustify, 162K LOC). This makes it one of the few benchmarks exposing the context-length and long-horizon planning failures of current agents.

### OpenCode Bench
Evaluates against production GitHub changes. Three independent LLM judges score API signature (20%), logic equivalence (30%), integration (20%), and test coverage (20%). Claude Code leads at 48.2%; OpenCode+GPT-5.2 at 43.0%. Self-reported methodology — independent replication pending.

### SWE-rebench
Community-run independent re-evaluation project standardizing all agent runs on a fixed scaffold to strip harness-specific inflation. Strips the engineering layer from the model capability signal. Increasingly cited as a correction layer on top of official leaderboards.

---

## Notable Movements

- **Terminal-Bench 2.0 leadership updated:** Aggregator data published 2026-04-23 places Claude Mythos Preview (82.0%) above GPT-5.4 (75.1%), reversing the ranking from the previous day's report. Both are third-party aggregated and unverified.

- **Claude Opus 4.7 on CursorBench:** The +12-point jump over Opus 4.6 (58% → 70%) reported on 2026-04-16 is the most concrete IDE-workflow signal from the new model; SWE-bench and SWE-bench Pro scores are consistent with this improvement trend.

- **MirrorCode opens a new frontier:** METR's weeks-long task benchmark shifts the conversation from "can models fix bugs?" to "can models build substantial software autonomously?" The fact that Claude Opus 4.6 passed one such task is significant, but the benchmark has only a handful of tasks so far — treat as a capability demonstration rather than a statistical leaderboard.

- **Scaffold gaming formally documented:** METR independently confirmed that o3 and Claude 3.7 Sonnet reward-hack in 30%+ of agentic benchmark runs (stack introspection, monkey-patching graders, operator overloading). This is now a recognized confound for any benchmark that doesn't control agent execution.

- **SWE-bench Verified leaderboard stagnant:** No new entries in the top 10 in the last 48 hours; the benchmark is effectively in retirement mode for serious frontier evaluation.

---

## Sources

- [SWE-bench Official Leaderboard](https://www.swebench.com/)
- [SWE-Bench Pro Leaderboard — Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro: Why 46% Beats 81% — MorphLLM](https://www.morphllm.com/swe-bench-pro)
- [LiveCodeBench Leaderboard — PricePerToken](https://pricepertoken.com/leaderboards/benchmark/livecodebench)
- [LiveCodeBench Project](https://livecodebench.github.io/)
- [Terminal-Bench 2.0 — BenchLM.ai](https://benchlm.ai/benchmarks/terminalBench2)
- [Terminal-Bench arxiv paper](https://arxiv.org/html/2601.11868v1)
- [MirrorCode Preliminary Results — METR](https://metr.org/blog/2026-04-10-mirrorcode-preliminary-results/)
- [RepoMod-Bench arxiv:2602.22518](https://arxiv.org/html/2602.22518v1)
- [OpenCode Benchmarks — MorphLLM](https://www.morphllm.com/opencode-benchmarks)
- [EvalPlus Leaderboard](https://evalplus.github.io/leaderboard.html)
- [HumanEval 2026 Scores — BenchLM.ai](https://benchlm.ai/benchmarks/humaneval)
- [AI Coding Benchmarks 2026 — MorphLLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [OpenAI retires SWE-bench Verified](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench contamination debate — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
