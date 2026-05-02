---
title: "Benchmarks, May 2, 2026"
date: 2026-05-02
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Contamination crisis deepens — UC Berkeley demonstrates near-100% exploits on 8 major benchmarks; GPT-5.5 surges on Terminal-Bench; LiveCodeBench v6 shows Kimi K2.6 leading on rolling competitive programming"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-05-02

The headline story today is structural, not a leaderboard shift: UC Berkeley's RDI lab published research demonstrating that eight major benchmarks — including SWE-bench Verified, SWE-bench Pro, Terminal-Bench, WebArena, and GAIA — can be exploited to achieve near-perfect scores without solving any actual tasks. This is the most systematic documentation yet of benchmark fragility. Meanwhile, the leaderboard picture is largely stable from May 1 — the top cluster on SWE-bench Pro remains tight and statistically ambiguous, and Claude Mythos Preview's self-reported numbers continue circulating without independent verification.

## Leaderboard

### SWE-bench Verified (⚠️ contaminated — reference only)

| Rank | Agent / Model | Score | Date | Notes |
|------|--------------|-------|------|-------|
| — | Claude Mythos Preview | 93.9% | Apr 28, 2026 | ⚠️ unverified / self-reported |
| — | Claude Opus 4.7 (Adaptive) | 87.6% | Apr 2026 | ⚠️ self-reported |
| — | GPT-5.3 Codex (agent) | 85.0% | Apr 2026 | ⚠️ self-reported |
| 1 | Claude Opus 4.5 | 80.9% | Feb 2026 | Epoch AI independent |
| 2 | Claude Opus 4.6 | 80.8% | Feb 2026 | Epoch AI independent |
| 3 | DeepSeek V4 Pro (Max) | 80.6% | Feb 2026 | Epoch AI independent |
| 4 | Kimi K2.6 | 80.2% | Feb 2026 | Epoch AI independent |
| 5 | GPT-5.2 | 80.0% | Feb 2026 | Epoch AI independent |
| 6 | Claude Sonnet 4.6 | 79.6% | Feb 2026 | Epoch AI independent |

**Do not use Verified as a frontier discriminator.** OpenAI formally retired this benchmark in February 2026 after an internal audit found 59.4% of hardest unsolved tasks had flawed test designs, and training data contamination is confirmed for all major frontier models. Models scoring 80%+ likely reflect significant recall of training data, not live problem-solving ability.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Score | Date | Scaffold |
|------|-------|-------|------|---------|
| — | Claude Mythos Preview | 77.8% | Apr 29, 2026 | ⚠️ unverified / self-reported |
| — | Claude Opus 4.7 (Adaptive) | 64.3% | Apr 2026 | ⚠️ Anthropic-reported |
| 1 | GPT-5.4 (xHigh) | 59.1 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 2 | Muse Spark | 55.0 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 3 | Claude Opus 4.6 (thinking) | 51.9 ± 3.6% | Apr 2026 | SEAL mini-swe-agent |
| 4 | Gemini 3.1 Pro (thinking) | 46.1 ± 3.6% | Apr 2026 | SEAL |
| 5 | Claude Opus 4.5 | 45.9 ± 3.6% | Mar 2026 | SEAL |
| 6 | Claude Sonnet 4.5 | 43.6 ± 3.6% | Mar 2026 | SEAL |
| 7 | Gemini 3 Pro Preview | 43.3 ± 3.6% | Mar 2026 | SEAL |
| 8 | Claude 4 Sonnet | 42.7 ± 3.6% | Mar 2026 | SEAL |

Scaffold choice inflates scores by 11–12+ points. Labs reporting with custom harnesses (Claude Mythos at 77.8%, Opus 4.7 at 64.3%) consistently exceed SEAL-verified scores for comparable models; treat a ~12-point discount as a rough correction. Ranks 3–8 under SEAL overlap within confidence intervals — statistically indistinguishable.

### SWE-rebench (Nebius — fixed ReAct scaffold, fresh issues)

| Rank | Model | Resolved Rate | Pass@5 | Cost/Problem | Date |
|------|-------|---------------|--------|-------------|------|
| 1 | Claude Opus 4.6 | 65.3% | 70.2% | $1.12 | Apr 24, 2026 |
| 2 | GPT-5.2 (medium) | 64.4% | 73.7% | $0.62 | Apr 2026 |
| 3 | GLM-5 | 62.8% | 70.2% | $0.76 | Apr 2026 |
| 4 | Junie | 62.8% | 68.4% | $1.14 | Apr 2026 |
| 5 | GPT-5.4 (medium) | 62.8% | 70.2% | $0.63 | Apr 2026 |

Contamination-resistant by construction (continuously-updated fresh GitHub issues, fixed harness). The open-source models (GLM-5, Qwen3-Coder-Next) are meaningfully competitive with closed-source at this difficulty tier. GPT-5.2 achieves the best pass@5 relative to cost at $0.62/problem.

### Terminal-Bench 2.0

| Rank | Model | Score | Date | Notes |
|------|-------|-------|------|-------|
| 1 | GPT-5.5 | 82.7% | May 1, 2026 | |
| 2 | Claude Opus 4.7 (Adaptive) | 69.4% | May 1, 2026 | ⚠️ self-reported |
| 3 | MiMo-V2.5-Pro | 68.4% | May 1, 2026 | |
| 4 | DeepSeek V4 Pro (Max) | 67.9% | May 1, 2026 | |
| 5 | Kimi K2.6 | 66.7% | May 1, 2026 | |

GPT-5.5 now leads Terminal-Bench with an 82.7% score, a notable jump from GPT-5.4's 75.1% on May 1. Terminal-Bench v2.0 (released Nov 2025) addressed reproducibility concerns from v1.0. **Note:** UC Berkeley demonstrated that binary wrapper trojans can achieve ~100% on Terminal-Bench without solving any tasks (see Methodology section).

### LiveCodeBench (rolling, contamination-resistant)

**v6 leaderboard (new, limited submissions as of May 1, 2026):**

| Rank | Model | Score (Pass@1) | Date | Provider |
|------|-------|----------------|------|---------|
| 1 | Kimi K2.6 | 89.6% | May 1, 2026 | Moonshot AI |
| 2 | Qwen 3.6 Plus | 87.1% | May 1, 2026 | Alibaba |
| 3 | Kimi K2.5 | 85.0% | May 1, 2026 | Moonshot AI |
| 4 | Claude Opus 4.5 | 84.8% | May 1, 2026 | Anthropic |
| 5 | Qwen 3.5 397B | 83.6% | May 1, 2026 | Alibaba |

**Broader leaderboard (all versions, most recent scores):**

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 |

LiveCodeBench v6 is newly launched with few submissions — Kimi K2.6 leads at 89.6%. Gemini retains the lead across historical versions. LiveCodeBench is the most contamination-resistant mainstream coding benchmark by design (continuously post-cutoff problems).

### HumanEval (saturated — reference only)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Claude Sonnet 4.5 | 97.6% | Apr 28, 2026 |
| 2 | DeepSeek R1 | 97.4% | Apr 28, 2026 |
| 3 | Grok 4 | 97.0% | Apr 28, 2026 |
| 4 | o3 | 97.0% | Apr 28, 2026 |

Average across 75 models: 89.7%. Not a frontier discriminator — all major models exceed 90%. EvalPlus (stricter variant) led by Phi-4 Reasoning at 92.9%.

### Aider Polyglot (multi-language code editing)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Claude Opus 4.5 | 89.4% | Apr 2026 |
| 2 | GPT-5 (high) | 88.0% | Apr 2026 |
| 3 | GPT-5 (medium) | 86.7% | Apr 2026 |
| 4 | O3-Pro (high) | 84.9% | Apr 2026 |
| 5 | Gemini 2.5 Pro Preview | 83.1% | Apr 2026 |

225 Exercism exercises across C++, Go, Java, JavaScript, Python, Rust. Claude Opus 4.5 leads on multi-language editing; GPT-5 dominates ranks 2–5. Average across 22 models: 58.1%.

---

## New Benchmarks & Methodology

### UC Berkeley: 8 Major Benchmarks Exploitable to Near-100% (May 2026)

The most significant methodology story this week. UC Berkeley's RDI lab published "How We Broke Top AI Agent Benchmarks," demonstrating that near-perfect scores are achievable on eight benchmarks without solving any tasks. Exploitation methods by benchmark:

| Benchmark | Exploit Method | Achievable Score |
|-----------|---------------|-----------------|
| Terminal-Bench | Binary wrapper trojans in shared env | ~100% |
| SWE-bench Verified | pytest hook manipulation | ~100% |
| SWE-bench Pro | pytest hook manipulation | ~100% |
| WebArena | Reading task config files | ~100% |
| FieldWorkArena | Validator never checks answers | 100% |
| OSWorld | Downloading gold reference files | 73% |
| GAIA | Publicly available answers + normalization exploit | ~98% |
| CAR-bench | LLM judge prompt injection | 100% |

Seven recurring vulnerability classes: shared agent/eval environments, exposed reference answers, unsafe `eval()`, unfiltered LLM judges, weak string matching, broken evaluation logic, and trusting compromised test output. **This does not imply current leaderboard leaders are exploiting these — but it does mean unverified self-reported scores on these benchmarks carry additional risk.**

### SWE-bench Live (Microsoft, ongoing)
Continuously-updated live benchmark sourcing post-cutoff GitHub issues. Added Windows (PowerShell) and Multi-Language variants in October 2025. Best current option for contamination resistance on real repository tasks, alongside SWE-rebench.

### SWE-bench Multimodal
Adds visual inputs (screenshots, UI mockups, diagrams) to coding tasks. Integrated January 2025. Claude Mythos self-reports 59.0% on this variant (⚠️ unverified).

### OSWorld (Computer Use / GUI Agent)
Top scores as of May 2026: GPT-5.4 leads at 79.2%, Claude Opus 4.6 at 76.9%, Claude Opus 4.5 at 58.1%. OSWorld-Verified is the controlled variant; UC Berkeley demonstrated a 73% exploit via gold reference file downloads.

### TAU²-bench (Tool-Agent-User, dual-control)
Customer service agent benchmark where both agent and user have tools. Released 2025 and tracked on Artificial Analysis. Tests policy adherence and tool use under adversarial user interaction — a distinct capability from repository coding.

---

## Notable Movements

### GPT-5.5 surges to Terminal-Bench lead
GPT-5.5 at 82.7% is a ~7.6 point improvement over GPT-5.4's 75.1% recorded on May 1. This is the sharpest single-day movement on any leaderboard tracked — worth watching for independent confirmation given the UC Berkeley terminal exploit findings.

### Kimi K2.6 emerges across multiple leaderboards
Kimi K2.6 (Moonshot AI, open) now appears in top 5 positions on SWE-bench Verified (80.2%), Terminal-Bench (66.7%), and LiveCodeBench v6 (89.6%). One of the few open-source models with consistent top-tier scores across different benchmark types; notable because most open models excel on one category but not all three.

### Verified zombie persists, Pro shows meaningful spread
Despite OpenAI's February retirement of SWE-bench Verified, labs including Anthropic continue to report Verified scores as primary marketing numbers. The spread on SWE-bench Pro SEAL (59.1% GPT-5.4 vs. 45.9% Claude Opus 4.5 baseline) is real signal; the Verified spread (93.9% Mythos vs. 80.9% Opus 4.5) is not.

### Open source vs. closed gap varies sharply by benchmark type
DeepSeek V4 Pro (open), Kimi K2.6 (open), and GLM-5 (open) are statistically competitive with closed models on SWE-rebench and LiveCodeBench. On SWE-bench Pro (SEAL), the best available open-source result is Qwen 3 32B at approximately 3.4% — a dramatic capability cliff. The open/closed story depends heavily on which benchmark you cite.

### Contamination crisis is now structural, not anecdotal
The UC Berkeley paper, the OpenAI Verified retirement, and the ongoing scaffold inflation studies converge on the same conclusion: static benchmarks with fixed evaluation environments cannot be trusted as sole signals for frontier capability. The practical implication is that only continuously-updated benchmarks (LiveCodeBench, SWE-bench Live, SWE-rebench) and standardized-scaffold evaluations (SEAL) provide defensible signal going forward.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench Pro — SEAL by Scale AI](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Verified — BenchLM.ai](https://benchlm.ai/benchmarks/sweVerified)
- [SWE-bench Pro — BenchLM.ai](https://benchlm.ai/benchmarks/swePro)
- [SWE-bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com/)
- [Terminal-Bench 2.0 — BenchLM.ai](https://benchlm.ai/benchmarks/terminalBench2)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [Terminal-Bench official](https://www.tbench.ai/)
- [Terminal-Bench arXiv paper](https://arxiv.org/html/2601.11868v1)
- [LiveCodeBench v6 — BenchLM.ai](https://benchlm.ai/benchmarks/liveCodeBenchV6)
- [LiveCodeBench official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [HumanEval — llm-stats.com](https://llm-stats.com/benchmarks/humaneval)
- [EvalPlus Leaderboard](https://evalplus.github.io/leaderboard.html)
- [Aider LLM Leaderboards](https://aider.chat/docs/leaderboards/)
- [OSWorld leaderboard](https://os-world.github.io/)
- [UC Berkeley RDI — How We Broke Top AI Agent Benchmarks](https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/)
- [Why SWE-bench Verified no longer measures frontier coding — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [SWE-bench contamination debate — CodeSOTA](https://www.codesota.com/news/swe-bench-contamination-debate)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [SWE-bench-Live (Microsoft)](https://swe-bench-live.github.io/)
- [TAU²-bench arXiv](https://arxiv.org/abs/2506.07982)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [AI Benchmarks Guide 2026 — Kili Technology](https://kili-technology.com/blog/ai-benchmarks-guide-the-top-evaluations-in-2026-and-why-theyre-not-enough)
