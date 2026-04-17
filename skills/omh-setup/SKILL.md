# OMH Setup Skill

## Description
Install or refresh oh-my-hermes configuration.

## Usage
```
/omh-setup
/setup omh
```

## What It Does

1. **Verify Prerequisites**
   - Node.js version >= 20
   - Hermes AI installed
   - npm working

2. **Sync Components**
   - Install agent definitions
   - Sync skill files
   - Configure hooks
   - Setup CLI

3. **Update Configuration**
   - Update Hermes config
   - Enable skills
   - Set plugin path

## Options

| Option | Description |
|--------|-------------|
| `--force` | Force reinstallation |
| `--plugin-dir=PATH` | Custom plugin directory |
| `--skip-hooks` | Skip hook installation |

## Post-Setup

After setup:
- Restart Hermes AI
- Use `/help` to verify
- Try `/autopilot` to test

## Troubleshooting

If setup fails:
1. Run `/omh-doctor` to diagnose
2. Check Node version: `node --version`
3. Check Hermes: `hermes --version`
4. Try with `--force`

---

*Part of oh-my-hermes*
