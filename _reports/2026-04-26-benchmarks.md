---
title: Benchmarks — Who's Winning?
date: 2026-04-26
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
category: benchmarks
---

# Benchmarks — Who's Winning?

*Report date: 2026-04-26. Scores go stale fast — dates are noted throughout.*

---

## Leaderboard

### SWE-bench Verified (Top 10)

> **Status: Disputed / Contaminated.** OpenAI retired the benchmark internally in Feb 2026 (59.4% of hard tasks confirmed flawed or solvable by memorization). The official leaderboard remains live and accepting submissions. All scores below are self-reported; no standardized scaffold is enforced. A UC Berkeley study (Apr 2026) demonstrated a 10-line `conftest.py` that force-passes every test achieves 100% without solving a single task. Source: llm-stats.com, Apr 26, 2026.

| Rank | Agent / Model | Provider | Score | Date |
|------|--------------|----------|-------|------|
| 1 | Claude Mythos Preview | Anthropic | 93.9% | Apr 2026 |
| 2 | Claude Opus 4.7 | Anthropic | 87.6% | Apr 2026 |
| 3 | GPT-5.3 Codex | OpenAI | 85.0% | Apr 2026 |
| 4 | Claude Opus 4.5 | Anthropic | 80.9% | Mar 2026 |
| 5 | Claude Opus 4.6 | Anthropic | 80.8% | Mar 2026 |
| 6 | Gemini 3.1 Pro | Google | 80.6% | Feb 2026 |
| 6 | DeepSeek-V4-Pro-Max | DeepSeek | 80.6% | Apr 2026 |
| 8 | MiniMax M2.5 | MiniMax | 80.2% | Mar 2026 |
| 8 | Kimi K2.6 | Moonshot AI | 80.2% | Apr 2026 |
| 10 | GPT-5.2 | OpenAI | 80.0% | Mar 2026 |

**No leaderboard movements from Apr 25.** All entries are self-reported. Claude Mythos Preview's 93.9% has not been independently replicated; the 6-point gap over #2 is large enough to warrant scrutiny given known contamination issues. #4–#10 is a dense cluster within 0.9 points.

---

### SWE-bench Pro — SEAL Standardized (Top 10)

> Scale AI's multi-language benchmark (Python, Go, TypeScript, JavaScript). 1,865 tasks from 41 repositories. SEAL leaderboard uses mini-swe-agent harness with 250-turn limit — the most methodologically controlled public leaderboard available. Self-reported scores with custom scaffolding run 4–10 points higher than figures below. Source: Scale AI SEAL leaderboard, ~Apr 20, 2026.

| Rank | Agent / Model | Score (±95% CI) | Harness | Date |
|------|--------------|-----------------|---------|------|
| 1 | GPT-5.4 (xHigh) | 59.10% ±3.56 | mini-swe-agent | Apr 2026 |
| 2 | Muse Spark (Meta) | 55.00% ±3.60 | mini-swe-agent | Apr 2026 |
| 3 | Claude Opus 4.6 (thinking) | 51.90% ±3.61 | mini-swe-agent | Apr 2026 |
| 4 | Gemini 3.1 Pro (thinking) | 46.10% ±3.60 | standard (250-turn) | Mar 2026 |
| 4 | Claude Opus 4.5 | 45.89% ±3.60 | standard (250-turn) | Mar 2026 |
| 5 | Claude Sonnet 4.5 | 43.60% ±3.60 | standard (250-turn) | Mar 2026 |
| 5 | Gemini 3 Pro Preview | 43.30% ±3.60 | standard (250-turn) | Mar 2026 |
| 5 | Claude Sonnet 4 | 42.70% ±3.59 | standard (250-turn) | Mar 2026 |
| 5 | GPT-5 (High) | 41.78% ±3.49 | standard (250-turn) | Mar 2026 |
| 5 | GPT-5.2-codex | 41.04% ±3.57 | standard (250-turn) | Mar 2026 |

No changes from Apr 25. The Verified-vs-Pro gap for Claude Mythos Preview (93.9% vs ~45.9%) remains the starkest illustration of benchmark contamination in the field.

---

### Terminal-Bench (Top Results)

> 89-task benchmark (Terminal-Bench 2.0) covering compilation, model training, server setup, sysadmin, security, and data science. UC Berkeley (Apr 2026) showed a fake `curl` wrapper achieves perfect scores by planting output files — the evaluator reads agent-written state without sandboxing. Sources: tbench.ai, Artificial Analysis, Apr 24–26, 2026.

**Terminal-Bench 2.0 (tbench.ai, Apr 24, 2026):**

| Rank | Model | Score | Date |
|------|-------|-------|------|
| 1 | GPT-5.5 | 82.7% | Apr 2026 |
| 2 | Claude Opus 4.7 (Adaptive) | 69.4% | Apr 2026 |
| 3 | MiMo-V2.5-Pro | 68.4% | Apr 2026 |

**Terminal-Bench Hard (Artificial Analysis, ForgeCode scaffold, Apr 26, 2026):**

| Rank | Agent | Score | Date |
|------|-------|-------|------|
| 1 | ForgeCode + Claude Opus 4.6 | 81.8% | Apr 2026 |
| 1 | ForgeCode + GPT-5.4 | 81.8% | Apr 2026 |
| 3 | TongAgents + Gemini 3.1 Pro | 80.2% | Apr 2026 |

**Movement (vs Apr 25):** GPT-5.5 appears as a new entrant in the top slot on the base leaderboard at 82.7% (⚠ unverified against Apr 25 sourcing — may be a data lag). The Hard variant now shows ForgeCode parity between Claude Opus 4.6 and GPT-5.4 at 81.8%.

---

### LiveCodeBench v6 (Top 10)

> Continuously sourced from LeetCode, AtCoder, and CodeForces; problems tagged by release date for anti-contamination. 218+ models evaluated. Scores are pass@1 on code generation. Source: livecodebench.github.io / Artificial Analysis, Apr 23–25, 2026.

| Rank | Model | Score | Provider | Date |
|------|-------|-------|----------|------|
| 1 | Kimi K2.6 | 89.6% | Moonshot AI | Apr 2026 |
| 2 | Seed 2.0 Pro | 87.8% | ByteDance | Apr 2026 |
| 3 | Qwen3.6 Plus | 87.1% | Alibaba | Apr 2026 |
| 4 | Step-3.5-Flash | 86.4% | StepFun | Apr 2026 |
| 5 | Kimi K2.5 | 85.0% | Moonshot AI | Mar 2026 |
| 6 | GLM-4.7 | 84.9% | Zhipu AI | Apr 2026 |
| 7 | Qwen3.6-27B | 83.9% | Alibaba | Apr 2026 |
| 8 | Qwen3.5-397B-A17B | 83.6% | Alibaba | Apr 2026 |
| 9 | Kimi K2-Thinking-0905 | 83.1% | Moonshot AI | Mar 2026 |
| 10 | GLM-4.6 | 82.8% | Zhipu AI | Apr 2026 |

No leaderboard movement from Apr 25. Western frontier models remain absent from the top 10 on this contamination-resistant benchmark.

**Note:** A 91.7% figure for Gemini 3 Pro Preview and 90.8% for Gemini 3 Flash Preview circulate on aggregators (pricepertoken.com, Apr 25). Neither is corroborated by the primary livecodebench.github.io leaderboard — treat as unverified until confirmed.

---

### HumanEval (Selected Results)

> **Status: Saturated.** 164 hand-crafted Python problems, public since 2021. Retained as legacy reference only — not a differentiator for frontier models. Contamination risk very high. Top models are separated by ~1 point (noise). Source: pricepertoken.com / BenchLM.ai, Apr 25, 2026.

| Model | Score | Source | Date |
|-------|-------|--------|------|
| Kimi K2.5 (Reasoning) | 99.0% | BenchLM.ai (self-reported) | Mar 2026 |
| Claude Sonnet 4.5 | 97.6% | pricepertoken.com | Mar 2026 |
| DeepSeek R1 | 97.4% | pricepertoken.com | Mar 2026 |
| Grok 4 | 97.0% | pricepertoken.com | Mar 2026 |

BigCodeBench is the recognized successor for harder, more realistic tasks.

---

## New Benchmarks & Methodology

### GDPval (Announced Apr 2026, OpenAI-led)

A new benchmark spanning 44 knowledge-work occupations, positioning itself as a measure of economic task completion rather than narrow code correctness. Moves beyond SWE-style bug-fixing to include tasks drawn from real professional workflows. No public leaderboard yet; design details and evaluation methodology not yet disclosed. Worth watching as an attempt to close the benchmark-to-production-value gap.

### MirrorCode (Apr 2026, Epoch AI + METR)

A long-horizon SWE benchmark jointly developed by Epoch AI and METR. Early results show AI agents can complete some tasks measured in weeks of human work. Framed as a complement to short-horizon benchmarks like SWE-bench. No public leaderboard yet; evaluation methodology is still being standardized. Represents a meaningful methodological step toward measuring sustained autonomous software engineering.

### ARC-AGI V3 (Announced Apr 2026)

The ARC Prize foundation announced V3, designed to resist the reasoning shortcuts that let models exceed human performance on V2 (Gemini 3.1 Pro: 77.1%). Design details remain sparse. Expected to reset the frontier-vs-human gap for abstract reasoning.

---

## Notable Movements

### No Major Leaderboard Shifts Apr 25 → Apr 26

The past 24 hours produced no confirmed new leaderboard entries on SWE-bench Verified, SWE-bench Pro (SEAL), or LiveCodeBench v6. Terminal-Bench shows a possible new GPT-5.5 entry at #1 (82.7%) but this requires corroboration against the prior day's sourcing.

### Scaffolding Gap Remains the Decisive Variable

On SWE-bench Pro, the same model (Claude Opus 4.6) spans roughly 42% on a standard harness to 51.9% on mini-swe-agent. GPT-5.4 moves from ~41% (standard) to 59.1% (mini-swe-agent, xHigh). A 10–18 point range from harness choice alone means raw leaderboard numbers are not meaningful without scaffold disclosure.

### Berkeley Exploit Study Continues Reverberating

The UC Berkeley demonstration that eight major agent benchmarks can be gamed without solving any task (conftest.py injection, fake curl wrapper, Chromium file:// navigation) continues to dominate methodology discussion. No benchmark operator has published a structural fix as of Apr 26. The root vulnerability — agent-writable state inspected without sandboxing by the evaluator — affects SWE-bench Verified and Terminal-Bench 2.0 explicitly.

### IQuest-Coder-V1 Dispute Unresolved

The IQuest-Coder-V1 entry (81.4% SWE-bench Verified) remains on the leaderboard with a disputed flag. Independent researchers confirmed 24.4% of its "solved" instances exploited git commit history containing target patches. No retraction as of Apr 26.

### SWE-bench Verified Contamination Shifting Procurement

Enterprise teams are bifurcating: some continue accepting self-reported Verified numbers, others now require SEAL-standardized SWE-bench Pro scores. The Berkeley study may accelerate the latter. OpenAI has not reversed its Feb 2026 internal retirement of Verified.

---

## Benchmark Reliability Summary

| Benchmark | Contamination Risk | Scaffold Control | Exploit Demonstrated | Status |
|-----------|-------------------|------------------|----------------------|--------|
| HumanEval | Very High (public since 2021) | None | Yes (saturated) | Legacy baseline only |
| SWE-bench Verified | High (confirmed Feb 2026) | None | Yes (conftest.py) | Disputed / retired by OpenAI |
| SWE-bench Pro (public) | Medium | SEAL option | Not yet demonstrated | Active — preferred |
| SWE-bench Pro (private) | Low | Standardized | Not yet demonstrated | Most credible agentic eval |
| LiveCodeBench v6 | Low (rolling updates) | None | Not yet demonstrated | Active — trusted |
| Terminal-Bench 2.0 | Low | None specified | Yes (fake curl wrapper) | Active but structurally vulnerable |
| GDPval | Unknown | TBD | N/A (new) | Announced — not yet live |
| MirrorCode | Unknown | TBD | N/A (new) | Announced — not yet live |
| ARC-AGI V3 | Unknown | TBD | N/A (new) | Announced — not yet live |
