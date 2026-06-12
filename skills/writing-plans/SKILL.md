---
name: cavepowers-writing-plans
description: Detailed implementation plans for agents — compressed Superpowers writing-plans
triggers:
  - /cavepowers:writing-plans
  - /cavepowers:plan
---

# Writing Plans (CavePowers)

Plans for engineers with zero codebase context. Every step: exact files, exact code, exact commands.

## Plan Header (required)

```markdown
# [Feature] Implementation Plan

> **For agentic workers:** Use /cavepowers:run-subagent (recommended) or /cavepowers:run-inline.

**Goal:** [one sentence]
**Architecture:** [2-3 sentences]
**Tech Stack:** [key technologies]
---
```

## Task Structure

Each task:
- Files: exact paths to create/modify/test
- Steps with checkboxes
- Code blocks for every code step
- Exact run commands + expected output
- Commit step

## Granularity

Each step = one action (2-5 min):
- "Write failing test" → step
- "Run, verify fails" → step
- "Write minimal implementation" → step
- "Run, verify passes" → step
- "Commit" → step

## No Placeholders — Ever

Never write:
- "TBD", "TODO", "implement later"
- "Add error handling" (show the code)
- "Write tests for the above" (show the test)
- "Similar to Task N" (repeat the code)

## Save to

`docs/superpowers/plans/YYYY-MM-DD-<feature>.md`

## Self-Review After Writing

1. Spec coverage — every requirement has a task?
2. Placeholder scan — no TBDs?
3. Type consistency — method names match across tasks?

## Execution Handoff (mandatory after saving plan)

Ask the user:

> "Plano salvo em `<path>`. Como quer executar?
>
> 1. **/cavepowers:run-subagent** (recomendado) — subagente por task, revisão entre cada uma
> 2. **/cavepowers:run-inline** — execução em batch nesta sessão com checkpoints"

Wait for answer. Then invoke the chosen skill.

## Output Rules (CavePowers active)

- Drop filler
- Use fragments
- No placeholders — ever
- Iron law: every step has exact code
