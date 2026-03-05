# Skill: Deep Research

Multi-agent research system based on Anthropic's orchestrator-worker pattern.
Reference: https://www.anthropic.com/engineering/multi-agent-research-system

## When to use

Breadth-first queries that involve pursuing multiple independent directions
simultaneously — exploratory research, competitive analysis, literature review.

## Process

### 1. Plan

Analyze the query using extended thinking. Write a research plan before
spawning any subagents. Save the plan to a file (`research-plan.md`) so it
persists beyond context limits.

Decide effort level:
- **Simple fact-finding**: 1 subagent, 3-10 tool calls
- **Comparison / analysis**: 2-4 subagents with divided scope
- **Deep research**: 5+ subagents, each with distinct objectives

### 2. Delegate

Spawn subagents in parallel using the Agent tool. Each subagent gets:
- A specific research objective (not vague — e.g. "find Q1 2025 funding rounds
  in coding agent startups over $10M" not "research coding agent funding")
- Expected output format
- Tool guidance (which tools to use, source preferences)
- Task boundaries (what NOT to cover, to prevent duplicate work)

Each subagent independently:
- Performs iterative web searches, refining queries based on results
- Evaluates source quality (prefer primary sources, official docs, arxiv
  over SEO content farms)
- Identifies information gaps and runs follow-up searches
- Returns structured findings

### 3. Synthesize

Consolidate subagent results:
- Deduplicate overlapping findings
- Resolve contradictions between sources
- Identify remaining gaps — spawn additional subagents if needed
- Map every claim to a specific source URL

### 4. Deliver

Write the final report with inline citations. Every factual claim must
have a source link.

## Key principles

- **Explicit task boundaries** prevent subagents from duplicating work
- **Parallel execution** at two layers: multiple subagents + multiple tool
  calls per subagent
- **Source quality matters**: prefer authoritative sources, flag self-reported
  or unverified claims
- **Token budget awareness**: multi-agent uses ~15x more tokens than single
  chat — scale effort to query value
