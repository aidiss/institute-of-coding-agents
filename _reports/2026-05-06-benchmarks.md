---
title: "Benchmarks — Competitive Evaluation Landscape"
date: 2026-05-06
theater: benchmarks
analyst: ICAI / Claude Opus 4.7
assessment: "Kimi K2.6 takes LiveCodeBench v6 lead at 89.6%, displacing Seed 2.0 Pro; Claude Mythos Preview's 87.3% on SWE-bench Multilingual confirmed; Berkeley RDI's April exploit paper resurfaces as the dominant methodology question — 7 of 8 major agent benchmarks were broken to ~100% with trivial harness exploits; MiniMax M2.5 audit reaches day 84 with no trajectory release; SWE-bench Verified retired and Mythos 93.9% remains uninterpretable"
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-05-06

The leaderboard story today is not at the top — it is at the foundation. UC Berkeley's RDI paper, which has continued to circulate since its April 11 release, demonstrated that 7 of 8 major agent benchmarks (SWE-bench Verified, Terminal-Bench, WebArena, GAIA, FieldWorkArena, CAR-bench, OSWorld partially, plus the SWE-bench family) can be exploited to ~100% scores via trivial harness tricks: a 10-line `conftest.py`, a fake `curl` wrapper, navigating to a `file://` URL to read the gold answer. IQuest-Coder-V1's claimed 81.4% on SWE-bench was already shown to derive 24.4% of trajectories from `git log` answer-copying. This is the dominant context for any frontier benchmark claim made in the last 30 days, including Anthropic's. Today's only fresh top-line movement: **Kimi K2.6 takes LiveCodeBench v6 at 89.6% Pass@1**, displacing Seed 2.0 Pro (87.8%) — a Chinese-lab swap at the top of the most contamination-resistant coding eval in active use. Claude Mythos Preview's 87.3% on SWE-bench Multilingual is now showing on llm-stats with 24 models tracked. SWE-rebench v2 saw new submissions of GPT-5.4-medium, Gemini 3.1 Pro Preview, Sonnet 4.6, and Qwen3.5-397B-A17B since the March 20 snapshot — top still Opus 4.6 at 65.3%. ARC-AGI-3 is still <1% across all frontier systems.

---

## Leaderboard

### SWE-bench Verified — **RETIRED 2026-02-23** (historical reference only)

Confirmed contamination across all frontier models. Claude Mythos Preview's 93.9% (self-reported, 2026-04-07) is structurally uninterpretable: the benchmark is retired *and* the Berkeley RDI paper showed a 10-line `conftest.py` resolves every Verified instance regardless of model capability. Listed only because vendors continue to cite it.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Verified | 93.9% (**self-reported, unverified, retired bench**) | 2026-04-07 |
| 2 | GPT-5.5 | SWE-bench Verified | 88.7% (self-reported) | 2026-04-23 |
| 3 | Claude Opus 4.7 (Adaptive) | SWE-bench Verified | 87.6% (self-reported) | 2026-04-20 |
| 4 | GPT-5.3 Codex (agent) | SWE-bench Verified | 85.0% (self-reported) | 2026-04-15 |
| 5 | Claude Opus 4.5 | SWE-bench Verified | 80.9% (Epoch AI standardized) | 2026-02 |
| 6 | Claude Opus 4.6 | SWE-bench Verified | 80.8% (Epoch AI standardized) | 2026-02 |
| 7 | DeepSeek V4 Pro Max | SWE-bench Verified | 80.6% (Epoch AI standardized) | 2026-02 |
| 8 | Kimi K2.6 | SWE-bench Verified | 80.2% (Epoch AI standardized) | 2026-02 |
| 9 | GPT-5.2 | SWE-bench Verified | 80.0% (Epoch AI standardized) | 2026-02 |
| 10 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% (Epoch AI standardized) | 2026-02 |

*Top-4 self-reported figures use proprietary harnesses; rows 5–10 are Epoch AI standardized (mini-SWE-agent v2.0.0). The ~13 pp gap between standardized and self-reported tops is consistent with documented scaffold-inflation ranges and with the Berkeley RDI exploit ceiling.*

### SWE-bench Pro (Scale AI SEAL — public set, 731 instances, 250-turn limit)

Scale AI runs SWE-bench Pro under a standardized SWE-agent scaffold; private codebases are legally inaccessible to model trainers, structurally preventing the contamination problem on Verified. Self-reported entries (rows 1–3) used proprietary harnesses and have not been reproduced under SEAL standardization.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Pro | 77.8% (**self-reported, non-SEAL harness**) | 2026-04-07 |
| 2 | Claude Opus 4.7 (Adaptive) | SWE-bench Pro | 64.3% (self-reported) | 2026-04-20 |
| 3 | Kimi K2.6 | SWE-bench Pro | 58.6% (self-reported) | 2026-04 |
| 4 | GPT-5.4 (xHigh) | SWE-bench Pro | 59.1% (**SEAL mini-swe-agent**) | 2026-04 |
| 5 | GPT-5.3-Codex (agent) | SWE-bench Pro | 56.8% (SEAL standardized) | 2026-04 |
| 6 | GPT-5.2-Codex | SWE-bench Pro | 56.4% (SEAL standardized) | 2026-03 |
| 7 | Claude Opus 4.5 | SWE-bench Pro | 45.9% ±3.60% (**SEAL standardized**) | 2025-12-11 |
| 8 | Claude Sonnet 4.5 | SWE-bench Pro | 43.6% ±3.60% (SEAL standardized) | 2025-09-19 |
| 9 | Gemini 3 Pro Preview | SWE-bench Pro | 43.3% ±3.60% (SEAL standardized) | 2025-11-26 |
| 10 | GPT-5.2 Codex | SWE-bench Pro | 41.0% ±3.57% (SEAL standardized) | 2026-01-27 |

*Average across 30 evaluated models on llm-stats: 56.6%. Mythos's 77.8% (self-reported, non-SEAL) versus the SEAL-standardized GPT-5.4 xHigh at 59.1% is the cleanest current scaffold-inflation signal — ~19 pp gap on the same benchmark with a like-tier capability comparator. SEAL reproduction of Mythos still pending.*

### SWE-bench Multilingual (300 tasks across 9 languages — C, C++, Go, Java, JS/TS, PHP, Ruby, Rust, plus pairs)

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Mythos Preview | SWE-bench Multilingual | 87.3% (**self-reported**) | 2026-04-07 |
| — | (24 models tracked; average 63.3%) | | | |

*llm-stats lists 24 evaluated models on Multilingual; Mythos leads. Self-reported figures dominate. Multilingual is partially insulated from English/Python contamination but the Berkeley RDI exploit class generalizes.*

### SWE-rebench v2 (Nebius — rolling fresh-issue window, 5 runs per model, 128K-context ReAct)

The contamination-resistant SWE-bench variant: each model runs against issues sourced *after* its release date. Methodology updated Feb 2026 to remove demonstrations and the 80-step limit. New submissions added since the 2026-03-20 snapshot: gpt-5.4-2026-03-05-medium, Gemini 3.1 Pro Preview, Claude Sonnet 4.6, Qwen3.5-397B-A17B, gpt-5.3-codex-xhigh, gpt-5.3-codex, Qwen3.5-35B-A3B.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 | SWE-rebench v2 | 65.3% (pass@5: 70.2%, $1.12/problem) | 2026-03-20 |
| 2 | GLM-5 | SWE-rebench v2 | 62.8% (pass@5: 70.2%, $0.76) | 2026-03-20 |
| 3 | GLM-5.1 | SWE-rebench v2 | 62.7% | 2026-04 (new) |
| 4 | GPT-5.2 (medium) | SWE-rebench v2 | 64.4% (pass@5: 73.7%, $0.62) | 2026-03-20 |
| 5 | GPT-5.4 (medium) | SWE-rebench v2 | 62.8% (pass@5: 70.2%, $0.63) | 2026-03-20 |
| 6 | Gemini 3.1 Pro Preview | SWE-rebench v2 | 62.3% (pass@5: 75.4%, $0.66) | 2026-03-20 |

*Top six clustered within 3 pp — saturation signal even on contamination-resistant fresh issues. Still no Mythos submission; the absence of a SWE-rebench data point is the most consequential gap in Anthropic's published evaluation set. GLM-5.1 added since last snapshot.*

### Terminal-Bench 2.0 (89 CLI tasks; tbench.ai; 39 models tracked)

| Rank | Agent | Benchmark | Score | Date | Verified? |
|------|-------|-----------|-------|------|-----------|
| 1 | GPT-5.5 | Terminal-Bench 2.0 | 82.7% ±2.1% | 2026-05-01 | Self-reported |
| 2 | Claude Mythos Preview | Terminal-Bench 2.0 | 82.0% ±1.9% | 2026-04-07 | Self-reported |
| 3 | ForgeCode (Claude Opus 4.6) | Terminal-Bench 2.0 | 81.8% ±1.7% | 2026-03-12 | Self-reported |
| 4 | TongAgents (Gemini 3.1 Pro) | Terminal-Bench 2.0 | 80.2% ±2.6% | 2026-03-13 | Self-reported |
| 5 | GPT-5.3 Codex | Terminal-Bench 2.0 | 77.3% ±2.3% | 2026-04-28 | Self-reported |
| 6 | Claude Opus 4.7 (Adaptive) | Terminal-Bench 2.0 | 69.4% | 2026-04-20 | Self-reported |
| 7 | MiMo-V2.5-Pro | Terminal-Bench 2.0 | 68.4% | 2026-04 | Self-reported |
| — | Simple Codex (GPT-5.3-Codex) | Terminal-Bench 2.0 | 75.1% ±2.4% | 2026-03 | **Independently verified** |
| — | Claude Code (Opus 4.6) | Terminal-Bench 2.0 | 58.0% ±2.9% | 2026-03 | **Independently verified** |

*Terminal-Bench Hard (Artificial Analysis, independent): GPT-5.4 57.6%, Gemini 3.1 Pro 53.8% — ~24 pp below self-reported leaderboard tops. **Berkeley RDI flag:** Terminal-Bench was one of the 7 benchmarks broken to ~100% via a fake `curl` wrapper. Self-reported scores here should be read with that exploit ceiling in mind.*

### LiveCodeBench v6 (contamination-resistant competitive programming; 1,055 problems; rolling)

| Rank | Agent | Benchmark | Score (Pass@1) | Date |
|------|-------|-----------|----------------|------|
| 1 | **Kimi K2.6 (Moonshot AI)** | LiveCodeBench v6 | **89.6%** | 2026-05 (**new lead**) |
| 2 | Seed 2.0 Pro (ByteDance) | LiveCodeBench v6 | 87.8% | 2026-04-02 |
| 3 | Qwen3.6 Plus (Alibaba) | LiveCodeBench v6 | 87.1% | 2026-04 |
| 4 | Step-3.5-Flash (StepFun) | LiveCodeBench v6 | 86.4% | 2026-04 |
| 5 | Kimi K2.5 (Moonshot AI) | LiveCodeBench v6 | 85.0% | 2026-04 |
| 6 | GLM-4.7 (Zhipu AI) | LiveCodeBench v6 | 84.9% | 2026-04 |
| 7 | Qwen3.5-397B-A17B (Alibaba) | LiveCodeBench v6 | 83.6% | 2026-04 |
| 8 | Kimi K2-Thinking-0905 (Moonshot) | LiveCodeBench v6 | 83.1% | 2025-09 |
| 9 | GLM-4.6 (Zhipu AI) | LiveCodeBench v6 | 82.8% | late 2025 |
| 10 | GPT OSS 120B High (OpenAI) | LiveCodeBench v6 | 81.9% | 2026-04 |

*45 models on the v6 leaderboard. **Kimi K2.6 is the new top entry, displacing Seed 2.0 Pro by 1.8 pp.** Top 9 slots are entirely Chinese labs. GPT OSS 120B High is the highest-ranked Western entry at #10. No Anthropic frontier model appears in the top 10 on this contamination-resistant benchmark — a persistent inversion of the SWE-bench Verified narrative that has now been stable for three months.*

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
| — | All frontier systems | ARC-AGI-3 | <1% | as of 2026-05 |
| — | Symbolica Agentica SDK | ARC-AGI-3 | 36% (~$1,005 compute, 113/182 levels) | 2026-04 (methodology unpublished) |
| — | Human baseline | ARC-AGI-3 | 100% | — |

*Milestone #1 prize ($25K/$10K/$2.5K) closes 2026-06-30. No frontier breakthrough since the launch.*

### CodeArena (preference-based Elo; 71 models, ~280K votes as of 2026-05-04)

| Rank | Agent | Benchmark | Score (Elo) | Date |
|------|-------|-----------|-------------|------|
| 1 | claude-opus-4-7-thinking | CodeArena (text-coding) | 1567 | 2026-05 |
| — | Recent additions (May): mimo-v2-omni, grok-4.3, trinity-large-thinking | | | |

*CodeArena measures preference, not correctness. High Elo here does not translate to task resolution rates. Note that older snapshots cited Boba (1126) as leader; the newer "thinking" variant of Opus 4.7 has since taken the top with a substantially higher Elo on the code-specific board.*

### HumanEval (164 Python problems — saturated; not for frontier comparison)

Top 5 compressed within 1.6 pp (96.0%–97.6%). 0 of 66 tracked models verified. Effectively retired for frontier discrimination — use HumanEval Pro, BigCodeBench, or LiveCodeBench v6 instead.

---

## New Benchmarks & Methodology

**o11y-bench** (Grafana Labs, announced GrafanaCON Barcelona, 2026-04-21)
Open-source observability-agent benchmark built on Harbor. 63 tasks across PromQL queries, LogQL, TraceQL, multi-step incident investigations, and dashboard editing — run against a real Grafana stack with Prometheus, Loki, and Tempo. Headline metrics are Pass^3 (consistency across three runs) and Pass@3 (best-of-three). Initial run across 29 model variants: **Claude Opus 4.7 (reasoning off) leads on consistency; Qwen 3.6 Plus is the top open-source model.** Dashboarding tasks are hardest. The Pass^3 metric is a notable methodology choice — it explicitly rewards reliability over single-shot success, which is the property that matters for production agents but is nearly absent from Pass@1 leaderboards.

**Berkeley RDI exploit study** (released 2026-04-11, continues to circulate)
A single automated agent achieved near-perfect scores on 7 of 8 major agent benchmarks without solving any task. Documented exploits:
- SWE-bench Verified: 10-line `conftest.py` patches every test
- Terminal-Bench: fake `curl` wrapper returns canned outputs for all 89 tasks
- WebArena: navigate Chromium to `file://` URL of task config to read gold answers (~100% on 812 tasks)
- OSWorld partially exploited (73%); GAIA, FieldWorkArena, CAR-bench fully exploited
- IQuest-Coder-V1's claimed 81.4% on SWE-bench: 24.4% of trajectories were `git log` answer-copying

This is the most consequential methodology development of the past month. Every leaderboard top above row 4 should be read against this exploit ceiling unless the harness is independently audited and sandboxed.

**ARC-AGI-3 Competition** (ARC Prize Foundation, ongoing through 2026)
$2M prize pool; Milestone #1 (June 30, 2026) — $25K / $10K / $2.5K. Frontier systems still <1%.

**FeatureBench** (LiberCoders, ICLR 2026 — fast split released 2026-03-27)
200 evaluation tasks, 3,825 executable environments across 24 OSS repos. New 100-instance fast split requires no GPU and is optimized for rapid evaluation. Best frontier model (Opus 4.5) scores 11.0% — vs. 74.4% on SWE-bench Verified. Largest published gap between patch-fixing and feature engineering on any current benchmark.

**SWE-rebench v2 methodology shift** (Nebius, Feb 2026)
Demonstrations removed; 80-step cap removed. Models now run with 128K-context ReAct scaffold, 5 runs each. The cap removal matters: prior runs occasionally hit 80-step truncation on long-horizon tasks, depressing scores for newer models that handle longer contexts.

**SWE-bench Live** (Microsoft, NeurIPS 2025)
Multi-language since 2026-01-10 (C, C++, C#, Python, Java, Go, JS/TS, Rust). 50 new verified issues added monthly. Windows/PowerShell variant targeted for August 2026.

---

## Notable Movements

**Kimi K2.6 takes the LiveCodeBench v6 top at 89.6%, displacing Seed 2.0 Pro.** This is the only fresh top-line move on the major benchmarks since yesterday. K2.6 also self-reports 58.6% on SWE-bench Pro and was Epoch-standardized at 80.2% on Verified back in February. The Moonshot/ByteDance lead-trade at the top of LiveCodeBench is the second swap in three months on this benchmark — competition among Chinese labs at the contamination-resistant frontier is meaningfully tighter than the Western frontier on contaminated benchmarks.

**Berkeley RDI's exploit research is the dominant methodology story.** Every self-reported top-4 entry on SWE-bench Verified, Terminal-Bench 2.0, WebArena, GAIA, and others is now suspect by default unless the lab can produce trajectory data or independent harness audit. The Mythos system card claims memorization-detection was run; the Anthropic claim that gains hold across contamination-filter thresholds is meaningful but does not address the harness-exploit class. SEAL-standardized scores (SWE-bench Pro), Epoch-standardized scores (SWE-bench Verified), and SWE-rebench v2 are the surviving credible signals. Mythos has not yet been reproduced under any of these.

**MiniMax M2.5 audit reaches day 84.** Container images, raw trajectories, and evaluation logs remain unpublished since the 2026-02-12 announcement. OpenAI's audit of 27.6% of tasks documented flawed tests and training contamination; academic groups quantified 6.2 pp inflation. MiniMax has continued to defend its methodology while withholding artifacts. All MiniMax entries should be treated as unverified pending disclosure. The duration of the silence is itself the signal.

**Anthropic still has no SWE-rebench data point.** This remains the single most consequential gap in Mythos's published evaluation set. SWE-rebench is the benchmark where contamination is structurally hardest (rolling, post-release issues) and the harness is independent (Nebius). Until Mythos appears on this leaderboard, the 93.9% Verified and 77.8% Pro figures are best read as ceiling claims rather than capability measurements.

**LiveCodeBench v6 top 9 are entirely Chinese labs.** The contamination-resistant landscape is now structurally inverted from the contaminated/self-reported leaderboards. K2.6's lead position confirms the durability of the pattern: Western labs do not appear in the top 10 on the benchmark most resistant to gaming.

**Open-source scaffold gap is closing on coding evals but widening on agent evals.** Live-SWE-agent (open-source, Opus 4.5) reached 79.2% on Verified. On Terminal-Bench, however, the verified open Claude Code (Opus 4.6) scaffold sits at 58.0% — 24 pp below proprietary self-reports. The picture: open-source closes scaffold gap on patch-fix tasks but not on agentic CLI sessions, where harness sophistication matters more.

**HumanEval is effectively dead for frontier comparison.** Top 5 within 1.6 pp; zero verified scores; 89.6% average across all 66 tracked models. Still cited in vendor announcements out of habit, but the discriminative value is gone.

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
- [Terminal-Bench 2.0 leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench 2.0 — llm-stats](https://llm-stats.com/benchmarks/terminal-bench-2)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench v6 — official leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench v6 — llm-stats](https://llm-stats.com/benchmarks/livecodebench-v6)
- [LiveCodeBench v6 — Kaggle](https://www.kaggle.com/benchmarks/open-benchmarks/livecodebench-release-v6)
- [ARC-AGI-3 leaderboard](https://three.arcprize.org/leaderboard)
- [ARC-AGI-3 — Analyzing GPT-5.5 & Opus 4.7](https://arcprize.org/blog/arc-agi-3-gpt-5-5-opus-4-7-analysis)
- [ARC Prize 2026 — ARC-AGI-3 Competition](https://arcprize.org/competitions/2026/arc-agi-3)
- [Berkeley RDI — How We Broke Top AI Agent Benchmarks](https://rdi.berkeley.edu/blog/trustworthy-benchmarks-cont/)
- [Berkeley RDI — Trustworthy Benchmarks](https://rdi.berkeley.edu/blog/trustworthy-benchmarks/)
- [Pebblous — 'Perfect Score Without Solving Anything'](https://blog.pebblous.ai/report/ai-agent-benchmark-trust/en/)
- [o11y-bench — Grafana Labs blog](https://grafana.com/blog/o11y-bench-open-benchmark-for-observability-agents/)
- [o11y-bench — GitHub](https://github.com/grafana/o11y-bench)
- [GrafanaCON 2026 announcements](https://grafana.com/blog/grafanacon-2026-announcements/)
- [FeatureBench — GitHub (LiberCoders)](https://github.com/LiberCoders/FeatureBench)
- [FeatureBench — OpenReview ICLR 2026](https://openreview.net/forum?id=41xrZ3uGuI)
- [Claude Mythos Preview — llm-stats](https://llm-stats.com/models/claude-mythos-preview)
- [Claude Mythos Preview — Vellum](https://www.vellum.ai/blog/everything-you-need-to-know-about-claude-mythos)
- [Claude Mythos benchmarks — NxCode](https://www.nxcode.io/resources/news/claude-mythos-benchmarks-93-swe-bench-every-record-broken-2026)
- [Claude Mythos Launch — Artificial Intelligence Made Simple](https://www.artificialintelligencemadesimple.com/p/anthropics-claude-mythos-launch-is)
- [MiniMax M2.5 fraud debate — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [Code AI Leaderboard — arena.ai](https://arena.ai/leaderboard/code)
- [arena.ai changelog](https://arena.ai/blog/leaderboard-changelog/)
- [AI Coding Benchmarks 2026 — Morph LLM](https://www.morphllm.com/ai-coding-benchmarks-2026)
- [LLM Coding Benchmarks Guide — Openlayer](https://www.openlayer.com/blog/post/llm-coding-benchmarks-complete-guide)
