---
name: cavepowers-systematic-debugging
description: Find root cause before any fix — compressed Superpowers debugging
triggers:
  - /cavepowers:systematic-debugging
  - /cavepowers:debug
---

# Systematic Debugging (CavePowers)

No fix without root cause. Always.

## IRON LAW

```
NO FIXES WITHOUT ROOT CAUSE INVESTIGATION FIRST
```

## 4 Phases (complete each before next)

### Phase 1: Root Cause
- Read error messages completely — stack traces, line numbers, codes
- Reproduce consistently — exact steps, every time
- Check recent changes — git diff, new deps, config
- Multi-component systems → add diagnostic logs at each boundary, run once, analyze evidence

### Phase 2: Pattern Analysis
- Find working similar code
- Compare working vs broken — list every difference
- Read reference implementations completely — no skimming

### Phase 3: Hypothesis
- One hypothesis: "X is root cause because Y"
- Smallest possible change to test
- One variable at a time
- Verify before continuing

### Phase 4: Implementation
- Write failing test first
- Fix root cause (not symptom)
- Verify fix
- If fix fails → return to Phase 1

## 3+ Fixes Failed?

Stop. Question architecture. Not a failed hypothesis — wrong architecture. Discuss before fix #4.

## Red Flags → Return to Phase 1

- "Quick fix for now"
- "Just try changing X"
- "It's probably X"
- "I don't fully understand but this might work"
- Fix #3 attempted

## Output Rules (CavePowers active)

- Drop filler
- Use fragments
- Iron law: no fix before root cause confirmed
