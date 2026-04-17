---
name: ultraqa
description: QA cycling workflow - test, verify, fix, repeat until goal met. Iterative quality assurance.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [QA, Testing, Verification, Quality, Iteration]
    related_skills: [ralph, critic, debugger]
---

# Ultraqa — Hermes Integration Guide

QA cycling workflow - test, verify, fix, repeat until goal met.

## Prerequisites

- Hermes AI installed
- OMH (oh-my-hermes) installed

## Usage

```
/ultraqa [task]
/ultraqa --pass-criteria=[criteria]
```

## What Ultraqa Does

Ultraqa runs iterative QA cycles:

1. **Test**: Run test suite
2. **Verify**: Check results against criteria
3. **Fix**: Address any failures
4. **Repeat**: Continue until passing

## QA Cycle

```
[Run Tests] → [Passes Criteria?]
    ↓                    ↓
[No]              [Yes]
    ↓                    ↓
[Analyze] → [Fix] → [Retry]
    ↓
[Continue]
```

## Options

| Option | Description |
|--------|-------------|
| `--pass-criteria=X` | Success threshold |
| `--max-cycles=N` | Max iterations (default: 10) |
| `--coverage=TARGET` | Coverage target % |

## Pass Criteria

Criteria can be:
- Test count: `tests>=10`
- Coverage: `coverage>=80`
- All passing: `failures=0`
- Combined: `tests>=10 && coverage>=80`

## Example

```
/ultraqa "verify user authentication" --pass-criteria="coverage>=80 && failures=0"
```

## Exit Conditions

✓ All tests pass
✓ Coverage meets target
✓ Max cycles reached (reports partial results)

✗ Unrecoverable error
✗ User cancelled

## Use Cases

✓ Critical bug fixes
✓ Security verification
✓ Regression testing
✓ Pre-release QA

---

*Part of oh-my-hermes*
