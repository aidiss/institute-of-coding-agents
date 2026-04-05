---
date: 2026-04-05
category: benchmarks
prompt_hash: 486be8fbcc63a30b15d45ab77ddd4976aeca390c
prompt_url: https://github.com/aidiss/institute-of-coding-agents
---

# Benchmarks — 2026-04-05

## Leaderboard

### SWE-bench Verified (Top 10)

500 manually curated Python GitHub issues. **Warning: contamination confirmed across all frontier labs; OpenAI abandoned this benchmark on 2026-02-23. All top scores are self-reported by model providers unless noted.**

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Claude Opus 4.5 (Anthropic) | SWE-bench Verified | 80.9% | ~Feb 2026 (self-reported) |
| 2 | Claude Opus 4.6 (Anthropic) | SWE-bench Verified | 80.8% | ~Mar 2026 (self-reported) |
| 3 | Gemini 3.1 Pro (Google) | SWE-bench Verified | 80.6% | ~Mar 2026 (self-reported) |
| 4 | MiniMax M2.5 (MiniMax) | SWE-bench Verified | 80.2% | ~Mar 2026 (self-reported) |
| 5 | GPT-5.2 (OpenAI) | SWE-bench Verified | 80.0% | ~Feb 2026 (self-reported) |
| 6 | Claude Sonnet 4.6 (Anthropic) | SWE-bench Verified | 79.6% | ~Mar 2026 (self-reported) |
| 7 | Qwen3.6 Plus (Alibaba) | SWE-bench Verified | 78.8% | ~Mar 2026 (self-reported) |
| 8 | Gemini 3 Flash (Google) | SWE-bench Verified | 78.0% | ~Mar 2026 (self-reported) |
| 8 | MiMo-V2-Pro (Xiaomi) | SWE-bench Verified | 78.0% | ~Mar 2026 (self-reported) |
| 10 | GLM-5 744B (Zhipu AI) | SWE-bench Verified | 77.8% | ~Mar 2026 (self-reported) |

> **All 80+ entries are self-reported. Zero are independently verified.** The official swebench.com "bash-only" scaffold shows Claude 4.5 Opus at 76.8% — a ~4-point gap vs. vendor-reported numbers from proprietary scaffolds. Per SWE-bench's own cheating detection (exact-match hunk analysis), a score >20% exact-match is flagged as suspicious; all frontier models tested by OpenAI reproduced verbatim gold patches including variable names not present in problem descriptions.

---

### SWE-bench Pro (Top 10) — SEAL Standardized Leaderboard

1,865 tasks across Python, Go, TypeScript, JavaScript from 41 active repositories (GPL and private commercial repos to reduce contamination). Standardized SWE-Agent scaffold, 250-turn limit. Operated by Scale AI. Recommended successor to SWE-bench Verified by OpenAI.

| Rank | Agent | Benchmark | Score | CI | Date |
|------|-------|-----------|-------|-----|------|
| 1 | Claude Opus 4.5 (Anthropic) | SWE-bench Pro | 45.9% | ±3.6 | Dec 11, 2025 |
| 2 | Claude Sonnet 4.5 (Anthropic) | SWE-bench Pro | 43.6% | ±3.6 | Sep 19, 2025 |
| 3 | Gemini 3 Pro Preview (Google) | SWE-bench Pro | 43.3% | ±3.6 | Nov 26, 2025 |
| 4 | Claude Sonnet 4 (Anthropic) | SWE-bench Pro | 42.7% | ±3.6 | Sep 19, 2025 |
| 5 | GPT-5 High (OpenAI) | SWE-bench Pro | 41.8% | ±3.5 | Nov 26, 2025 |
| 6 | GPT-5.2 Codex (OpenAI) | SWE-bench Pro | 41.0% | ±3.6 | Jan 27, 2026 |
| 7 | Claude Haiku 4.5 (Anthropic) | SWE-bench Pro | 39.5% | ±3.6 | Sep 19, 2025 |
| 8 | Qwen3 Coder 480B (Alibaba) | SWE-bench Pro | 38.7% | ±3.6 | Jan 27, 2026 |
| 9 | MiniMax 2.1 (MiniMax) | SWE-bench Pro | 36.8% | ±3.6 | Jan 12, 2026 |
| 10 | Gemini 3 Flash (Google) | SWE-bench Pro | 34.6% | ±3.6 | Jan 12, 2026 |

> Custom-scaffold self-reported results (non-standardized): OpenAI claims GPT-5.3-Codex at ~57% with proprietary harness — a ~15-point lift over SEAL score purely from scaffold design. Claude Opus 4.5 similarly ranges from 45.9% (SEAL) to ~55% (custom scaffold). **Labs reporting with proprietary scaffolding are not directly comparable to SEAL entries.**

---

### SWE-rebench — Independent Decontaminated Leaderboard (Top 10)

Rolling 57-problem dataset from 46 repos (window: Jan 2 – Mar 1, 2026). Standardized scaffold; contamination-flagged runs marked. Source: swe-rebench.com, Mar 20, 2026.

| Rank | Agent | Benchmark | Score | Cost/problem | Date |
|------|-------|-----------|-------|-------------|------|
| 1 | Claude Opus 4.6 (Anthropic) | SWE-rebench | 65.3% | $1.12 | Mar 20, 2026 |
| 2 | GPT-5.2 medium (OpenAI) | SWE-rebench | 64.4% | $0.62 | Mar 20, 2026 |
| 3 | GLM-5 (Zhipu AI) | SWE-rebench | 62.8% | $0.76 | Mar 20, 2026 |
| 4 | GPT-5.4 medium (OpenAI) | SWE-rebench | 62.8% | $0.63 | Mar 20, 2026 |
| 5 | Gemini 3.1 Pro Preview (Google) | SWE-rebench | 62.3% | $0.66 | Mar 20, 2026 |
| 6 | DeepSeek-V3.2 (DeepSeek) | SWE-rebench | 60.9% | $0.75 | Mar 20, 2026 |
| 7 | Claude Sonnet 4.6 (Anthropic) | SWE-rebench | 60.7% | $1.02 | Mar 20, 2026 |
| 8 | Claude Sonnet 4.5 (Anthropic) | SWE-rebench | 60.0% | $1.18 | Mar 20, 2026 |
| 9 | Qwen3.5-397B-A17B (Alibaba) | SWE-rebench | 59.9% | $1.18 | Mar 20, 2026 |
| 10 | Step-3.5-Flash | SWE-rebench | 59.6% | $0.14 | Mar 20, 2026 |

> Step-3.5-Flash at $0.14/problem is a notable cost-efficiency outlier — competitive accuracy at ~8x lower cost than Anthropic models. SWE-rebench also explicitly flags labs that report pass@N as pass@1 without disclosure.

---

### Terminal-Bench 2.0 (Top 10)

89-task suite covering software engineering, system administration, biology, security, and gaming — each in isolated Docker containers with automated verification. Source: tbench.ai, Mar 2026.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | ForgeCode + GPT-5.4 | Terminal-Bench 2.0 | 81.8% ±2.0 | Mar 12, 2026 |
| 1 | ForgeCode + Claude Opus 4.6 | Terminal-Bench 2.0 | 81.8% ±1.7 | Mar 12, 2026 |
| 3 | TongAgents + Gemini 3.1 Pro | Terminal-Bench 2.0 | 80.2% ±2.6 | Mar 13, 2026 |
| 4 | SageAgent + GPT-5.3-Codex | Terminal-Bench 2.0 | 78.4% ±2.2 | Mar 13, 2026 |
| 4 | ForgeCode + Gemini 3.1 Pro | Terminal-Bench 2.0 | 78.4% ±1.8 | Mar 2, 2026 |
| 6 | Droid + GPT-5.3-Codex | Terminal-Bench 2.0 | 77.3% | Feb 24, 2026 |
| 7 | Capy + Claude Opus 4.6 | Terminal-Bench 2.0 | 75.3% | Mar 12, 2026 |
| 8 | Simple Codex + GPT-5.3-Codex | Terminal-Bench 2.0 | 75.1% | Feb 6, 2026 |
| 9 | Terminus-KIRA + Gemini 3.1 Pro | Terminal-Bench 2.0 | 74.8% | Feb 23, 2026 |
| 10 | Terminus-KIRA + Claude Opus 4.6 | Terminal-Bench 2.0 | 74.7% | Feb 22, 2026 |

> All entries self-reported; zero independently verified. ForgeCode is the leading scaffold. Top scores cluster near 81%, suggesting near-saturation for frontier agents on this version. TongAgents: BIGAI; Terminus-KIRA: KRAFTON AI. Scaffold choice drives large score differences — the llm-stats model-only leaderboard shows GPT-5.3 Codex at 77.3%, a ~4-point gap vs. ForgeCode scaffold for the same model class.

---

### LiveCodeBench (Top 10)

Continuous anti-contamination benchmark sourcing problems from LeetCode, Codeforces, and AtCoder published after each model's training cutoff. Pass@1. Date-windowed per model to prevent contamination. Source: livecodebench.github.io / llm-stats.com, Apr 2026. 202 models evaluated; all self-reported.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | DeepSeek-V3.2 Thinking (DeepSeek) | LiveCodeBench | 83.3% | Dec 1, 2025 |
| 2 | MiniMax M2 (MiniMax) | LiveCodeBench | 83.0% | Oct 27, 2025 |
| 3 | LongCat-Flash-Thinking-2601 (Meituan) | LiveCodeBench | 82.8% | Jan 14, 2026 |
| 4 | Nemotron 3 Super 120B (NVIDIA) | LiveCodeBench | 81.2% | Mar 11, 2026 |
| 5 | Grok-3 Mini (xAI) | LiveCodeBench | 80.4% | Feb 17, 2025 |
| 6 | Grok 4 Fast (xAI) | LiveCodeBench | 80.0% | Aug 28, 2025 |
| 7 | Grok-3 (xAI) | LiveCodeBench | 79.4% | Feb 17, 2025 |
| 7 | Grok-4 Heavy (xAI) | LiveCodeBench | 79.4% | Jul 9, 2025 |
| 7 | LongCat-Flash-Thinking (Meituan) | LiveCodeBench | 79.4% | Sep 22, 2025 |
| 10 | Grok-4 (xAI) | LiveCodeBench | 79.0% | Jul 9, 2025 |

> Notable: Anthropic and OpenAI flagship models absent from top 10. DeepSeek, xAI, and Meituan dominate. A separate "LiveCodeBench Pro" variant exists with only 3 models evaluated (different scoring system). LiveCodeBench is among the more trustworthy benchmarks due to structural date-gating preventing memorization.

---

### HumanEval (Top 10) — Effectively Saturated

164 function-level Python coding problems. Top-10 gap is ~3 points; frontier models indistinguishable. All self-reported. Not recommended for comparing current frontier models.

| Rank | Agent | Benchmark | Score | Date |
|------|-------|-----------|-------|------|
| 1 | Kimi K2 0905 (Moonshot AI) | HumanEval | 94.5% | Sep 5, 2025 |
| 2 | Claude 3.5 Sonnet (Anthropic) | HumanEval | 93.7% | Oct 22, 2024 |
| 3 | GPT-5 (OpenAI) | HumanEval | 93.4% | Aug 7, 2025 |
| 4 | Kimi K2 Instruct (Moonshot AI) | HumanEval | 93.3% | Jul 11, 2025 |
| 5 | Qwen2.5-Coder 32B (Alibaba) | HumanEval | 92.7% | Sep 19, 2024 |
| 6 | o1-mini (OpenAI) | HumanEval | 92.4% | Sep 12, 2024 |
| 7 | Sarvam-30B (Sarvam AI) | HumanEval | 92.1% | Mar 6, 2026 |
| 8 | Mistral Large 2 (Mistral AI) | HumanEval | 92.0% | Jul 24, 2024 |
| 9 | Qwen2.5 VL 32B (Alibaba) | HumanEval | 91.5% | Feb 28, 2025 |
| 10 | GPT-4o (OpenAI) | HumanEval | 90.2% | May 13, 2024 |

> Models experience a reported 20–31 point drop on HumanEvalNext (harder variant), strongly suggesting current top scores are inflated by benchmark familiarity. No 2026-generation frontier model appears as a clear leader. **Benchmark is not useful for ranking current frontier models.**

---

### Aider Polyglot (Top 6)

225 Exercism exercises across C++, Go, Java, JavaScript, Python, Rust. Open and reproducible methodology; cost tracked per run. Source: aider.chat, early 2026.

| Rank | Agent | Benchmark | Score | Cost/run | Date |
|------|-------|-----------|-------|---------|------|
| 1 | GPT-5 High (OpenAI) | Aider Polyglot | 88.0% | $29.08 | 2026 |
| 2 | GPT-5 Medium (OpenAI) | Aider Polyglot | 86.7% | $17.69 | 2026 |
| 3 | O3-Pro High (OpenAI) | Aider Polyglot | 84.9% | $146.32 | 2026 |
| 4 | Gemini 2.5 Pro 32k thinking (Google) | Aider Polyglot | 83.1% | $49.88 | 2026 |
| 5 | GPT-5 Low (OpenAI) | Aider Polyglot | 81.3% | $10.37 | 2026 |
| 5 | O3 High (OpenAI) | Aider Polyglot | 81.3% | $21.23 | 2026 |

> O3-Pro High achieves 84.9% at $146.32/run vs. GPT-5 Medium at 86.7% for $17.69 — a cost-performance inversion. Open, reproducible methodology makes Aider Polyglot one of the more trustworthy coding benchmarks.

---

## New Benchmarks & Methodology

| Benchmark | Announced | Description |
|-----------|-----------|-------------|
| **SWE-bench Pro** (GA) | Scale AI, Sep 2025 | 1,865 multi-language tasks (Python, Go, TS, JS); copyleft/private repos to reduce contamination; now endorsed by OpenAI as Verified replacement |
| **SWE-EVO** | arXiv, Jan 27, 2026 | Long-horizon software evolution; 48 tasks requiring ~21-file multi-step modifications; validated against 874-test suites per instance |
| **Terminal-Bench 2.0** | tbench.ai, Nov 2025 | Major revision of Terminal-Bench: 89 tasks, removed step limits, added auxiliary interfaces with function signatures; ICLR 2026 accepted paper |
| **SWE-bench-Live** | Microsoft Research / NeurIPS 2025 | Rolling benchmark adding 50 new GitHub issues monthly across multiple languages; Windows/PowerShell variant added |
| **SWE-rebench** (rolling) | Independent, continuous | Auto-updating decontaminated SWE leaderboard; standardized scaffold; contamination-flagged runs marked in red; tracks cost-per-problem |
| **BigCodeBench** | ICLR 2025 | 1,140 complex multi-library tasks; Hard subset (~150 tasks); human performance 97%, best AI ~35% on Hard |
| **LiveBench** | 2026 | 23 contamination-free tasks: Coding, Agentic Coding, Data Analysis, Math, Reasoning; rotating questions with delayed public release |
| **LiveCodeBench Pro** | 2026 | Harder variant of LiveCodeBench; only 3 models evaluated as of Apr 2026 |

---

## Notable Movements

### OpenAI Abandons SWE-bench Verified (Feb 23, 2026)
OpenAI announced it will no longer report results on SWE-bench Verified after an internal audit found:
- **59.4% of audited failure tasks have flawed tests** that reject functionally correct solutions
- 35.5% use narrow tests requiring specific implementation details not stated in the problem
- 18.8% test for additional functionality never described in the problem
- All three frontier models tested (GPT-5.2, Claude Opus 4.5, Gemini 3 Flash) could **reproduce verbatim gold-patch code** including specific variable names and inline comments — confirming training contamination

OpenAI now reports on SWE-bench Pro public split only and endorses Scale AI's SEAL standardized leaderboard.

### Score Collapse: Verified vs. Pro
Models scoring 70–80% on SWE-bench Verified score approximately 23–46% on SWE-bench Pro's public split — a 35–57 point drop attributable to contamination, flawed test coverage, and scaffold normalization. The gap is the most direct evidence of benchmark gaming at scale.

### Scaffolding Inflation Confirmed Quantitatively
Claude Opus 4.5 evaluated on SWE-bench Pro via different agent systems: **45.9% (SEAL standardized) to ~55% (custom scaffold)** — a 9-point range from harness design alone. OpenAI similarly claims GPT-5.3-Codex at ~57% with proprietary harness vs. 41% in the SEAL leaderboard. Scaffold choice is now a first-class variable in benchmark interpretation.

### pass@N Misreported as pass@1
SWE-rebench documentation explicitly flags labs reporting best-of-N results as single-attempt scores without disclosure. Treat any score without explicit pass@1 / pass@N labeling with caution, especially for high-profile model releases.

### METR Study: Benchmark Scores Overstate Real-World Utility (Mar 10, 2026)
METR had 4 active maintainers from scikit-learn, Sphinx, and pytest evaluate 296 AI-generated pull requests:
- ~50% of test-passing SWE-bench PRs **would not be merged** by actual repo maintainers
- Maintainer merge rates were ~24 points below automated grader scores
- Human-written gold patches had 68% merge rate (noise-adjusted baseline)
- Primary rejections: code quality issues, breaking other code, core functionality failures
- Conclusion: naive benchmark scores significantly overestimate practical merge-readiness

### Terminal-Bench 2.0 Approaching Saturation
Top scores cluster at ~81%, up from 40–45% when v2.0 launched in November 2025. The benchmark may require another revision cycle to differentiate the current frontier.

### Industry-Wide Self-Reporting Problem Unresolved
As of April 5, 2026: no major coding benchmark (SWE-bench Verified, SWE-bench Pro SEAL, Terminal-Bench, LiveCodeBench, Aider Polyglot) has independently verified results. Every score on every leaderboard is self-submitted by the model developer or their agent. The Register (November 2025) published an investigation noting there are no industry standards for contamination detection and no enforcement mechanisms.
