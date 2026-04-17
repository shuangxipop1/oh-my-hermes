---
name: plan
description: Strategic planning with optional interview workflow. Creates structured approach before committing to execution.
version: 1.0.0
author: oh-my-hermes contributors
license: MIT
metadata:
  hermes:
    tags: [Planning, Strategy, Architecture, Interview]
    related_skills: [autopilot, architect, ralph]
---

# Plan — Hermes Integration Guide

Strategic planning with optional interview workflow.

## Prerequisites

- Hermes AI installed
- OMH (oh-my-hermes) installed

## Usage

```
/plan [task description]
/plan --interactive [task]
```

## What Plan Does

Plan creates a structured approach before committing to execution:

1. **Understand**: Clarifies requirements
2. **Analyze**: Evaluates options
3. **Design**: Creates architecture
4. **Estimate**: Assesses effort
5. **Recommend**: Proposes approach

## Options

| Option | Description |
|--------|-------------|
| `--interactive` | Socratic interview mode |
| `--quick` | Fast planning mode |
| `--detailed` | Comprehensive analysis |

## Plan Stages

### Stage 1: Requirements
- Clarify what to build
- Identify stakeholders
- Define success criteria

### Stage 2: Analysis
- Evaluate approaches
- Consider trade-offs
- Identify risks

### Stage 3: Architecture
- Design system structure
- Define interfaces
- Plan data flow

### Stage 4: Estimation
- Break into tasks
- Estimate effort
- Identify dependencies

### Stage 5: Recommendation
- Propose approach
- Suggest toolchain
- Outline timeline

## Output Format

```markdown
## Plan Summary

### What We're Building
[description]

### Approach
[recommended solution]

### Architecture
[system design]

### Tasks
1. [ ] Task 1
2. [ ] Task 2

### Effort
[estimated time]

### Risks
- [risk] → [mitigation]
```

## When to Use

✓ Complex projects
✓ Unclear requirements
✓ Architecture decisions
✓ Technical planning

## When NOT to Use

✗ Simple, well-defined tasks
✗ Already know the approach
✗ Time-critical items

---

*Part of oh-my-hermes*
