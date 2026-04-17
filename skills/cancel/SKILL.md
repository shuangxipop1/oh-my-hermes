# Cancel Skill

## Description
Cancel any active OMH mode and clean up state files.

## Usage
```
/cancel
/cancel --all
/cancel --force
```

## What It Cancels

| Mode | Skill | Effect |
|------|-------|--------|
| Autopilot | `/autopilot` | Stops execution |
| Ralph | `/ralph` | Exits persistence loop |
| Ultrawork | `/ultrawork` | Stops parallel tasks |
| Team | `/team` | Terminates agents |
| Swarm | `/swarm` | Ends swarm mode |

## Options

| Option | Description |
|--------|-------------|
| `--all` | Cancel all active modes |
| `--force` | Force cleanup without confirmation |
| `--keep-state` | Preserve state files |

## What It Does

1. **Stops Active Loops**
   - Terminates persistence loops
   - Stops parallel execution
   - Ends agent coordination

2. **Cleans Up State**
   - Removes temp files
   - Clears progress tracking
   - Resets state flags

3. **Reports Status**
   - Shows what was cancelled
   - Lists any remaining tasks
   - Provides summary

## Examples

```
/cancel                    # Cancel current mode
/cancel --all              # Cancel all active modes
/cancel --force           # Force immediate cancel
```

## Safety

- Cancel is safe to run anytime
- No data loss (only temp files)
- Can restart modes after cancel
- Use `--keep-state` if you want to resume later

---

*Part of oh-my-hermes*
