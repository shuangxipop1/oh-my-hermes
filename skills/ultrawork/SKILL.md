---
name: ultrawork
description: High-throughput parallel execution engine for task completion. Executes multiple independent tasks in parallel.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [Parallel, Execution, High-Throughput, Automation]
    related_skills: [autopilot, team, ralph]
---

# Ultrawork — Hermes Integration Guide

High-throughput parallel execution engine for task completion.

## Prerequisites

- Hermes AI installed
- OMH (oh-my-hermes) installed

## Usage

```
/ultrawork [task list]
/ultrawork --parallel [task1] --parallel [task2]
```

## What Ultrawork Does

Ultrawork executes multiple independent tasks in parallel:

1. **Analyze**: Identifies task dependencies
2. **Parallelize**: Groups independent tasks
3. **Execute**: Runs tasks concurrently
4. **Collect**: Gathers results
5. **Report**: Summarizes outcomes

## Options

| Option | Description |
|--------|-------------|
| `--parallel` | Run task in parallel |
| `--sequential` | Run task sequentially |
| `--max-workers=N` | Max parallel tasks (default: 5) |
| `--fail-fast` | Stop on first failure |

## Task Format

Tasks can be specified as:
- Natural language: "implement user authentication"
- Structured: "implement:auth|test:auth|review:auth"
- File-based: "read:src/api.ts|edit:src/api.ts"

## Parallel Execution

Independent tasks run together:
```
Task A ──┐
Task B ──┼──→ [Results] → [Summary]
Task C ──┘
```

Sequential tasks wait:
```
Task A → Task B → Task C → [Results]
```

## Example

```
/ultrawork --parallel "implement login" --parallel "implement logout" --parallel "implement signup"
```

## Use Cases

✓ Multiple independent features
✓ Parallel test runs
✓ Simultaneous code generation
✓ Concurrent API implementations

---

*Part of oh-my-hermes*
