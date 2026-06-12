---
name: cavepowers-parallel-agents
description: Multiple independent agents in parallel — compressed Superpowers dispatching
triggers:
  - /cavepowers:parallel-agents
  - /cavepowers:dispatch
---

# Dispatching Parallel Agents (CavePowers)

Independent problems → one agent each → all run concurrently.

## When to Use

Use when:
- 3+ failures in different files/subsystems
- Each problem understandable without context from others
- No shared state between investigations

Don't use when:
- Failures related (fix one may fix others)
- Agents would edit same files
- Still exploring what's broken

## Pattern

### 1. Identify Independent Domains
Group by what's broken — auth flow, batch logic, race conditions = 3 domains.

### 2. Craft Agent Prompts
Each agent gets:
- Specific scope (one file or subsystem)
- Clear goal (make these tests pass)
- Constraints (don't touch other code)
- Expected output (summary of root cause + changes)

### 3. Dispatch in Parallel
All agents run concurrently — not sequentially.

### 4. Integrate
- Read each summary
- Check for conflicts (same file edited?)
- Run full test suite
- Spot check agent changes

## Good Agent Prompt Template

```
Fix the N failing tests in `path/to/test.file`:

1. "test name" — expected behavior
2. "test name" — expected behavior

Your task:
1. Read test file, understand what each test verifies
2. Identify root cause
3. Fix

Do NOT change [other files / production code / unrelated tests].

Return: summary of root cause + what you changed.
```

## Output Rules (CavePowers active)

- Drop filler
- Use fragments
- Iron law: one agent per independent domain, not per file
