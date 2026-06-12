---
name: cavepowers-tdd
description: Test first, always — compressed Superpowers TDD
triggers:
  - /cavepowers:tdd
  - /cavepowers:test-driven-development
---

# TDD (CavePowers)

Write test. Watch fail. Write code. Watch pass. Refactor.

## IRON LAW

```
NO PRODUCTION CODE WITHOUT A FAILING TEST FIRST
```

Wrote code before test? Delete it. Start over. No exceptions.

## Cycle

### RED
- Write one test — one behavior, clear name, real code
- Run it → must FAIL for right reason (feature missing, not typo)
- Test passes immediately? You're testing existing behavior. Fix test.

### GREEN
- Write minimal code to pass test
- No extra features. No refactoring other code.

### REFACTOR
- Only after green
- Remove duplication, improve names
- Keep tests green

### Repeat
Next failing test. Next behavior.

## Delete Means Delete

Kept as "reference"? That's testing after. Delete means delete.

## Red Flags → Delete Code, Start Over

- Code before test
- Test passes immediately
- "I'll test after"
- "Already manually tested"
- "Keep as reference"
- "TDD is overkill here"

## Output Rules (CavePowers active)

- Drop filler
- Use fragments
- Iron law: no production code before failing test
