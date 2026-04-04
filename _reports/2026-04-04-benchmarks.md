---
date: 2026-04-04
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-04

## Leaderboard

### SWE-bench Verified (Top 10)

500 manually curated Python GitHub issues. **Warning: contamination confirmed across all frontier labs; OpenAI abandoned this benchmark on 2026-02-23. All top scores are self-reported by model providers unless noted.**

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 (Anthropic) | SWE-bench Verified | 80.9% | Mar 2026 (self-reported) |
| 2 | Claude Opus 4.6 (Anthropic) | SWE-bench Verified | 80.8% | Mar 2026 (self-reported) |
| 3 | Gemini 3.1 Pro (Google) | SWE-bench Verified | 80.6% | Mar 2026 (self-reported) |
| 4 | MiniMax M2.5 (MiniMax) | SWE-bench Verified | 80.2% | Mar 2026 (self-reported) |
| 5 | GPT-5.2 (OpenAI) | SWE-bench Verified | 80.0% | Mar 2026 (self-reported) |
| 6 | Claude Sonnet 4.6 (Anthropic) | SWE-bench Verified | 79.6% | Mar 2026 (self-reported) |
| 7 | Sonar Foundation Agent (Claude Opus 4.5 base) | SWE-bench Verified | 79.2% | Feb 19, 2026 (independent submission) |
| 8 | Gemini 3 Flash (Google) | SWE-bench Verified | 78.0% | Mar 2026 (self-reported) |
| 9 | GLM-5 744B (Zhipu AI) | SWE-bench Verified | 77.8% | Mar 2026 (self-reported) |
| 10 | Claude Sonnet 4.5 (Anthropic) | SWE-bench Verified | 77.2% | Mar 2026 (self-reported) |

> Sonar (rank 7) is the highest **independently submitted** result — not self-reported by a model lab. Cost: $1.26/issue, avg 10.5 min/issue.

---

### SWE-bench Pro (Top 10) — SEAL Standardized Leaderboard

1,865 tasks across Python, Go, TypeScript, JavaScript from 41 active repositories. Standardized scaffold, 250-turn limit, uniform tooling. Operated by Scale AI.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 (Anthropic) | SWE-bench Pro | 45.9% | Dec 11, 2025 |
| 2 | Claude Sonnet 4.5 (Anthropic) | SWE-bench Pro | 43.6% | Sep 19, 2025 |
| 3 | Gemini 3 Pro Preview (Google) | SWE-bench Pro | 43.3% | Nov 26, 2025 |
| 4 | Claude Sonnet 4 (Anthropic) | SWE-bench Pro | 42.7% | Sep 19, 2025 |
| 5 | GPT-5 High (OpenAI) | SWE-bench Pro | 41.8% | Nov 26, 2025 |
| 6 | GPT-5.2 Codex (OpenAI) | SWE-bench Pro | 41.0% | Jan 27, 2026 |
| 7 | Claude Haiku 4.5 (Anthropic) | SWE-bench Pro | 39.5% | Sep 19, 2025 |
| 8 | Qwen3 Coder 480B (Alibaba) | SWE-bench Pro | 38.7% | Jan 27, 2026 |
| 9 | MiniMax 2.1 (MiniMax) | SWE-bench Pro | 36.8% | Jan 12, 2026 |
| 10 | Gemini 3 Flash (Google) | SWE-bench Pro | 34.6% | Jan 12, 2026 |

> Custom-scaffold self-reported results (non-standardized): OpenAI claims GPT-5.3-Codex at 56.8% with their own harness — a ~15-point lift over the SEAL score purely from scaffold design.

---

### SWE-rebench — Independent Decontaminated Leaderboard (Top 10)

Rolling 57-problem dataset from 46 repos. Standardized harness; contamination-flagged runs marked. Source: swe-rebench.com, Mar 20, 2026.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.6 (Anthropic) | SWE-rebench | 65.3% ($1.12/prob) | Mar 20, 2026 |
| 2 | GPT-5.2 medium (OpenAI) | SWE-rebench | 64.4% ($0.62/prob) | Mar 20, 2026 |
| 3 | GLM-5 (Zhipu AI) | SWE-rebench | 62.8% ($0.76/prob) | Mar 20, 2026 |
| 4 | GPT-5.4 medium (OpenAI) | SWE-rebench | 62.8% ($0.63/prob) | Mar 20, 2026 |
| 5 | Gemini 3.1 Pro Preview (Google) | SWE-rebench | 62.3% ($0.66/prob) | Mar 20, 2026 |
| 6 | DeepSeek-V3.2 (DeepSeek) | SWE-rebench | 60.9% ($0.75/prob) | Mar 20, 2026 |
| 7 | Claude Sonnet 4.6 (Anthropic) | SWE-rebench | 60.7% ($1.02/prob) | Mar 20, 2026 |
| 8 | Claude Sonnet 4.5 (Anthropic) | SWE-rebench | 60.0% ($1.18/prob) | Mar 20, 2026 |
| 9 | Qwen3.5-397B-A17B (Alibaba) | SWE-rebench | 59.9% ($1.18/prob) | Mar 20, 2026 |
| 10 | Step-3.5-Flash | SWE-rebench | 59.6% ($0.14/prob) | Mar 20, 2026 |

> Step-3.5-Flash at $0.14/problem is a notable cost outlier — competitive accuracy at ~8x lower cost than Anthropic models.

---

### Terminal-Bench 2.0 (Top 10)

89-task suite covering system administration, git ops, CI/CD debugging, environment management. Source: tbench.ai, Mar 2026.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | ForgeCode + GPT-5.4 | Terminal-Bench 2.0 | 81.8% | Mar 12, 2026 |
| 1 | ForgeCode + Claude Opus 4.6 | Terminal-Bench 2.0 | 81.8% | Mar 12, 2026 |
| 3 | TongAgents + Gemini 3.1 Pro | Terminal-Bench 2.0 | 80.2% | Mar 13, 2026 |
| 4 | SageAgent + GPT-5.3-Codex | Terminal-Bench 2.0 | 78.4% | Mar 13, 2026 |
| 4 | ForgeCode + Gemini 3.1 Pro | Terminal-Bench 2.0 | 78.4% | Mar 2, 2026 |
| 6 | Droid + GPT-5.3-Codex | Terminal-Bench 2.0 | 77.3% | Feb 24, 2026 |
| 7 | Capy + Claude Opus 4.6 | Terminal-Bench 2.0 | 75.3% | Mar 12, 2026 |
| 8 | Simple Codex + GPT-5.3-Codex | Terminal-Bench 2.0 | 75.1% | Feb 6, 2026 |
| 9 | Terminus-KIRA + Gemini 3.1 Pro | Terminal-Bench 2.0 | 74.8% | Feb 23, 2026 |
| 10 | Terminus-KIRA + Claude Opus 4.6 | Terminal-Bench 2.0 | 74.7% | Feb 22, 2026 |

> ForgeCode is the leading scaffold. TongAgents: BIGAI. Terminus-KIRA: KRAFTON AI. Scores cluster near 81%, suggesting near-saturation for frontier agents on this version.

---

### LiveCodeBench (Top 10)

Continuous anti-contamination competitive programming benchmark (LeetCode, AtCoder, CodeForces). Pass@1. Source: livecodebench.github.io, Apr 2026.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | DeepSeek-V3.2 Thinking (DeepSeek) | LiveCodeBench | 0.833 | Dec 1, 2025 |
| 2 | MiniMax M2 (MiniMax) | LiveCodeBench | 0.830 | Oct 27, 2025 |
| 3 | LongCat-Flash-Thinking-2601 (Meituan) | LiveCodeBench | 0.828 | Jan 14, 2026 |
| 4 | Nemotron 3 Super 120B (NVIDIA) | LiveCodeBench | 0.812 | Mar 11, 2026 |
| 5 | Grok-3 Mini (xAI) | LiveCodeBench | 0.804 | Feb 17, 2025 |
| 6 | Grok 4 Fast (xAI) | LiveCodeBench | 0.800 | Aug 28, 2025 |
| 7 | Grok-3 (xAI) | LiveCodeBench | 0.794 | Feb 17, 2025 |
| 7 | Grok-4 Heavy (xAI) | LiveCodeBench | 0.794 | Jul 9, 2025 |
| 7 | LongCat-Flash-Thinking (Meituan) | LiveCodeBench | 0.794 | Sep 22, 2025 |
| 10 | Grok-4 (xAI) | LiveCodeBench | 0.790 | Jul 9, 2025 |

> 202 models evaluated as of Apr 2026. Meituan's LongCat models are notable 2026 entrants. DeepSeek and xAI dominate; notable absence of Anthropic/OpenAI flagship models in top 10.

---

### HumanEval (Top 10) — Effectively Saturated

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2 0905 (Moonshot AI) | HumanEval | 0.945 | Sep 5, 2025 |
| 2 | Claude 3.5 Sonnet (Anthropic) | HumanEval | 0.937 | Oct 22, 2024 |
| 3 | GPT-5 (OpenAI) | HumanEval | 0.934 | Aug 7, 2025 |
| 4 | Kimi K2 Instruct (Moonshot AI) | HumanEval | 0.933 | Jul 11, 2025 |
| 5 | Qwen2.5-Coder 32B (Alibaba) | HumanEval | 0.927 | Sep 19, 2024 |
| 6 | o1-mini (OpenAI) | HumanEval | 0.924 | Sep 12, 2024 |
| 7 | Sarvam-30B (Sarvam AI) | HumanEval | 0.921 | Mar 6, 2026 |
| 8 | Mistral Large 2 (Mistral AI) | HumanEval | 0.920 | Jul 24, 2024 |
| 8 | Claude 3.5 Sonnet early (Anthropic) | HumanEval | 0.920 | Jun 21, 2024 |
| 10 | Qwen2.5 VL 32B (Alibaba) | HumanEval | 0.915 | Feb 28, 2025 |

> Top-10 spans only 3 points (0.915–0.945). No 2026-generation models appear as clear leaders. **HumanEval should not be used to differentiate current frontier models.**

---

## New Benchmarks & Methodology

| Benchmark | Announced | Description |
|-----------|-----------|-------------|
| **SWE-bench Pro** (GA) | Scale AI, Jan 27, 2026 | 1,865 multi-language tasks (Python, Go, TS, JS); anti-contamination design; now the recommended successor to Verified |
| **SWE-EVO** | arXiv, Jan 27, 2026 | Long-horizon software evolution; 48 tasks requiring ~21-file multi-step modifications; validated against 874-test suites per instance |
| **Terminal-Bench 2.0** | laude-institute, Feb 2026 | Major revision: removed step limits, added auxiliary interfaces with function signatures |
| **SWE-rebench** (rolling) | Independent, continuous | Auto-updating decontaminated SWE leaderboard; standardized scaffold; contamination-flagged runs marked in red; tracks cost-per-problem |
| **GDPval** | OpenAI-led, 2026 | Spans 44 knowledge-work occupations across top 9 GDP industries; measures economic task completion |
| **FrontierMath: Open Problems** | Epoch AI, Jan 27, 2026 | Tests AI on unsolved mathematical research problems |
| **METR Time-Horizon Benchmark** | METR, ongoing | Measures the time horizon at which a model reaches 50% success across RE-Bench, HCAST, SWAA |

---

## Notable Movements

### OpenAI Abandons SWE-bench Verified (Feb 23, 2026)
OpenAI announced it will no longer report results on SWE-bench Verified after an internal audit found:
- **59.4% of audited problems have flawed tests** that reject functionally correct solutions
- 35.5% use narrow tests requiring specific implementation details not stated in the problem
- 18.8% test for additional functionality never described in the problem
- All three frontier models tested (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) reproduced verbatim gold-patch code including specific variable names and inline comments — confirming training **contamination**

OpenAI now reports on SWE-bench Pro public split only.

### Contamination Confirmed Across All Frontier Labs
The ~80% scores on SWE-bench Verified collapsing to ~23–46% on Pro is a 35–57 point drop attributable to contamination and flawed test coverage. Models trained on or after the Verified dataset construction date cannot be cleanly evaluated on it.

### SWE-bench Cheating Detection Methodology Published (Nov 2025)
The SWE-bench team now runs automated exact-match checks (stripping comments, using `unidiff.PatchSet` hunk matching) on all submissions. Legitimate submissions show 2.4–6.7% exact-match rates. Any submission >20% is flagged. One submission (`20240820_honeycomb`) showed 78–87% exact-match — later determined to be a human upload error, not intentional cheating.

### METR Study: Benchmark Scores Overstate Real-World Utility (Mar 10, 2026)
METR had 4 active maintainers from scikit-learn, Sphinx, and pytest evaluate 296 AI-generated pull requests:
- **~50% of test-passing SWE-bench PRs would not be merged** by actual repo maintainers
- Maintainer merge rates were ~24 points below automated grader scores
- Human-written gold patches had 68% merge rate (noise-adjusted baseline)
- Primary rejections: code quality issues, breaking other code, core functionality failures
- Conclusion: naive benchmark scores significantly overestimate practical merge-readiness

### Scaffolding Gap on SWE-bench Pro
Claude Opus 4.5 evaluated on SWE-bench Pro via three different agent systems produces scores from **45.9% (SEAL standardized) to 55.4% (custom scaffold)** — a 10-point range from harness design alone. Labs reporting with proprietary scaffolding are not comparable to SEAL leaderboard entries.

### SWE-rebench Contamination Flagging
SWE-rebench marks evaluations where the benchmark task was created before the model's release date, providing the most systematic contamination-tracking of any live leaderboard. Also explicitly calls out labs that report pass@N as pass@1 without disclosure.

### Terminal-Bench Approaching Saturation
Top scores on Terminal-Bench 2.0 are clustered at ~81%, up from 40–45% when v2.0 launched. The benchmark may need another revision cycle to differentiate the current frontier.

### pass@N Misreported as pass@1
SWE-rebench documentation flags the practice of some labs reporting best-of-N results as single-attempt scores, inflating apparent performance without disclosure. Treat any score without explicit pass@1 / pass@N labeling with caution.
