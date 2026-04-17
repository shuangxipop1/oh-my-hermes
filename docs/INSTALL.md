# Installation Guide

## Prerequisites

- Node.js >= 20.0.0
- Hermes AI installed and configured

## Install via npm

```bash
npm i -g oh-my-hermes-sisyphus@latest
```

## Verify Installation

```bash
omh doctor
```

## Setup

### Option 1: Via Terminal

```bash
omh setup
```

### Option 2: Via Hermes

Inside Hermes AI:
```
/setup
```
or
```
/omh-setup
```

## Update

```bash
npm update -g oh-my-hermes-sisyphus
```

## Uninstall

```bash
npm uninstall -g oh-my-hermes-sisyphus
```

## Troubleshooting

### Hermes not found

Ensure Hermes is installed and in your PATH:
```bash
which hermes
```

### Permission errors

Try with sudo:
```bash
sudo npm i -g oh-my-hermes-sisyphus@latest
```

### Node version error

Update Node.js to >= 20.0.0
