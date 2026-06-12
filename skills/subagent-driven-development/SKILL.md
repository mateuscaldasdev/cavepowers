---
name: cavepowers-subagent-driven
description: Execute plan via fresh subagent per task with review between each
triggers:
  - /cavepowers:run-subagent
---

# Subagent-Driven Execution (CavePowers)

One subagent per task. Review between tasks. Fresh context every time.

## Before Starting

- Read plan file completely
- Announce: "Executing via subagents. Task 1: [name]."

## Per Task

### Dispatch
Craft subagent prompt with:
- Full task content from plan (copy verbatim — subagent has no session context)
- Exact files to create/modify
- Exact steps to follow
- Expected output: "Return summary of what you did and any issues"

### Review
After subagent returns:
- Read summary
- Verify files changed match plan
- Run verification command from plan
- If issues → dispatch fix subagent before continuing

### Checkpoint
> "Task N done via subagent. [one line summary]. Continue to Task N+1?"

Wait for user confirmation.

## Subagent Prompt Template

```
Execute Task N from the CavePowers implementation plan.

Task: [name]

Files:
- Create: [exact paths]
- Modify: [exact paths]

Steps:
[paste steps verbatim from plan]

Return: one-paragraph summary of what you created/changed and any issues encountered.
```

## Never

- Reuse subagent from previous task (always fresh)
- Skip review between tasks
- Continue after failed verification

## Output Rules (CavePowers active)

- Drop filler
- Use fragments
- One subagent per task — no batching
