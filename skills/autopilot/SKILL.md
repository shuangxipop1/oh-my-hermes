# Autopilot Skill

## Description
Full autonomous execution from idea to working code.

## Usage
```
/autopilot [task description]
```

## What It Does

Autopilot takes a task description and executes it end-to-end:

1. **Understand**: Analyzes requirements
2. **Plan**: Breaks down into steps
3. **Implement**: Executes with agents
4. **Verify**: Runs tests and checks
5. **Refine**: Fixes issues iteratively

## Autopilot Flow

```
[Task Input] → [Requirements Analysis]
    ↓
[Architecture Design] → [Architect Agent]
    ↓
[Implementation] → [Executor Agent]
    ↓
[Verification] → [Critic Agent]
    ↓
[Passes All Checks?] → [No] → [Fix Issues]
    ↓                         ↑
    [Yes] → [Done]
```

## Options

| Option | Description |
|--------|-------------|
| `--agent-tier=low` | Use faster agents |
| `--agent-tier=high` | Use more capable agents |
| `--no-tests` | Skip test generation |
| `--no-review` | Skip code review |

## Output

Autopilot produces:
- Implementation in target directory
- Tests (unless `--no-tests`)
- Documentation updates
- Verification report

## Example

```
/autopilot "build a REST API for managing tasks with users and projects"
```

This will:
1. Design the API structure
2. Implement the endpoints
3. Add authentication
4. Write tests
5. Verify everything works

## When to Use

✓ Building new features
✓ Implementing from scratch
✓ Need complete implementation
✓ Want minimal manual intervention

## When NOT to Use

✗ Exploration or research
✗ Quick fixes
✗ Manual control desired
✗ Very small tasks (overhead too high)

---

*Part of oh-my-hermes*
