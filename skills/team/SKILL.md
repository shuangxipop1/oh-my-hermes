---
name: team
description: N coordinated agents on shared task list using Hermes native team mode. Multi-agent coordination and orchestration.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [Multi-Agent, Team, Coordination, Orchestration]
    related_skills: [autopilot, ultrawork, planner]
---

# Team — Hermes Integration Guide

N coordinated agents on shared task list using Hermes native team mode.

## Prerequisites

- Hermes AI installed
- OMH (oh-my-hermes) installed

## Usage

```
/team [task description]
/team --agents=architect,executor,critic [task]
```

## What Team Does

Team orchestrates multiple agents working together:

1. **Role Assignment**: Distributes tasks to agents
2. **Task Queue**: Manages shared task list
3. **Coordination**: Handles dependencies
4. **Communication**: Agents share context
5. **Completion**: Aggregates results

## Built-in Teams

| Team | Agents |
|------|--------|
| `default` | architect, executor, critic |
| `debug` | debugger, executor |
| `full` | architect, executor, critic, planner, tester |
| `research` | researcher, analyst |

## Options

| Option | Description |
|--------|-------------|
| `--agents=A,B,C` | Custom agent list |
| `--team=NAME` | Use predefined team |
| `--max-agents=N` | Max concurrent agents |

## Team Flow

```
[Coordinator] → assigns tasks
       ↓
[Agent 1] ──┐
[Agent 2] ──┼──→ [Task Queue] → [Results]
[Agent 3] ──┘
       ↓
[Coordinator] → aggregates results
```

## Example

```
/team "implement e-commerce checkout flow"
```

This spawns:
1. Architect → designs checkout flow
2. Executor → implements features
3. Critic → reviews code
4. All coordinate via shared task list

## Custom Teams

Create custom teams with agent combinations:

```
/team --agents=architect,executor,tester "new feature"
```

## Task Format

Tasks in team mode:
- `done:task-id` - Mark complete
- `block:task-id:reason` - Mark blocked
- `help:task-id:agent` - Request help

---

*Part of oh-my-hermes*
