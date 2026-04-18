#!/bin/bash
# Oh-My-Hermes Installer for Hermes AI
# Multi-agent orchestration system

set -e

BLUE='\033[0;34m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}Oh-My-Hermes Installer${NC}"
echo "========================"

# Check prerequisites
echo -e "${BLUE}Checking prerequisites...${NC}"

# Check Node.js
if ! command -v node &> /dev/null; then
    echo -e "${YELLOW}Node.js not found. Please install Node.js >= 20.0.0${NC}"
    exit 1
fi

NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 20 ]; then
    echo -e "${YELLOW}Node.js version 20+ required. Found: $(node -v)${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Node.js: $(node -v)${NC}"

# Check Hermes
if ! command -v hermes &> /dev/null; then
    echo -e "${YELLOW}Hermes AI not found. Please install Hermes first.${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Hermes AI: installed${NC}"

# Install npm package
echo -e "${BLUE}Installing oh-my-hermes...${NC}"
npm install -g oh-my-hermes-sisyphus@latest 2>/dev/null || echo "Package not published yet, using local installation"

# Create OMH directory in Hermes
HERMES_DIR="$HOME/.hermes"
OMH_DIR="$HERMES_DIR/omh"

echo -e "${BLUE}Setting up OMH in Hermes...${NC}"

# Create directories
mkdir -p "$OMH_DIR"
mkdir -p "$HERMES_DIR/skills/omh"

# Copy skills to Hermes skills directory
# Hermes expects skills in ~/.hermes/skills/<skill-name>/
HERMES_SKILLS_DIR="$HERMES_DIR/skills"
OMH_SKILLS_DIR="$HERMES_SKILLS_DIR/omh"

echo -e "${BLUE}Setting up OMH skills in Hermes...${NC}"

# Create Hermes skills directory
mkdir -p "$OMH_SKILLS_DIR"

# Copy skills to Hermes skills directory (correct location)
if [ -d "$SCRIPT_DIR/skills" ]; then
    cp -r "$SCRIPT_DIR/skills/"* "$OMH_SKILLS_DIR/"
    echo -e "${GREEN}✓ Skills installed to $OMH_SKILLS_DIR${NC}"
fi

# Copy agents
if [ -d "$SCRIPT_DIR/agents" ]; then
    mkdir -p "$HERMES_DIR/agents/omh"
    cp -r "$SCRIPT_DIR/agents/"* "$HERMES_DIR/agents/omh/"
    echo -e "${GREEN}✓ Agents installed${NC}"
fi

# Copy CLAUDE.md
if [ -f "$SCRIPT_DIR/CLAUDE.md" ]; then
    cp "$SCRIPT_DIR/CLAUDE.md" "$HERMES_DIR/CLAUDE.md"
    echo -e "${GREEN}✓ CLAUDE.md installed${NC}"
fi

# Refresh Hermes skills
echo -e "${BLUE}Refreshing Hermes skills...${NC}"
hermes skills audit 2>/dev/null || true

echo ""
echo -e "${GREEN}========================"
echo -e "${GREEN}Oh-My-Hermes Setup Complete!${NC}"
echo "========================"
echo ""
echo "Usage in Hermes:"
echo "  /autopilot - Full autonomous execution"
echo "  /ralph     - Persistence loop until completion"
echo "  /ultrawork - Parallel execution engine"
echo "  /team      - Multi-agent coordination"
echo "  /plan      - Strategic planning"
echo "  /ultraqa   - QA cycling workflow"
echo "  /cancel    - Cancel active modes"
echo ""
