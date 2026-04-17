---
name: ralph
description: Self-referential loop until task completion with configurable verification reviewer. PRD-driven persistence loop.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [Persistence, Verification, PRD, Loop, Quality]
    related_skills: [autopilot, ultraqa, critic]
---

# Ralph — Hermes Integration Guide

Self-referential loop until task completion with configurable verification reviewer.

## Prerequisites

- Hermes AI installed
- OMH (oh-my-hermes) installed
- prd.json file (auto-created or provided)

## Usage

```
/ralph [task description]
/ralph --critic=architect [task]
/ralph --critic=critic [task]
```

## What Ralph Does

Ralph keeps working on a task until ALL acceptance criteria are verified:

1. **PRD Setup**: Creates prd.json with user stories
2. **Story-by-Story**: Implements and verifies each story
3. **Verification Loop**: Keeps iterating until approved
4. **Clean Exit**: Runs cancel to cleanup on success

## Ralph Flow

```
[Start] → [Create/Read prd.json] → [Pick next story]
    ↓
[Implement story] → [Verify criteria] → [Mark complete?]
    ↓                                      ↓
[All stories done?] ← [No]                 [Yes]
    ↓
[Reviewer verification] → [Approved?]
    ↓                           ↓
[No: Fix issues]    [Yes: Deslop pass]
    ↓                           ↓
[Rerun verification]    [Regressions pass?]
                                   ↓
                            [Run /cancel]
                                   ↓
                              [Done]
```

## Options

| Option | Description |
|--------|-------------|
| `--critic=architect` | Use architect for verification (default) |
| `--critic=critic` | Use critic agent for verification |
| `--no-deslop` | Skip deslop cleanup pass |

## PRD Format

```json
{
  "stories": [
    {
      "id": "US-001",
      "description": "User story description",
      "acceptanceCriteria": [
        "Criterion 1",
        "Criterion 2"
      ],
      "passes": false
    }
  ]
}
```

## Progress Tracking

Progress is tracked in `progress.txt`:
- Implementation details
- Files changed
- Learnings for future iterations
- Blockers encountered

## When to Use

✓ Task requires guaranteed completion
✓ Work may span multiple iterations
✓ Verification required before completion
✓ Task benefits from structured approach

## When NOT to Use

✗ Quick one-shot fix
✗ User wants manual control
✗ Want to explore/plan first

---

*Part of oh-my-hermes*
