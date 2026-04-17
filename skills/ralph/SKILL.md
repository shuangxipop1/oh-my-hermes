# Ralph Skill

## Description
Self-referential loop until task completion with configurable verification reviewer.

## Usage
```
/ralph [task description]
/ralph --critic=architect [task]
```

## What It Does

Ralph keeps working on a task until ALL acceptance criteria are verified:

1. **PRD Setup**: Creates prd.json with user stories
2. **Story-by-Story**: Implements and verifies each story
3. **Verification Loop**: Keeps iterating until approved
4. **Clean Exit**: Runs cancel to cleanup on success

## Options

| Option | Description |
|--------|-------------|
| `--critic=architect` | Use architect for verification (default) |
| `--critic=critic` | Use critic agent for verification |
| `--critic=codex` | Use Codex for verification |
| `--no-prd` | Skip PRD mode (not recommended) |
| `--no-deslop` | Skip deslop cleanup pass |

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
