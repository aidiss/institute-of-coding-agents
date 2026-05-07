---
title: "Benchmarks — Competitive Evaluation Landscape"
date: 2026-05-07
theater: benchmarks
analyst: ICAI / Claude Opus 4.7
assessment: "GLM-5.1 reframed as the first open-source model to top SWE-bench Pro at 58.4% (self-reported, non-SEAL); Kimi K2.6 holds LiveCodeBench v6 at 89.6%; Berkeley RDI's BenchJack exploit tool surfaces on GitHub as standalone artifact; MiniMax M2.5 audit reaches day 85 with no trajectory release; Aider Polyglot remains Opus 4.5-led at 89.4% with no fresh top movement; SWE-rebench v2 still has no Mythos data point — single most consequential gap in Anthropic's published evaluation set"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-05-07

A quiet day at the top of the leaderboards, but a meaningful one at the foundation. **Berkeley RDI's BenchJack tool now surfaces as a standalone GitHub artifact** ([github.com/benchjack/benchjack](https://github.com/benchjack/benchjack)) — the automated exploit-finder that broke 7 of 8 major agent benchmarks in the April 11 paper is now a reusable hackability scanner that any benchmark maintainer can run on their own harness. That moves the conversation from "this paper showed our benchmarks were exploitable" to "here is the tool you must run before publishing a leaderboard." The headline coding move from the past 30 days remains **GLM-5.1's 58.4% on SWE-bench Pro** (self-reported, April 7 release) — the first open-source model and first Chinese model to top a SWE-bench Pro top-line, on a 754B-parameter MoE designed for 8-hour autonomous coding sessions. Kimi K2.6 still holds LiveCodeBench v6 at 89.6%; Mythos Preview still leads the (retired) SWE-bench Verified at 93.9% and Pro public listing at 77.8% with no SEAL-standardized reproduction. SWE-rebench v2 — the benchmark with structurally hardest contamination resistance and an independent harness — still has zero Anthropic Mythos data points, day 30 of that absence. MiniMax M2.5 audit reaches day 85 with trajectory artifacts still unpublished. The dominant story remains: top-line claims are credible only to the extent that the harness is independently verifiable.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23** (historical reference only)

OpenAI deprecated this benchmark Feb 23, citing confirmed training contamination across all frontier models. The Berkeley RDI paper subsequently demonstrated a 10-line `conftest.py` resolves every Verified instance regardless of model capability. Listed only because vendors continue to cite the score.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% (**self-reported, unverified, retired bench**) | 2026-04-07 |
| 2 | GPT-5.5 | SWE-bench Verified | 88.7% (self-reported) | 2026-04-23 |
| 3 | Claude Opus 4.7 (Adaptive) | SWE-bench Verified | 87.6% (self-reported) | 2026-04-16 |
| 4 | GPT-5.3 Codex (agent) | SWE-bench Verified | 85.0% (self-reported) | 2026-04-15 |
| 5 | Claude Opus 4.5 | SWE-bench Verified | 80.9% (Epoch AI standardized) | 2026-02 |
| 6 | Claude Opus 4.6 | SWE-bench Verified | 80.8% (Epoch AI standardized) | 2026-02 |
| 7 | DeepSeek V4 Pro Max | SWE-bench Verified | 80.6% (Epoch AI standardized) | 2026-02 |
| 8 | Kimi K2.6 | SWE-bench Verified | 80.2% (Epoch AI standardized) | 2026-02 |
| 9 | GPT-5.2 | SWE-bench Verified | 80.0% (Epoch AI standardized) | 2026-02 |
| 10 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (Epoch AI standardized) | 2026-02 |

*Self-reported figures (rows 1–4) use proprietary harnesses; rows 5–10 are Epoch AI standardized (mini-SWE-agent v2.0.0). The ~13 pp gap between standardized and self-reported tops remains consistent with documented scaffold-inflation ranges and with the Berkeley RDI exploit ceiling.*

### SWE-bench Pro (Scale AI SEAL — public set, 731 instances, 250-turn limit)

Scale AI runs SWE-bench Pro under a standardized SWE-agent scaffold. The private codebases are legally inaccessible to model trainers, structurally preventing the contamination problem on Verified. Self-reported entries (rows 1–3) used proprietary harnesses and have not been reproduced under SEAL standardization.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% (**self-reported, non-SEAL**) | 2026-04-07 |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Pro | 64.3% (self-reported) | 2026-04-16 |
| 3 | GPT-5.4 (xHigh) | SWE-bench Pro | 59.1% (**SEAL mini-swe-agent**) | 2026-04 |
| 4 | **GLM-5.1 (Z.ai)** | SWE-bench Pro | **58.4% (self-reported)** | **2026-04-07** |
| 5 | Kimi K2.6 (Moonshot) | SWE-bench Pro | 58.6% (self-reported) | 2026-04 |
| 6 | GPT-5.3-Codex (agent) | SWE-bench Pro | 56.8% (SEAL standardized) | 2026-04 |
| 7 | GPT-5.2-Codex | SWE-bench Pro | 56.4% (SEAL standardized) | 2026-03 |
| 8 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% (**SEAL standardized**) | 2025-12-11 |
| 9 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% (SEAL standardized) | 2025-09-19 |
| 10 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% (SEAL standardized) | 2025-11-26 |

*GLM-5.1's 58.4% is the **first open-source / Chinese model to claim a top-line SWE-bench Pro lead** (Z.ai self-report) and outscored GPT-5.4, Opus 4.6, and Gemini 3.1 Pro on Z.ai's evaluation. Kimi K2.6 sits at the same tier (58.6%). Both remain unverified by Scale AI's SEAL standardized scaffold — the like-for-like comparator (GPT-5.4 xHigh) under SEAL stops at 59.1%, and the Mythos-vs-SEAL gap (~19 pp) is the cleanest current scaffold-inflation signal on Pro.*

### SWE-bench Multilingual (300 tasks across 9 languages — C, C++, Go, Java, JS/TS, PHP, Ruby, Rust, plus pairs)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Multilingual | 87.3% (**self-reported**) | 2026-04-07 |
| — | (24 models tracked; average 63.3%) | | | |

*Multilingual is partially insulated from English/Python contamination but the Berkeley RDI exploit class generalizes across the SWE-bench family. No fresh entries since the May 5 snapshot.*

### SWE-rebench v2 (Nebius — rolling fresh-issue window, 5 runs per model, 128K-context ReAct)

The contamination-resistant SWE-bench variant: each model runs against issues sourced *after* its release date. Independent Nebius harness. New submissions added since the 2026-03-20 snapshot remain GLM-5.1, Gemini 3.1 Pro Preview, Sonnet 4.6, Qwen3.5-397B-A17B, gpt-5.3-codex variants, Qwen3.5-35B-A3B.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%, $1.12/problem) | 2026-03-20 |
| 2 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%, $0.62) | 2026-03-20 |
| 3 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%, $0.76) | 2026-03-20 |
| 4 | GLM-5.1 | SWE-rebench v2 | 62.7% | 2026-04 |
| 5 | GPT-5.4 (medium) | SWE-rebench v2 | 62.8% (pass@5: 70.2%, $0.63) | 2026-03-20 |
| 6 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%, $0.66) | 2026-03-20 |
| — | Claude Sonnet 4.5 | SWE-rebench v2 | pass@5: 55.1% (uniquely solves several instances no other model solves) | 2026-03 |

*Top six clustered within 3 pp on a contamination-resistant fresh-issue benchmark — a saturation signal even where contamination cannot be the explanation. **Mythos Preview still has no SWE-rebench data point**, day 30 of that absence. Anthropic's continued silence on this benchmark — where the Nebius harness is independent and the issues post-date model release — is the single most consequential gap in Mythos's published evaluation set.*

### Terminal-Bench 2.0 (89 CLI tasks; tbench.ai; 39 models tracked)

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | GPT-5.5 | Terminal-Bench 2.0 | 82.7% ±2.1% | 2026-04-23 | Self-reported |
| 2 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% ±1.9% | 2026-04-07 | Self-reported |
| 3 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 4 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| 5 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% ±2.3% | 2026-04-28 | Self-reported |
| 6 | Claude Opus 4.7 (Adaptive) | Terminal-Bench 2.0 | 69.4% | 2026-04-16 | Self-reported |
| 7 | MiMo-V2.5-Pro | Terminal-Bench 2.0 | 68.4% | 2026-04 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Independently verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Independently verified** |

*Terminal-Bench Hard (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8% — ~24 pp below self-reported leaderboard tops. **Berkeley RDI flag:** Terminal-Bench was one of the 7 benchmarks broken to ~100% via a fake `curl` wrapper; 82 of 89 tasks fetch `uv` from the internet at verification time, creating the exploit dependency chain. Self-reported scores here should be read with that exploit ceiling in mind.*

### LiveCodeBench v6 (contamination-resistant competitive programming; 1,055 problems; rolling)

| Rank | Agent | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | **Kimi K2.6 (Moonshot AI)** | LiveCodeBench v6 | **89.6%** | 2026-04-20 (released) |
| 2 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-04-02 |
| 3 | Qwen3.6 Plus (Alibaba) | LiveCodeBench v6 | 87.1% | 2026-04 |
| 4 | Step-3.5-Flash (StepFun) | LiveCodeBench v6 | 86.4% | 2026-04 |
| 5 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | 85.0% | 2026-04 |
| 6 | GLM-4.7 (Zhipu AI) | LiveCodeBench v6 | 84.9% | 2026-04 |
| 7 | Qwen3.5-397B-A17B (Alibaba) | LiveCodeBench v6 | 83.6% | 2026-04 |
| 8 | Kimi K2-Thinking-0905 (Moonshot) | LiveCodeBench v6 | 83.1% | 2025-09 |
| 9 | GLM-4.6 (Zhipu AI) | LiveCodeBench v6 | 82.8% | late 2025 |
| 10 | GPT OSS 120B High (OpenAI) | LiveCodeBench v6 | 81.9% | 2026-04 |

*45 models on the v6 leaderboard. Kimi K2.6 holds the lead at 89.6% Pass@1. Top 9 slots remain entirely Chinese labs. GPT OSS 120B High is the highest-ranked Western entry at #10. **No closed Western frontier model (Mythos, GPT-5.5, Opus 4.7, Gemini 3.1 Pro) appears in the top 10** on this contamination-resistant benchmark. The pattern has now been stable for three consecutive months — durable structural inversion versus the SWE-bench Verified narrative.*

### Aider Polyglot (225 Exercism exercises across C++, Go, Java, JS, Python, Rust)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | Aider Polyglot | 89.4% (Anthropic-reported) | late 2025 |
| 2 | GPT-5 (high) | Aider Polyglot | 88.0% | 2025 |
| — | DeepSeek V3.2-Exp | Aider Polyglot | 74.2% at $1.30/run (22× cheaper than GPT-5) | early 2026 |

*No new top-line entries in May. Two-attempt protocol with test feedback after first attempt. Used by SWE-bench monthly aggregators (marc0.dev, llm-stats) as part of standardized cross-benchmark reporting alongside SWE-bench Verified, Terminal-Bench 2.0, and SWE-bench Pro.*

### ARC-AGI-2 (abstract reasoning; independently verified)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | GPT-5.5 | ARC-AGI-2 | 85.0% | 2026-04-28 |
| 2 | GPT-5.4 Pro | ARC-AGI-2 | 83.3% | 2026-04 |
| 3 | Gemini 3.1 Pro | ARC-AGI-2 | 77.1% | 2026-04 |
| 4 | Claude Opus 4.6 | ARC-AGI-2 | 68.8% | 2026-04 |

### ARC-AGI-3 (interactive, instruction-free; 135 environments)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| — | All frontier systems | ARC-AGI-3 | <1% | as of 2026-05-07 |
| — | Symbolica Agentica SDK | ARC-AGI-3 | 36% (~$1,005 compute, 113/182 levels) | 2026-04 (methodology unpublished) |
| — | Human baseline | ARC-AGI-3 | 100% | — |

*$2M total prize pool. Milestone #1 ($25K/$10K/$2.5K) closes 2026-06-30; $700K Grand Prize for first 100% on private set. No frontier breakthrough since the March 25 launch.*

### CodeArena (preference-based Elo; 71 models, ~280K votes)

| Rank | Agent | Benchmark | Score (Elo) | Date |
|------|-------|-----------|-------------|------|
| 1 | claude-opus-4-7-thinking | CodeArena (text-coding) | 1567 | 2026-05 |
| — | Recent additions: mimo-v2-omni, grok-4.3, trinity-large-thinking | | | |

*CodeArena measures preference, not correctness. Boba (1126) led an older snapshot; Opus 4.7-thinking is now substantially ahead on the code-specific board.*

### HumanEval (164 Python problems — saturated; not for frontier comparison)

Top 5 compressed within 1.6 pp (96.0%–97.6%). 0 of 66 tracked models verified. Effectively retired for frontier discrimination — use HumanEval Pro, BigCodeBench, or LiveCodeBench v6 instead.

---

## New Benchmarks & Methodology

**BenchJack — public release on GitHub** ([github.com/benchjack/benchjack](https://github.com/benchjack/benchjack))
The Berkeley RDI exploit-finder is now a standalone open-source artifact. BenchJack operates in two phases: it maps how a benchmark's evaluation mechanism works, then constructs the most minimal exploit that reaches a perfect score. The April 11 paper used it to break 7 of 8 major agent benchmarks; the public tool means any benchmark maintainer can run it on their own harness *before* publication. This is the most consequential infrastructure development in benchmark methodology since SEAL standardization. Expected effect over the next 60 days: benchmarks that don't show a BenchJack audit pass become harder to cite credibly for frontier comparison.

**o11y-bench** (Grafana Labs, GrafanaCON Barcelona 2026-04-21)
Open-source observability-agent benchmark on Harbor. 63 tasks across PromQL, LogQL, TraceQL, multi-step incident investigation, and dashboard editing — run against a real Grafana stack (Prometheus, Loki, Tempo). Headline metrics are **Pass^3** (consistency across 3 runs) and **Pass@3** (best-of-three). Initial run across 29 model variants: **Claude Opus 4.7 (reasoning off)** leads on consistency; **Qwen 3.6 Plus** is the top open-source. Dashboarding tasks hardest. The Pass^3 choice matters — it's the production-reliability property nearly absent from Pass@1 leaderboards.

**ClawBench** (production-website agent benchmark)
153 tasks across 144 live production websites in 15 categories: completing purchases, booking appointments, submitting job applications. Operates on real production sites and intercepts only the final submission request, keeping evaluation safe without real-world side effects. Best frontier-model score: **Claude Sonnet 4.6 at 33.3%** — substantially harder than sandboxed agent benchmarks like WebArena.

**FeatureBench** (LiberCoders, ICLR 2026; fast split released 2026-03-27)
200 evaluation tasks, 3,825 executable environments across 24 OSS repos. New 100-instance fast split requires no GPU. Best frontier model (Opus 4.5) scores 11.0% — vs. 74.4% on SWE-bench Verified. Largest published gap between patch-fixing and feature engineering on any current benchmark.

**SWE-bench Live** (Microsoft, NeurIPS 2025)
Multi-language since 2026-01-10 (C, C++, C#, Python, Java, Go, JS/TS, Rust). 50 new verified issues added monthly. Windows/PowerShell variant targeted for August 2026.

**SWE-rebench v2 methodology shift** (Nebius, Feb 2026 — still current standard)
Demonstrations removed; 80-step cap removed. Models now run with 128K-context ReAct scaffold, 5 runs each. The cap removal matters: prior runs occasionally hit 80-step truncation on long-horizon tasks.

---

## Notable Movements

**BenchJack public release recasts the harness conversation.** The April 11 RDI paper showed exploits exist; the May surfacing of BenchJack as a reusable scanner means benchmark maintainers now have a tool to find their own harness vulnerabilities before publication. Expect a wave of harness-hardening commits and audit notes on benchmark repos over the next 60 days. Self-reported leaderboard tops without a BenchJack pass should be considered presumptively suspect on the harness-exploit dimension. This is the single most important methodology development of the past 30 days, and it lands on top of an already-fragile contamination story.

**GLM-5.1 reframes the SWE-bench Pro narrative as Chinese open-source-led on self-report.** Z.ai's 754B-parameter MoE claims 58.4% on SWE-bench Pro (self-reported, April 7) — first open-source model to claim a Pro top-line, first Chinese model. Kimi K2.6 sits at 58.6% on the same self-report basis. The like-for-like SEAL-standardized comparator (GPT-5.4 xHigh, 59.1%) is essentially identical, suggesting GLM-5.1 may genuinely be at frontier-tier on Pro — but Scale AI SEAL reproduction has not yet occurred. Until it does, this is "credible signal pending verification" rather than confirmed lead. The architecture (8-hour autonomous coding sessions) is unusually well-aligned with what Pro actually measures.

**Kimi K2.6 holds LiveCodeBench v6 at 89.6%.** No new top-line movement on the contamination-resistant coding leaderboard since the May 5 takeover from Seed 2.0 Pro. The structural inversion — top 9 entirely Chinese labs, no closed Western frontier model in the top 10 — is now stable across three consecutive months. K2.6 was released April 20; the leaderboard position has held for ~17 days under continuous fresh-problem refresh.

**MiniMax M2.5 audit reaches day 85.** Container images, raw trajectories, and evaluation logs remain unpublished since the 2026-02-12 announcement. OpenAI's audit of 27.6% of tasks documented flawed tests and training contamination; academic groups quantified 6.2 pp inflation. MiniMax has continued to defend its methodology while withholding artifacts. The duration of the silence is itself the signal — at three months without trajectory release, the original 80.2% claim should be treated as withdrawn for practical purposes.

**Anthropic's SWE-rebench gap is now structural, not transient.** Day 30 with no Mythos data point on the contamination-resistant Nebius leaderboard. Mythos's published evaluation set covers retired benchmarks (Verified) and self-reported non-SEAL Pro / Multilingual scores — not the benchmark where contamination is structurally hardest and the harness is independent. Until Mythos appears on SWE-rebench, the 93.9%/77.8%/87.3% trio is best read as ceiling claims rather than capability measurements. The longer the absence, the louder the signal.

**Aider Polyglot is quiet at the top.** Opus 4.5 still holds at 89.4%; GPT-5 (high) at 88.0%. No new top-line entries from the GPT-5.5, Mythos, or Opus 4.7 cycle. DeepSeek V3.2-Exp's 74.2% at $1.30/run remains the cost-efficiency benchmark. This is one of the cleanest "no movement" signals on the coding leaderboards — frontier labs may be deprioritizing Aider Polyglot in favor of Pro / multilingual / live-issue evaluations.

**Open-source scaffold gap closes on coding evals, widens on agent evals.** Live-SWE-agent (open-source, Opus 4.5) reached 79.2% on Verified. On Terminal-Bench, however, the verified open Claude Code (Opus 4.6) scaffold sits at 58.0% — 24 pp below proprietary self-reports. Open-source closes the gap on patch-fix tasks but not on agentic CLI sessions where harness sophistication dominates.

**HumanEval remains effectively dead for frontier comparison.** Top 5 within 1.6 pp; zero verified scores; 89.6% average across all 66 tracked models. Still cited in vendor announcements out of habit. Discriminative value is gone.

---

## Methodological Disputes & Contamination Concerns

The dominant story is now BenchJack going public. The April 11 RDI paper's findings are no longer abstract: every benchmark maintainer can run the scanner on their own harness, and every reader can ask "has this leaderboard been BenchJack-audited?" Combined with SEAL standardization on Pro, Epoch AI standardization on Verified (now retired), and SWE-rebench v2's independent harness, the field is converging on three credibility tiers:

1. **Tier 1 (independent harness + contamination-resistant + harness-audited):** SWE-rebench v2, LiveCodeBench v6, ARC-AGI-2/3, FrontierMath. These are the surviving benchmarks where score movements carry signal.
2. **Tier 2 (independent harness, but contamination uncertain):** SWE-bench Pro under SEAL standardization; Aider Polyglot; Terminal-Bench Hard via Artificial Analysis. Useful for relative comparison but not absolute capability claims.
3. **Tier 3 (self-reported with proprietary harness):** Vendor blog post numbers on Verified, Pro, Multilingual, Terminal-Bench 2.0. Should be presumptively read as ceiling claims unless reproduced.

Mythos Preview's full evaluation set sits in Tier 3. GLM-5.1's Pro claim sits in Tier 3 but with strong like-for-like alignment to Tier 2 SEAL data. Kimi K2.6's LiveCodeBench v6 lead is Tier 1. The interpretation work matters more than the headline score.

---

## Sources

- [SWE-bench Pro leaderboard — Scale AI SEAL (public)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-bench Pro analysis — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-bench Pro — llm-stats](https://llm-stats.com/benchmarks/swe-bench-pro)
- [SWE-bench Pro — BenchLM (30 LLM scores)](https://benchlm.ai/benchmarks/swePro)
- [SWE-bench Multilingual — official](https://www.swebench.com/multilingual-leaderboard.html)
- [SWE-bench Multilingual — llm-stats](https://llm-stats.com/benchmarks/swe-bench-multilingual)
- [SWE-rebench leaderboard](https://swe-rebench.com/)
- [SWE-rebench leaderboard dataset — HuggingFace](https://huggingface.co/datasets/nebius/SWE-rebench-leaderboard)
- [SWE-bench Verified — llm-stats](https://llm-stats.com/benchmarks/swe-bench-verified)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-bench Leaderboard May 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [SWE-bench Live — Microsoft](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench 2.0 — llm-stats](https://llm-stats.com/benchmarks/terminal-bench-2)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench v6 — llm-stats](https://llm-stats.com/benchmarks/livecodebench-v6)
- [Aider Polyglot leaderboard](https://aider.chat/docs/leaderboards/)
- [Aider Polyglot — Epoch AI](https://epoch.ai/benchmarks/aider-polyglot)
- [Aider Polyglot — llm-stats](https://llm-stats.com/benchmarks/aider-polyglot)
- [ARC-AGI-3 leaderboard](https://three.arcprize.org/leaderboard)
- [ARC Prize 2026 — ARC-AGI-3 Competition](https://arcprize.org/competitions/2026/arc-agi-3)
- [Berkeley RDI — How We Broke Top AI Agent Benchmarks](https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/)
- [BenchJack — GitHub](https://github.com/benchjack/benchjack)
- [Berkeley team broke 8 major AI benchmarks — RDWorld Online](https://www.rdworldonline.com/how-a-berkeley-team-broke-8-major-ai-benchmarks-six-of-them-hit-100-without-solving-a-single-task/)
- [Pebblous — AI Agent Benchmark Trust Crisis](https://blog.pebblous.ai/report/ai-agent-benchmark-trust/en/)
- [o11y-bench — Grafana Labs blog](https://grafana.com/blog/o11y-bench-open-benchmark-for-observability-agents/)
- [o11y-bench — GitHub](https://github.com/grafana/o11y-bench)
- [GLM-5.1 — Z.AI Developer Documentation](https://docs.z.ai/guides/llm/glm-5.1)
- [GLM-5.1 — Hugging Face](https://huggingface.co/zai-org/GLM-5.1)
- [GLM-5.1 — llm-stats](https://llm-stats.com/models/glm-5.1)
- [Kimi K2.6 — Moonshot tech blog](https://www.kimi.com/blog/kimi-k2-6)
- [Kimi K2.6 vs Claude Opus 4.6 — Hyperstack](https://www.hyperstack.cloud/blog/thought-leadership/kimi-k2.6-benchmarks)
- [Claude Opus 4.7 — Anthropic news](https://www.anthropic.com/news/claude-opus-4-7)
- [Claude Opus 4.7 benchmarks — Vellum](https://www.vellum.ai/blog/claude-opus-4-7-benchmarks-explained)
- [Claude Mythos Preview — Anthropic Red](https://red.anthropic.com/2026/mythos-preview/)
- [Claude Mythos Preview — llm-stats](https://llm-stats.com/models/claude-mythos-preview)
- [GPT-5.5 — OpenAI announcement](https://openai.com/index/introducing-gpt-5-5/)
- [GPT-5.5 — MarkTechPost coverage](https://www.marktechpost.com/2026/04/23/openai-releases-gpt-5-5-a-fully-retrained-agentic-model-that-scores-82-7-on-terminal-bench-2-0-and-84-9-on-gdpval/)
- [GPT-5.5 vs Claude Opus 4.7 — Digital Applied](https://www.digitalapplied.com/blog/gpt-5-5-vs-claude-opus-4-7-frontier-comparison)
- [Best AI Models May 2026 — BuildFastWithAI](https://www.buildfastwithai.com/blogs/best-ai-models-may-2026-leaderboard)
- [State of AI: May 2026 — Air Street Press](https://press.airstreet.com/p/state-of-ai-may-2026)
- [LLM News May 2026 — llm-stats](https://llm-stats.com/ai-news)
- [MiniMax M2.5 fraud debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [FrontierMath Tier 4 — Epoch AI](https://epoch.ai/benchmarks/frontiermath-tier-4)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [arena.ai code leaderboard](https://arena.ai/leaderboard/code)
