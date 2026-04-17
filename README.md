# oh-my-hermes

[![npm version](https://img.shields.io/npm/v/oh-my-hermes-sisyphus?color=cb3837)](https://www.npmjs.com/package/oh-my-hermes-sisyphus)
[![npm downloads](https://img.shields.io/npm/dm/oh-my-hermes-sisyphus?color=blue)](https://www.npmjs.com/package/oh-my-hermes-sisyphus)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

> **Multi-agent orchestration for Hermes AI. Zero learning curve.**

*Don't learn Hermes AI. Just use OMH.*

---

## Quick Start

**Step 1: Install via npm**

```bash
npm i -g oh-my-hermes-sisyphus@latest
```

**Step 2: Setup**

```bash
# Inside a Hermes AI session
/setup
/omh-setup

# From your terminal
omh setup

# Or use install script
./install.sh
```

**Step 3: Use Skills in Hermes**

```bash
# Inside a Hermes AI session
/autopilot "build a REST API for managing tasks"
/ralph "implement user authentication"
/team "build e-commerce checkout"
/plan "design microservices architecture"
```

## Hermes Integration

oh-my-hermes integrates with Hermes AI as a plugin and skill collection.

### Installation Location
- Skills: `~/.hermes/omh/`
- Plugin: `~/.hermes/plugins/oh-my-hermes/`

### Available Skills
| Skill | Command | Description |
|-------|---------|-------------|
| Autopilot | `/autopilot` | Full autonomous execution |
| Ralph | `/ralph` | Persistence loop with verification |
| Ultrawork | `/ultrawork` | Parallel task execution |
| Team | `/team` | Multi-agent coordination |
| Plan | `/plan` | Strategic planning |
| Ultraqa | `/ultraqa` | QA cycling workflow |
| Cancel | `/cancel` | Cancel active modes |

---

## Features

### Core Agents

| Agent | Description |
|-------|-------------|
| `architect` | System design and architecture planning |
| `executor` | Code implementation and execution |
| `critic` | Code review and quality assurance |
| `test-engineer` | Test writing and validation |
| `debugger` | Issue diagnosis and fixing |
| `planner` | Task breakdown and scheduling |

### Skills

| Skill | Description |
|-------|-------------|
| `/autopilot` | Full autonomous execution from idea to code |
| `/ralph` | Self-referential loop until task completion |
| `/ultrawork` | Parallel execution engine |
| `/ultraqa` | QA cycling workflow |
| `/team` | Multi-agent coordination |
| `/plan` | Strategic planning |

### Execution Modes

- **Autopilot**: End-to-end autonomous pipeline
- **Ralph**: Persistence loop with verification
- **Ultrawork**: High-throughput parallel execution
- **Team**: Coordinated multi-agent workflow

---

## Architecture

```
oh-my-hermes/
├── agents/           # Agent definitions
├── bridge/           # CLI and runtime bridge
├── hooks/            # Session hooks
├── skills/           # Skill definitions
├── scripts/          # Build scripts
├── templates/        # Project templates
├── docs/             # Documentation
└── .hermes-plugin/   # Plugin manifest
```

---

## Documentation

- [Installation Guide](./docs/INSTALL.md)
- [CLI Reference](./docs/CLI.md)
- [Agent Catalog](./docs/AGENTS.md)
- [Skills Reference](./docs/SKILLS.md)
- [Workflows](./docs/WORKFLOWS.md)

---

## Requirements

- Node.js >= 20.0.0
- Hermes AI installed and configured

---

## License

MIT

---

## Contributing

Contributions welcome! Please see [CONTRIBUTING.md](./CONTRIBUTING.md).
