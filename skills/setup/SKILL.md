# OMH Setup Skill

## Description
Install and configure oh-my-hermes for Hermes AI.

## Usage
```
/setup
/setup omh
/omh-setup
```

## What It Does

1. **Verifies Installation**
   - Checks Node.js version
   - Verifies Hermes AI is installed
   - Confirms npm package installed

2. **Creates Directories**
   - Agents directory
   - Skills directory
   - Hooks directory
   - State directory

3. **Installs Components**
   - Copies agent definitions
   - Installs skill files
   - Configures hooks
   - Sets up CLI

4. **Configures Hermes**
   - Updates Hermes config
   - Enables skills
   - Sets up plugin path

## Requirements

- Node.js >= 20.0.0
- Hermes AI installed
- npm or yarn

## Post-Setup

After setup, you can:
- Use `/autopilot` for autonomous execution
- Use `/ralph` for persistence loops
- Use `/team` for multi-agent coordination
- Use `/plan` for strategic planning

## Troubleshooting

If setup fails:
1. Check Node.js version: `node --version`
2. Check Hermes installation: `hermes --version`
3. Verify npm access: `npm --version`
4. Run with verbose: `/omh-setup --verbose`

---

*Part of oh-my-hermes*
