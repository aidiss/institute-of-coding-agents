---
title: "Benchmarks, May 3, 2026"
date: 2026-05-03
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Stable leaderboards with no major new entries; contamination crisis structural — UC Berkeley exploit findings persist as dominant methodology story; FeatureBench emerges as credible hard alternative with frontier models below 13%"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-05-03

No major leaderboard shake-ups today. The top clusters on SWE-bench Pro, Terminal-Bench, and LiveCodeBench are largely unchanged from May 2. The dominant story remains structural: the UC Berkeley RDI contamination study from late April continues to reverberate through the community, and the gap between SWE-bench Verified (~81%) and SWE-bench Pro (~46%) for the same models remains the primary evidence that Verified is no longer a meaningful frontier discriminator. FeatureBench — which measures full feature implementation rather than bug fixes — is gaining attention as one of the few hard benchmarks where frontier models score below 13%.

## Leaderboard

### SWE-bench Verified (⚠️ contaminated — reference only)

| Rank | Agent / Model | Score | Date | Notes |
|------|--------------|-------|------|-------|
| — | Claude Mythos Preview | 93.9% | Apr 7–8, 2026 | ⚠️ unverified / self-reported; restricted access |
| — | Claude Opus 4.7 (Adaptive) | 87.6% | Apr 2026 | ⚠️ self-reported |
| — | GPT-5.3 Codex (agent) | 85.0% | Apr 2026 | ⚠️ self-reported |
| 1 | Claude Opus 4.5 | 80.9% | Feb 2026 | Epoch AI independent |
| 2 | Claude Opus 4.6 | 80.8% | Feb 2026 | Epoch AI independent |
| 3 | DeepSeek V4 Pro (Max) | 80.6% | Feb 2026 | Epoch AI independent |
| 4 | Kimi K2.6 | 80.2% | Feb 2026 | Epoch AI independent |
| 5 | GPT-5.2 | 80.0% | Feb 2026 | Epoch AI independent |
| 6 | Claude Sonnet 4.6 | 79.6% | Feb 2026 | Epoch AI independent |
| 7 | DeepSeek V4 Pro (High) | 79.4% | Feb 2026 | Epoch AI independent |

**Do not use Verified as a frontier discriminator.** OpenAI formally retired this benchmark in February 2026 after an internal audit found 59.4% of hardest unsolved tasks had flawed test designs, and training data contamination is confirmed for all major frontier models. Models scoring 80%+ likely reflect significant recall of training data. Claude Mythos Preview (93.9%) is not publicly available — access restricted to ~40 Project Glasswing security partners.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Score | Date | Scaffold |
|------|-------|-------|------|---------|
| — | Claude Mythos Preview | 77.8% | Apr 2026 | ⚠️ unverified / self-reported |
| — | Claude Opus 4.7 (Adaptive) | 64.3% | Apr 2026 | ⚠️ Anthropic-reported |
| 1 | GPT-5.4 (xHigh) | 59.1 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 2 | Muse Spark | 55.0 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 3 | Claude Opus 4.6 (thinking) | 51.9 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 4 | Gemini 3.1 Pro (thinking) | 46.1 ± 3.6% | Apr 2026 | SEAL |
| 5 | Claude Opus 4.5 | 45.9 ± 3.6% | Mar 2026 | SEAL |
| 6 | Claude Sonnet 4.5 | 43.6 ± 3.6% | Mar 2026 | SEAL |
| 7 | Gemini 3 Pro | 43.3 ± 3.6% | Mar 2026 | SEAL |
| 8 | Claude 4 Sonnet | 42.7 ± 3.6% | Mar 2026 | SEAL |
| 9 | GPT-5 (High) | 41.8 ± 3.5% | Mar 2026 | SEAL |

SWE-bench Pro (1,865 tasks, 41 repositories) is designed to resist contamination by including GPL/proprietary code inaccessible to model trainers. The ~35-point gap between Verified (~81%) and Pro (~46%) for the same base models is the primary contamination signal. Labs reporting with custom harnesses (Mythos 77.8%, Opus 4.7 64.3%) consistently exceed SEAL-verified scores — apply a rough ~12-point scaffold discount when comparing. Ranks 4–9 under SEAL fall within overlapping confidence intervals and are statistically indistinguishable.

### Terminal-Bench 2.0

| Rank | Model | Score | Date | Notes |
|------|-------|-------|------|-------|
| 1 | GPT-5.5 | 82.0% | May 1, 2026 | |
| 2 | Claude Opus 4.7 (Adaptive) | 69.4% | May 1, 2026 | ⚠️ self-reported |
| 3 | MiMo-V2.5-Pro | 68.4% | May 1, 2026 | Xiaomi |
| 4 | DeepSeek V4 Pro (Max) | 67.9% | May 1, 2026 | |
| 5 | Kimi K2.6 | 66.7% | May 1, 2026 | open |
| 6 | MiMo-V2.5 | 65.8% | May 1, 2026 | Xiaomi |
| 7 | Qwen 3.6 Max (preview) | 65.4% | May 1, 2026 | Alibaba |
| 8 | DeepSeek V4 Pro (High) | 63.3% | May 1, 2026 | |
| 9 | Composer 2 | 61.7% | May 1, 2026 | Cursor |
| 10 | Qwen3.6-27B | 59.3% | May 1, 2026 | Alibaba |

89 curated tasks in real terminal/CLI environments (git, file editing, repository workflows). GPT-5.5 leads with a meaningful gap over the second tier. **Note:** UC Berkeley demonstrated that binary wrapper trojans can achieve ~100% on Terminal-Bench without solving any tasks — the exploit was demonstrated in a research context, not attributed to any leaderboard submission.

### LiveCodeBench (rolling, contamination-resistant)

**LCB v6 (new, limited submissions as of May 1, 2026):**

| Rank | Model | Score (Pass@1) | Date | Provider |
|------|-------|----------------|------|---------|
| 1 | Kimi K2.6 | 89.6% | May 1, 2026 | Moonshot AI |
| 2 | Qwen 3.6 Plus | 87.1% | May 1, 2026 | Alibaba |
| 3 | Kimi K2.5 | 85.0% | May 1, 2026 | Moonshot AI |
| 4 | Claude Opus 4.5 | 84.8% | May 1, 2026 | Anthropic |
| 5 | Qwen 3.5 397B | 83.6% | May 1, 2026 | Alibaba |

**Broader leaderboard (all versions, most recent scores — llm-stats.com / Artificial Analysis):**

| Rank | Model | Score | Date | Source |
|------|-------|-------|------|--------|
| 1 | DeepSeek V4 Pro (Max) | 93.5% | Apr 2026 | llm-stats.com |
| 2 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 | Artificial Analysis |
| 3 | DeepSeek V4 Flash (Max) | 91.6% | Apr 2026 | llm-stats.com |
| 4 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 | Artificial Analysis |
| 5 | GPT-5.2 (medium) | 89.4% | Mar 2026 | Artificial Analysis |

Rankings diverge between trackers due to different problem-date windows and model configurations. LCB continuously ingests competitive programming problems from LeetCode, AtCoder, and Codeforces posted after model training cutoffs — the most contamination-resistant mainstream coding benchmark by design.

### HumanEval (saturated — reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Claude Sonnet 4.5 (Thinking) | 97.6% | Apr 28, 2026 |
| 2 | DeepSeek R1 | 97.4% | Apr 28, 2026 |
| 3 | Grok 4 | 97.0% | Apr 28, 2026 |
| 3 | Claude Sonnet 4.5 | 97.0% | Apr 28, 2026 |
| 3 | Gemini 3 Pro Preview | 97.0% | Apr 28, 2026 |

Average across 75 models: 89.7% (pricepertoken.com, May 2, 2026). Not a frontier discriminator — all major models exceed 90%. EvalPlus (stricter test cases) is more meaningful at this tier. **Status: Effectively saturated.**

---

## New Benchmarks & Methodology

### FeatureBench — Hard Alternative Gaining Traction (Feb 2026)

FeatureBench (arXiv:2602.10975, February 2026) evaluates agents on full feature implementation rather than bug fixes — 200 instances from 24 Python repositories. This makes it substantially harder than SWE-bench: the top score is GPT-5.1-Codex at only 12.5% resolved, with Claude Opus 4.5 at 11.0%. The low ceiling provides genuine frontier discrimination that Verified can no longer offer and Pro only partially provides. Gaining community attention as a credible hard benchmark.

### SWE-bench Live (Microsoft, rolling)

Continuously-updated benchmark adding ~50 freshly-verified GitHub issues per month. Currently at 1,565 task instances across 164 repositories; added Windows (PowerShell) and Multi-Language variants in October 2025. Best current option for contamination resistance on real repository tasks alongside SWE-rebench.

### SWE-rebench (Nebius, fixed ReAct scaffold)

Independent re-verification pipeline tracking task creation dates versus model release dates and flagging potentially contaminated evaluations. Top-5 as of April 24, 2026: Claude Opus 4.6 (65.3%), GPT-5.2 medium (64.4%), GLM-5 (62.8%), Junie (62.8%), GPT-5.4 medium (62.8%). Open-source models (GLM-5, Qwen3-Coder-Next) are meaningfully competitive with closed-source at this difficulty tier.

### UC Berkeley RDI: Eight Benchmarks Exploitable to Near-100%

The April 2026 UC Berkeley RDI study remains the dominant methodology story. Key findings:

| Benchmark | Exploit Method | Achievable Score |
|-----------|---------------|-----------------|
| Terminal-Bench (89 tasks) | Binary wrapper trojans | ~100% |
| SWE-bench Verified (500 tasks) | pytest hook injection | ~100% |
| SWE-bench Pro (731 tasks) | In-container parser overwriting | ~100% |
| WebArena (812 tasks) | Config leakage + DOM injection | ~100% |
| FieldWorkArena (890 tasks) | validate() never checks correctness | 100% |
| CAR-bench | LLM judge prompt injection | 100% |
| GAIA (165 tasks) | Public answers + normalization exploits | ~98% |
| OSWorld (369 tasks) | VM state manipulation | ~73% |

Seven recurring vulnerability classes: shared evaluation environments, exposed reference answers, unsafe `eval()`, unfiltered LLM judges, weak string matching, broken validation logic, and trusting compromised test output. This does not imply leaderboard leaders are exploiting these vulnerabilities — but it means unverified self-reported scores on static benchmarks carry additional interpretive risk.

### OpenAI SWE-bench Verified Retirement (Feb 2026)

OpenAI's internal audit found that all frontier models tested (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could reproduce verbatim gold patches or problem statement specifics for a subset of Verified tasks. Additionally, 59.4% of the hardest unsolved Verified tasks had test suites that would not catch the intended bug — meaning agents can pass without solving the issue. Estimated score inflation from contamination plus weak tests: 5–15 points on post-2023 models. OpenAI officially stopped reporting Verified scores in February 2026.

---

## Notable Movements

### Leaderboards stable — no major new entries on May 3
No new benchmark submissions of note today. The top clusters on SWE-bench Pro, Terminal-Bench, and LiveCodeBench v6 are unchanged from May 2. The next expected movements are new SEAL evaluation cycles and any public release of Claude Mythos Preview, which would allow independent Verified/Pro verification.

### Scaffold inflation remains unaddressed
The gap between custom-harness scores (Claude Mythos 77.8% Pro, Opus 4.7 64.3% Pro) and SEAL-standardized scores (Opus 4.5 45.9% Pro, Opus 4.6 51.9% Pro) continues to widen as labs compete on harness engineering rather than base model capability. No benchmark organization has yet standardized harness requirements. A rough 12-point discount remains the community heuristic for comparing self-reported to SEAL scores.

### Open vs. closed gap depends entirely on benchmark choice
DeepSeek V4 Pro (open), Kimi K2.6 (open), and GLM-5 (open) are statistically competitive with closed models on SWE-rebench and LiveCodeBench. On SWE-bench Pro (SEAL), the best available open-source result is Qwen 3 32B at approximately 3.4% — a dramatic capability cliff that makes the open/closed framing benchmark-dependent.

### HumanEval no longer tracks frontier capability
With 75 models averaging 89.7% and the top cluster compressed between 97–98%, HumanEval has completed its transition from useful benchmark to baseline sanity check. The field has effectively moved to FeatureBench, SWE-bench Pro, and LiveCodeBench for frontier discrimination.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Verified — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Pro — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [Terminal-Bench 2.0 — BenchLM.ai](https://benchlm.ai/benchmarks/terminalBench2)
- [Terminal-Bench arXiv paper](https://arxiv.org/abs/2601.11868)
- [Terminal-Bench official](https://www.tbench.ai/)
- [LiveCodeBench v6 — BenchLM.ai](https://benchlm.ai/benchmarks/liveCodeBenchV6)
- [LiveCodeBench official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [LiveCodeBench — llm-stats.com](https://llm-stats.com/benchmarks/livecodebench)
- [HumanEval — pricepertoken.com](https://pricepertoken.com/leaderboards/benchmark/humaneval)
- [EvalPlus Leaderboard](https://evalplus.github.io/leaderboard.html)
- [FeatureBench arXiv](https://arxiv.org/html/2602.10975v1)
- [UC Berkeley RDI — How We Broke Top AI Agent Benchmarks](https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/)
- [Why SWE-bench Verified no longer measures frontier coding — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench contamination debate — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-bench-Live (Microsoft)](https://swe-bench-live.github.io/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [Claude Mythos Preview benchmarks — BenchLM.ai](https://benchlm.ai/models/claude-mythos-preview)
