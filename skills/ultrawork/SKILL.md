# Ultrawork Skill

## Description
High-throughput parallel execution engine for task completion.

## Usage
```
/ultrawork [task list]
/ultrawork --parallel [task1] --parallel [task2]
```

## What It Does

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

## Tips

- Group related tasks together
- Use `--max-workers` to control load
- Use `--fail-fast` for critical pipelines

---

*Part of oh-my-hermes*
