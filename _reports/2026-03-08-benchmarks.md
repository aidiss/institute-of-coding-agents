---
title: "Benchmarks, March 8, 2026"
date: 2026-03-08
theater: benchmarks
analyst: ICAI / Claude Sonnet 4.6
assessment: "Stable — scaffold choice now dominates model choice"
prompt_hash: 6f5df01d4f13565eb7a5479a8277956ca8c08782
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-03-08

Who's winning? SWE-bench Verified is formally retired by OpenAI as contaminated, SWE-bench Pro and SWE-bench Live are ascending as the credible standards, and scaffold choice is now as important as model choice.

## Leaderboard

### SWE-bench Verified (Epoch AI v2.0.0 — independent, not self-reported)

| Rank | Agent / Model | Benchmark | Score | Date |
|------|--------------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Verified | 80.9% | Feb 2026 |
| 2 | Claude Opus 4.6 | SWE-bench Verified | 80.8% | Feb 2026 |
| 3 | Gemini 3.1 Pro | SWE-bench Verified | 80.6% | Feb 2026 |
| 4 | MiniMax M2.5 | SWE-bench Verified | 80.2% | Feb 2026 |
| 5 | GPT-5.2 | SWE-bench Verified | 80.0% | Feb 2026 |
| 6 | Claude Sonnet 4.6 | SWE-bench Verified | 79.6% | Feb 2026 |
| 7 | GLM-5 | SWE-bench Verified | ~77.8% | Feb 2026 |
| 8 | Claude Sonnet 4.5 | SWE-bench Verified | ~77.2% | Feb 2026 |
| 9 | Kimi K2.5 | SWE-bench Verified | ~76.8% | Feb 2026 |
| — | Sonar Foundation Agent (Claude Opus 4.5) | SWE-bench Verified | 79.2% | Feb 19, 2026 ⚠️ self-reported |

Notes: Epoch AI re-ran evaluations under v2.0.0 (updated scaffolding, environments, extended token limits). Three Chinese open-source models (GLM-5, Kimi K2.5, MiniMax M2.5) break the top 10. **Use these scores with caution** — OpenAI's internal audit found 59.4% of tasks have flawed or problematic test designs, and contamination is confirmed for all major frontier models.

Simon Willison's independent Feb 19 run (mini-swe-bench agent, "Bash Only" variant, no model-specific tuning) shows somewhat lower numbers: Claude Opus 4.5 at 76.8%, Gemini 3 Flash and MiniMax M2.5 tied at 75.8%, Claude Opus 4.6 at 75.6%, GLM-5 at 72.8% — confirming scaffold-driven inflation elsewhere.

### SWE-bench Pro (SEAL by Scale AI — standardized scaffold)

| Rank | Model | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 | SWE-bench Pro (SEAL) | 45.9% | 2026 |
| 2 | GPT-5 (High) | SWE-bench Pro (SEAL) | 41.8% | 2026 |
| 3 | GPT-5.2 Codex | SWE-bench Pro (SEAL) | 41.0% | 2026 |
| — | GPT-5.3-Codex | SWE-bench Pro (self-reported) | ~57% | 2026 ⚠️ self-reported |
| — | Opus 4.6 + WarpGrep v2 | SWE-bench Pro (Morph internal) | 57.5% | 2026 ⚠️ self-reported |
| — | GPT-4o | SWE-bench Pro (SEAL) | 4.9% | 2026 |
| — | Qwen-3 32B | SWE-bench Pro (SEAL) | 3.4% | 2026 |

Notes: SEAL uses standardized scaffolding and a 250-turn limit across all models. The 10–15 percentage-point gap between self-reported and SEAL scores is entirely scaffold-driven. Private-subset performance drops are severe: Claude Opus 4.1 falls from 22.7% → 17.8%, GPT-5 from 23.1% → 14.9% — the private subset is likely the most honest measure available.

### Terminal-Bench 2.0 (tbench.ai — model × agent pairs)

| Rank | Model | Agent | Score | Date |
|------|-------|-------|-------|------|
| 1 | Gemini 3.1 Pro | Forge Code | 78.4% | Mar 2026 |
| 2 | GPT-5.3-Codex | Droid | 77.3% | Mar 2026 |
| 3 | GPT-5.3-Codex | Simple Codex | 75.1% | Mar 2026 |
| 4 | Gemini 3.1 Pro | Terminus-KIRA | 74.8% | Mar 2026 |
| 5 | Claude Opus 4.6 | Terminus-KIRA | 74.7% | Mar 2026 |
| 6 | GPT-5.3-Codex | Mux | 74.6% | Mar 2026 |
| 7 | (multiple) | OB-1 | 72.4% | Mar 2026 |
| 8 | Claude Opus 4.6 | TongAgents | 71.9% | Mar 2026 |
| 9 | (multiple) | Junie CLI | 71.0% | Mar 2026 |
| 10 | GPT-5.3-Codex | CodeBrain-1 | 70.3% | Mar 2026 |
| — | GPT-5.4 (xhigh) | — | 57.6% | Mar 2026 (Terminal-Bench Hard) |
| — | Gemini 3.1 Pro Preview | — | 53.8% | Mar 2026 (Terminal-Bench Hard) |
| — | GPT-5.3 Codex (xhigh) | — | 53.0% | Mar 2026 (Terminal-Bench Hard) |

Notes: Scaffold choice dominates — GPT-5.3-Codex appears three times in the top 10 under different harnesses. Claude Opus 4.6 reaches 74.7% with Terminus-KIRA but only ~58% with Claude Code. Hard-task accuracy collapses to ~16% on average; common failures include not waiting for long-running processes and terminal crashes.

### LiveCodeBench v6 (contamination-controlled, rolling)

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | Gemini 3 Pro Preview | 91.7% | Mar 7, 2026 |
| 2 | Gemini 3 Flash Preview (Reasoning) | 90.8% | Mar 7, 2026 |
| 3 | DeepSeek V3.2 Speciale | 89.6% | Mar 7, 2026 |
| — | Kimi K2.5 | ~85% | 2026 |
| — | GLM-4.7 | ~84.9% | 2026 |
| — | Qwen3.5-plus | 83.6% | Feb 2026 |

Notes: 197 models evaluated as of March 7. Continuously updated with new problems from LeetCode, AtCoder, and Codeforces — structurally resistant to overfitting. Gemini's lead here is notable and does not align with SWE-bench rankings.

### HumanEval (saturated — reference only)

| Model | Score | Note |
|-------|-------|------|
| Claude Sonnet 4 | 95.1% | Highest in recent peer-reviewed study |
| Claude Opus 4 | 94.5% | |
| Kimi K2.5 | ~99% | Effectively saturated |
| Codestral 25.01 | 86.6% | Mistral; strong at scaffolding and test gen |

HumanEval is no longer a meaningful frontier discriminator. Industry has migrated to LiveCodeBench and SWE-bench Pro.

---

## New Benchmarks & Methodology

### arxiv 2602.04449 — SWE-Bench methodology critique (Feb 2026)
A formal academic paper ("What's in a Benchmark? The Case of SWE-Bench in Automated Program Repair") finds: over 15% of SWE-bench Verified instances require augmented test patches to be sound; frameworks like UTBoost and PatchDiff reveal 6–7 points of leaderboard inflation from latent test inadequacies; 30%+ of successful "passes" involve direct solution leakage from issue text into model output. The SE community has flagged patch overfitting for years, but AI/ML communities and lab blog posts largely ignore it.

### SWE-bench Live / Windows (Microsoft, Feb 2026)
SWE-bench Live (NeurIPS 2025, arXiv:2505.23419) added a Windows variant in February 2026, testing agents on Windows PowerShell and Windows-specific implementations. Finding: none of SWE-agent, OpenHands, or Claude Code could run on Windows containers out of the box — a minimal Win-agent was implemented for comparison. Monthly additions of 50 verified issues continue. Contamination caveat: Claude 4.5's knowledge cutoff (July 2025) overlaps with early benchmark tasks.

### SWE-bench Pro — private subset
276 instances sourced from 18 private, proprietary startup codebases — not publicly accessible, the hardest contamination-resistant test currently available. Top models drop ~5–8 points from their public-subset scores. The private-set gap is the most reliable signal of actual generalization.

### GDPval & APEX-Agents (Epoch AI, early 2026)
New agentic benchmarks measuring economically valuable digital work across 44 knowledge work occupations (GDPval) and enterprise-grade agent tasks (APEX-Agents). Epoch AI updated its agentic coding benchmark methodology on Feb 20, 2026 — re-evaluating key models led to significantly higher reported scores, illustrating how methodology changes can shift standings independent of model capability.

---

## Notable Movements

### OpenAI formally retires SWE-bench Verified (Feb 23, 2026)
OpenAI's Frontier Evals team (Watkins & Glaese) declared SWE-bench Verified "saturated and highly contaminated." Internal audit of 138 problems found models reproduce original fixes from training memory. Score increments between frontier models fell to ≤0.1%, rendering the benchmark meaningless as a discriminator. OpenAI now endorses SWE-bench Pro, where their top models score ~23% rather than ~80%.

### Scaffold > model on SWE-bench Pro
On the SEAL leaderboard, Auggie, Cursor, and Claude Code all used Opus 4.5 — yet Auggie solved 15 more problems than Cursor and 17 more than Claude Code out of 731 tasks. The performance gap between agent frameworks now exceeds the performance gap between models.

### Gemini leads in competitive coding and terminal work
Gemini 3 Pro Preview tops LiveCodeBench v6 at 91.7% and Terminal-Bench 2.0 at 78.4% — but does not lead on SWE-bench Verified or Pro. The divergence suggests Gemini is optimized for algorithmic reasoning and DevOps tasks while Anthropic's Claude leads on code-editing and bug-fixing in real repositories.

### Open-source closing gap
MiniMax M2.5 (229B) sits at #4 on SWE-bench Verified. GLM-5, Kimi K2.5, and DeepSeek V3.2 all score in the top 10. On LiveCodeBench, DeepSeek V3.2 Speciale ranks #3. Open-weight models are now plausible frontier alternatives on several benchmarks.

### METR task-autonomy graph still contested
METR's "doubling time" graph (how long LLMs sustain autonomous coding) received a formal critique questioning task realism, contamination, and human baseline methodology. METR authors responded, defending the estimate but acknowledging partial validity of critiques. The graph remains in wide circulation; treat with caveats.

---

## Sources

- [SWE-bench official leaderboard](https://www.swebench.com/)
- [SWE-bench February 2026 leaderboard update — Simon Willison](https://simonwillison.net/2026/Feb/19/swe-bench/)
- [SWE-bench Verified — Epoch AI](https://epoch.ai/benchmarks/swe-bench-verified)
- [SWE-Bench Pro — SEAL by Scale AI](https://scale.com/leaderboard/swe_bench_pro_public)
- [SWE-Bench Pro 2026 — Morph LLM](https://www.morphllm.com/swe-bench-pro)
- [SWE-rebench Leaderboard](https://swe-rebench.com)
- [SWE-bench Live — GitHub (Microsoft / NeurIPS 2025)](https://github.com/microsoft/SWE-bench-Live)
- [SWE-bench-Live Leaderboard](https://swe-bench-live.github.io/)
- [Terminal-Bench 2.0 Leaderboard](https://www.tbench.ai/leaderboard/terminal-bench/2.0)
- [Terminal-Bench 2.0 announcement](https://www.tbench.ai/news/announcement-2-0)
- [Terminal-Bench Hard — Artificial Analysis](https://artificialanalysis.ai/evaluations/terminalbench-hard)
- [LiveCodeBench Leaderboard](https://livecodebench.github.io/leaderboard.html)
- [LiveCodeBench — Artificial Analysis](https://artificialanalysis.ai/evaluations/livecodebench)
- [Sonar Foundation Agent press release](https://www.sonarsource.com/company/press-releases/sonar-claims-top-spot-on-swe-bench-leaderboard/)
- [OpenAI drops SWE-bench Verified — adwaitx.com](https://www.adwaitx.com/openai-swe-bench-verified-retired-ai-benchmarks/)
- [OpenAI retires SWE-bench Verified — blockchain.news](https://blockchain.news/news/openai-abandons-swe-bench-verified-contamination-flawed-tests)
- [arxiv 2602.04449 — SWE-Bench methodology critique](https://arxiv.org/pdf/2602.04449)
- [SWE-Bench Leaderboard March 2026 — marc0.dev](https://www.marc0.dev/en/leaderboard)
- [Best LLM for Coding 2026 — Onyx AI](https://onyx.app/best-llm-for-coding)
- [Epoch AI Benchmarks](https://epoch.ai/benchmarks)
