# Contributing to oh-my-hermes

Thank you for your interest in contributing!

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_NAME/oh-my-hermes`
3. Install dependencies: `npm install`
4. Build: `npm run build`

## Development

```bash
# Watch mode for development
npm run dev

# Run tests
npm test

# Lint
npm run lint
```

## Project Structure

```
oh-my-hermes/
├── agents/           # Agent definition files (.md)
├── skills/           # Skill directories
│   └── [skill]/      # Each skill has SKILL.md
├── bridge/           # CLI and runtime code
├── hooks/            # Session hooks
└── scripts/          # Build scripts
```

## Adding a New Skill

1. Create `skills/[skill-name]/SKILL.md`
2. Add skill description and usage
3. Document options and examples

## Adding a New Agent

1. Create `agents/[agent-name].md`
2. Define role and responsibilities
3. Add guidelines and output format

## Pull Request Process

1. Create a feature branch
2. Make your changes
3. Add tests if applicable
4. Submit PR with description

## Code Style

- Use Prettier for formatting
- Follow ESLint rules
- Write clear commit messages

## License

By contributing, you agree that your contributions will be licensed under the MIT License.
