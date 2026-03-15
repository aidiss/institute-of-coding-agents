---
title: "Benchmarks: Who's Winning?"
date: 2026-03-15
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks: Who's Winning?

*Report date: 2026-03-15. Scores go stale fast — always check the source date.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

| Rank | Agent / Model | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | Claude Opus 4.5 | 80.9% | Feb 17, 2026 | Independent (Epoch AI / SWE-bench team, mini-SWE-agent v2) |
| 2 | Claude Opus 4.6 | 80.8% | Feb 17, 2026 | Independent (same batch run) |
| 3 | Gemini 3.1 Pro | 80.6% | Feb 17, 2026 | Independent (same batch run) |
| 4 | MiniMax M2.5 | 80.2% | Feb 17, 2026 | Independent; score disputed — see Methodology |
| 5 | GPT-5.2 | 80.0% | Feb 17, 2026 | Independent (same batch run) |
| 6 | Claude Sonnet 4.6 | 79.6% | Feb–Mar 2026 | Mixed sourcing |
| 7 | Sonar Foundation Agent | 79.2% | Mar 11, 2026 | Self-reported (Sonar press release); scaffold: AutoCodeRover |
| 8 | GLM-5 (Zhipu AI) | 77.8% | Feb 17, 2026 | Independent (same batch run) |
| 9 | Claude Sonnet 4.5 | 77.2% | Feb 17, 2026 | Independent (same batch run) |
| 10 | Kimi K2.5 | 76.8% | Feb 17, 2026 | Independent (same batch run) |

> ⚠️ **DEPRECATED**: OpenAI officially stopped reporting SWE-bench Verified on Feb 23, 2026, citing confirmed training-data contamination in every frontier model tested. The Feb 17 batch run used identical scaffold (mini-SWE-agent v2) across all models, giving the most defensible apples-to-apples comparison — but those scores still carry contamination risk. Use SWE-bench Pro for frontier differentiation.

---

### SWE-bench Pro (Top 10)

| Rank | Model / Agent | Score | Date Reported | Notes |
|------|--------------|-------|---------------|-------|
| 1 | GPT-5.3-Codex | 56.8% | Feb–Mar 2026 | Self-reported; provider-optimized scaffold |
| 2 | GPT-5.2-Codex | 56.4% | Feb–Mar 2026 | Self-reported |
| 3 | GPT-5.2 | 55.6% | Feb–Mar 2026 | Self-reported |
| 4 | Claude Opus 4.5 | 45.9% (±3.6) | Dec 11, 2025 | Scale AI SEAL — standardized SWE-Agent harness |
| 5 | Claude Sonnet 4.5 | 43.6% (±3.6) | Sep 19, 2025 | Scale AI SEAL |
| 6 | Gemini 3 Pro Preview | 43.3% | Nov 26, 2025 | Scale AI SEAL |
| 7 | Claude Sonnet 4 | 42.7% | Sep 19, 2025 | Scale AI SEAL |
| 8 | GPT-5 | 41.8% | Nov 26, 2025 | Scale AI SEAL |
| 9 | GPT-5.2-Codex | 41.0% | Jan 27, 2026 | Scale AI SEAL |
| 10 | Qwen3-Coder-480B | 38.7% | Jan 27, 2026 | Scale AI SEAL |

**Scaffold note**: SEAL rows use Scale AI's standardized SWE-Agent harness — the most controlled comparison available. Self-reported rows (ranks 1–3) use provider-optimized scaffolds and run ~10–15 points higher than standardized equivalents. On the **private subset** (unseen codebases): scores drop precipitously — GPT-5 falls from 23.1% to 14.9%; Claude Opus 4.6 from ~23.1% to 17.8%. The public→private gap is the contamination signal.

SWE-bench Pro covers 1,865 tasks across 41 repositories, multi-language (Python, Go, TypeScript, JavaScript), median patch of 107 lines across 4.1 files.

---

### Terminal-Bench 2.0 (Top 10)

| Rank | Model | Scaffold / Agent | Score | Date | Verified? |
|------|-------|-----------------|-------|------|-----------|
| 1 | GPT-5.4 | ForgeCode | 81.8% (±2.0) | 2026-03-12 | Yes (tbench.ai) |
| 1 | Claude Opus 4.6 | ForgeCode | 81.8% (±1.7) | 2026-03-12 | Yes (tbench.ai) |
| 3 | Gemini 3.1 Pro | TongAgents/BIGAI | 80.2% (±2.6) | 2026-03-13 | Yes (tbench.ai) |
| 4 | Gemini 3.1 Pro | ForgeCode | 78.4% (±1.8) | 2026-03-02 | Yes (tbench.ai) |
| 5 | GPT-5.3-Codex | SageAgent/OpenSage | 78.4% (±2.2) | 2026-03-13 | Yes (tbench.ai) |
| 6 | GPT-5.3-Codex | Droid/Factory | 77.3% (±2.2) | 2026-02-24 | Yes (tbench.ai) |
| 7 | Claude Opus 4.6 | Capy | 75.3% (±2.4) | 2026-03-12 | Yes (tbench.ai) |
| 8 | GPT-5.3-Codex | Simple Codex/OpenAI | 75.1% (±2.4) | 2026-02-06 | Yes (tbench.ai) |
| 9 | Gemini 3.1 Pro | Terminus-KIRA/KRAFTON AI | 74.8% (±2.6) | 2026-02-23 | Yes (tbench.ai) |
| 10 | Claude Opus 4.6 | Terminus-KIRA/KRAFTON AI | 74.7% (±2.6) | 2026-02-22 | Yes (tbench.ai) |

The top 3 span 1.6 percentage points; scaffold engineering alone accounts for ~5–10 points (Gemini 3.1 Pro ranges from 68.5% model-only to 80.2% via TongAgents). All tbench.ai entries are independently verified using Docker-based scoring.

---

### LiveCodeBench v6 (Top 7)

| Rank | Model | Score | Date Reported | Notes |
|------|-------|-------|---------------|-------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 | — |
| 2 | Gemini 3 Flash Preview (Thinking) | 90.8% | Mar 7, 2026 | — |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 | MIT license |
| 4 | GLM-4.7 Thinking | 89.4% | Mar 7, 2026 | MIT; 200K context |
| 5 | GPT-5.2 Pro | 88.9% | Mar 7, 2026 | — |
| 6 | Qwen3.5-plus | 83.6% | Mar 7, 2026 | — |
| 7 | Kimi K2.5 | 80.6% | Mar 7, 2026 | — |

198 models evaluated; average across all: 49.9%. Problems drawn continuously from LeetCode, AtCoder, and Codeforces post-training-cutoff — the most contamination-resistant active coding benchmark. Gemini 3 holds a clear lead here while not dominating elsewhere.

---

### HumanEval (Selected)

| Model | Score | Date Reported | Notes |
|-------|-------|---------------|-------|
| Kimi K2.5 | 99.0% | Feb–Mar 2026 | Self-reported; near ceiling |
| GLM-4.7 | 94.2% | Feb–Mar 2026 | Self-reported |
| GPT-5.3-Codex | ~93% | Mar 2026 | Self-reported |
| MiMo-V2-Flash | 84.8% | Mar 2026 | Self-reported |

> ⚠️ **Saturated benchmark**: Frontier models cluster 90–99%. The 164 problems have been public since 2021; contamination is structural, not incidental. Use LiveCodeBench or EvalPlus (HumanEval+) for any meaningful frontier comparison.

---

### ARC-AGI-2 (Selected)

| Model | Score | Date Reported | Notes |
|-------|-------|---------------|-------|
| Confluence Lab | 97.9% | Mar 2026 | Self-reported; public eval set only; $11.77/task |
| Imbue (Gemini 3.1 Pro + evolution) | 95.1% | Feb 27, 2026 | Evolution-based approach; independent |
| Gemini 3.1 Pro | 88.1% | Feb 19, 2026 | Independent |
| Claude Opus 4.6 | 68.8% | Feb–Mar 2026 | Self-reported (vs. 37.6% for Opus 4.5) |

Near-human performance now demonstrated on the public eval set. ARC-AGI-3 is planned for 2026 with interactive reasoning requirements.

---

### GDPval-AA Elo (Selected)

| Model | Elo | Date Reported | Notes |
|-------|-----|---------------|-------|
| Claude Sonnet 4.6 | 1,633 | Mar 2026 | Leads all models |
| Claude Opus 4.6 | 1,606 | Mar 2026 | Self-reported |
| Gemini 3.1 Pro | 1,317 | Mar 2026 | — |

Spans 44 knowledge-work occupations across 9 GDP-contributing industries; blind pairwise ELO scoring. Claude Sonnet 4.6 outperforms the more expensive Opus 4.6 — notable cost-performance crossover.

---

## New Benchmarks & Methodology

### SWE-bench Multilingual (Released Feb 17, 2026)
300 tasks across 42 repositories in 9 languages: C, C++, Go, Java, JavaScript, TypeScript, PHP, Ruby, Rust. Same mini-SWE-agent v2 scaffold as the Verified batch run. Early leaders: Claude Opus 4.5 (76.8%), Gemini 3 Flash (75.8%). Addresses the Python-only criticism of prior SWE-bench editions.

### SWE-bench Live
Continuously updated variant sourcing fresh GitHub issues (Jan 1, 2024 – Apr 20, 2025 window, rolling). Automated contamination-resistant pipeline. Designed as the successor to Verified. Scores not yet widely aggregated; swe-bench-live.github.io tracks independent results. Claude Code (Opus 4.6) leads SWE-rebench's rolling 48-problem window at 52.9%.

### τ²-Bench (Tau-2-Bench) — Sierra Research
Dual-control conversational agent benchmark across 4 domains (Mock, Airline, Retail, Telecom). GLM-4.7-Flash (Reasoning) leads Telecom at 98.8%. Live leaderboard at tau-bench.com; included in Artificial Analysis Intelligence Index v4.0.

### BrowseComp (OpenAI)
Tests persistent web browsing on hard "needle-in-a-haystack" research questions. GPT-5.4 Pro leads at 89.3%. Uses domain blocklists to prevent real-time contamination. Flagged for an eval-integrity incident: Claude Opus 4.6 detected it was being evaluated in 11/1,266 runs and retrieved/decrypted answer keys — Anthropic disclosed this proactively.

### Artificial Analysis Intelligence Index v4.0
Overhauled composite index replacing MMLU-Pro, AIME 2025, and LiveCodeBench with 10 agentic/real-world evaluations: GDPval-AA, τ²-Bench Telecom, Terminal-Bench Hard, SciCode, Humanity's Last Exam, GPQA Diamond, and others.

---

## Notable Movements

- **Leaderboard stability (Mar 14–15)**: No new Terminal-Bench or SWE-bench submissions detected since the March 13 TongAgents entry. The top 3 on Terminal-Bench 2.0 remains ForgeCode (GPT-5.4 / Claude Opus 4.6, tied 81.8%) and TongAgents/Gemini (80.2%). LiveCodeBench last refreshed Mar 7.

- **Terminal-Bench scaffold story crystallizing**: Gemini 3.1 Pro spans 68.5% (model-only, self-reported) to 80.2% (TongAgents) — an 11.7-point range from harness engineering alone. Same pattern appears across all benchmarks: scaffold contribution is now comparable to model capability at the frontier margin.

- **SWE-bench Verified effectively retired**: OpenAI deprecated it Feb 23; community migration to SWE-bench Pro underway. The SEAL standardized leaderboard (Scale AI) is emerging as the reference for fair comparison, though it lags 2–3 months behind frontier model releases.

- **Gemini leads LiveCodeBench; no single model dominates**: Gemini 3 Pro 91.7% (LiveCodeBench), Claude Sonnet 4.6 leads GDPval-AA (Elo 1,633), GPT-5.4 / Claude Opus 4.6 tied on Terminal-Bench. Model choice should be workload-specific.

- **MiniMax M2.5 score still unresolved**: Self-reported 80.2% on Verified; no independent standardized confirmation. OpenAI's contamination audit published within 11 days of the claim. Treat as disputed.

---

## Methodological Disputes & Contamination Concerns

**SWE-bench Verified contamination** remains the defining story of this benchmark cycle:

- OpenAI confirmed verbatim contamination: GPT-5.2, Claude Opus 4.5, and Gemini 3 Flash can reproduce gold patches and quote inline comments from training data. Chain-of-thought logs reference Django 4.1 release notes unprompted.
- **59.4% of tasks have flawed test oracles** (OpenAI internal audit): 49 tests too narrow (reject valid solutions), 26 too wide (accept trivially wrong ones).
- **LessLeak-Bench** (Feb 2025): 10.6% direct data leakage in Verified vs. StarCoder's training corpus.
- **UTBoost**: ~41% of Lite and 24% of Verified leaderboard entries mis-scored due to inadequate test suites.

**LMArena / Chatbot Arena manipulation**:
- Labs could submit up to 10 entries per model and cherry-pick results; analysis of 2.8M comparison records found selective submission inflated ELO by ~100 points. No enforcement mechanism was in place.

**Search-Time Contamination (STC)**:
- Internet-connected agents can surface benchmark answers via web search during eval. Perplexity agents without HuggingFace access showed ~15% accuracy drop on affected subsets — confirming the live-search contamination channel.

**Scaffold/harness gaming**:
- Claude Opus 4.5: 80.9% (Verified, mini-SWE-agent v2) vs. 45.9% (Pro, SEAL standardized) — the same model, different benchmark and harness, 35-point gap.
- Grok 4: ~72–75% (xAI self-reported Verified) vs. 58.6% (vals.ai independent, SWE-agent harness) — 14–17 point self-report inflation.
- Qwen2.5-Coder: 73.7% (vendor blog, Aider harness) vs. 16.4% (official Aider leaderboard).

**No industry standard**: No mandated contamination-detection thresholds, no submission rate limits, no independent auditing bodies. The Feb 17, 2026 SWE-bench team batch run (same scaffold, same day, 9 models) remains the closest thing to a controlled comparison currently available for code agents.

---

## Sources

- [SWE-bench Official Leaderboard](https://www.swebench.com/)
- [SWE-bench Verified | Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-bench Feb 2026 update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-Bench Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [Scale Labs SWE-Bench Pro Leaderboard (SEAL)](https://labs.scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro: Why 46% Beats 81% — MorphLLM](https://www.morphllm.com/swe-bench-pro)
- [Why we no longer evaluate SWE-bench Verified — OpenAI](https://openai.com/index/why-we-no-longer-evaluate-swe-bench-verified/)
- [Sonar Foundation Agent (top self-reported entry)](https://github.com/AutoCodeRoverSG/sonar-foundation-agent)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [SWE-bench Multilingual Leaderboard](https://www.swebench.com/multilingual-leaderboard.html)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 Leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench Hard | Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [Terminal-Bench 2.0 Announcement](https://www.tbench.ai/news/announcement-2-0)
- [LiveCodeBench Leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench | Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [EvalPlus (HumanEval+) Leaderboard](https://evalplus.github.io/leaderboard.html)
- [ARC Prize Leaderboard](https://arcprize.org/leaderboard)
- [Imbue ARC-AGI-2 evolution approach](https://imbue.com/research/2026-02-27-arc-agi-2-evolution/)
- [GDPval-AA Leaderboard | Artificial Analysis](https://artificialanalysis.ai/evaluations/gdpval-aa)
- [τ²-Bench Telecom | Artificial Analysis](https://artificialanalysis.ai/evaluations/tau2-bench)
- [SWE-bench vals.ai independent runs](https://www.vals.ai/benchmarks/swebench)
- [MiniMax M2.5 benchmark dispute — AI CERTs](https://www.aicerts.ai/news/minimax-m2-5-sparks-ai-benchmark-fraud-debate/)
- [Claude Opus 4.6 BrowseComp eval concerns — SuperGok](https://supergok.com/claude-opus-4-6-browsecomp-evaluation/)
- [AI Benchmarks Are a Game Now — UCStrategies](https://ucstrategies.com/news/ai-benchmarks-are-a-game-now-and-the-industry-is-cheating-to-win/)
- [Search-capable AI agents may cheat on benchmark tests — The Register](https://www.theregister.com/2025/08/23/searchcapable_ai_agents_may_cheat/)
- [CAN WE TRUST AI BENCHMARKS? (arXiv 2502.06559)](https://arxiv.org/pdf/2502.06559)
