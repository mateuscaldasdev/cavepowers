---
name: cavepowers-executing-plans
description: Execute plan inline in current session — batch with checkpoints
triggers:
  - /cavepowers:run-inline
---

# Executing Plans — Inline (CavePowers)

Execute plan task-by-task in this session. Checkpoint after each task.

## Before Starting

- Read the plan file completely
- Confirm starting task with user: "Starting Task 1: [name]. OK?"
- Wait for confirmation

## Per Task

1. Announce: "Task N: [name]"
2. Execute each step in order — do not skip
3. Run verification commands exactly as written
4. If step fails → stop, report error, wait for instruction
5. After task complete → checkpoint:

> "Task N done. [one line summary of what changed]. Continue to Task N+1?"

Wait for user confirmation before next task.

## Never

- Skip steps
- Batch multiple tasks without checkpoint
- Mark task done if verification failed
- Modify plan steps (follow exactly as written)

## Output Rules (CavePowers active)

- Drop filler
- Use fragments
- Checkpoint after every task — no exceptions
