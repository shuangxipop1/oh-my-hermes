---
name: autopilot
description: Full autonomous execution from idea to working code. Takes a task description and executes it end-to-end using multi-agent orchestration.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [Autonomous, Multi-Agent, Orchestration, Automation, Coding]
    related_skills: [ralph, ultrawork, team, plan]
---

# Autopilot — Hermes Integration Guide

Full autonomous execution from idea to working code using multi-agent orchestration.

## Prerequisites

- Hermes AI installed
- OMH (oh-my-hermes) installed: `npm i -g oh-my-hermes-sisyphus@latest`
- Node.js >= 20.0.0

## Two Usage Modes

### Mode 1: Direct Hermes Skill Invocation

```
/autopilot build a REST API for managing tasks
```

This delegates to the autopilot skill which orchestrates agents automatically.

### Mode 2: Terminal Command with omh

```bash
# From terminal
omh autopilot "build a REST API"

# Or use the npm package directly
npx oh-my-hermes-sisyphus autopilot "build a REST API"
```

## What Autopilot Does

1. **Understand**: Analyzes requirements
2. **Plan**: Breaks down into steps
3. **Implement**: Executes with agents (architect, executor, critic)
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

## Example Tasks

```
/autopilot "build a user authentication system with JWT"
/autopilot "create a REST API for blog posts with comments"
/autopilot "implement a task queue with Redis"
```

## Output

Autopilot produces:
- Implementation in target directory
- Tests (unless `--no-tests`)
- Documentation updates
- Verification report

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

## Integration with Hermes

Autopilot uses Hermes's native capability to invoke skills. When you call `/autopilot`, Hermes:

1. Loads the skill definition from `~/.hermes/omh/autopilot/SKILL.md`
2. Parses the task description
3. Orchestrates sub-agents as needed
4. Reports results back to you

## Troubleshooting

**Skill not found**: Ensure OMH is installed and skills are in `~/.hermes/omh/`

**Permission errors**: Run `hermes skills audit` to refresh skill registry

---

*Part of oh-my-hermes multi-agent orchestration system*
