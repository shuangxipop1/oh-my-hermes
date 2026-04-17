---
name: setup
description: Install and configure oh-my-hermes for Hermes AI. Sets up agents, skills, and CLI tools.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [Setup, Installation, Configuration, CLI]
    related_skills: [omh-setup, cancel]
---

# Setup — Hermes Integration Guide

Install and configure oh-my-hermes for Hermes AI.

## Prerequisites

- Node.js >= 20.0.0
- Hermes AI installed

## Usage

```
/setup
/setup omh
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

## Terminal Installation

```bash
# Install via npm
npm i -g oh-my-hermes-sisyphus@latest

# Run setup
omh setup
```

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
4. Run with verbose: `omh doctor`

---

*Part of oh-my-hermes*
