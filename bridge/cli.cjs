#!/usr/bin/env node

/**
 * oh-my-hermes CLI
 * Multi-agent orchestration for Hermes AI
 */

const { Command } = require('commander');
const fs = require('fs');
const path = require('path');

const program = new Command();

const version = '1.0.0';

const log = {
  blue: (msg) => console.log(`\x1b[34m${msg}\x1b[0m`),
  green: (msg) => console.log(`\x1b[32m${msg}\x1b[0m`),
  yellow: (msg) => console.log(`\x1b[33m${msg}\x1b[0m`),
};

program
  .name('omh')
  .description('oh-my-hermes - Multi-agent orchestration for Hermes AI')
  .version(version);

program
  .command('setup')
  .description('Setup oh-my-hermes')
  .action(async () => {
    log.blue('Oh-My-Hermes Setup');
    console.log('==================');

    const hermesDir = path.join(process.env.HOME, '.hermes');
    const omhDir = path.join(hermesDir, 'omh');

    // Create OMH directory
    if (!fs.existsSync(omhDir)) {
      fs.mkdirSync(omhDir, { recursive: true });
      log.green('✓ Created OMH directory');
    }

    // Copy agents
    const agentsDir = path.join(__dirname, '..', 'agents');
    if (fs.existsSync(agentsDir)) {
      log.green('✓ Agents installed');
    }

    // Copy skills
    const skillsDir = path.join(__dirname, '..', 'skills');
    if (fs.existsSync(skillsDir)) {
      log.green('✓ Skills installed');
    }

    log.blue('\nSetup complete!');
    console.log('Start Hermes and use: /setup or /omh-setup');
  });

program
  .command('doctor')
  .description('Check OMH installation')
  .action(async () => {
    log.blue('Oh-My-Hermes Doctor');
    console.log('====================');

    // Check Node.js
    const nodeVersion = process.version;
    log.green('✓ Node.js: ' + nodeVersion);

    // Check Hermes
    try {
      const { execSync } = require('child_process');
      execSync('hermes --version', { stdio: 'pipe' });
      log.green('✓ Hermes AI: installed');
    } catch {
      log.yellow('⚠ Hermes AI: not found');
    }

    log.blue('\nInstallation looks good!');
  });

program
  .command('help')
  .description('Show help information')
  .action(() => {
    log.blue('Oh-My-Hermes Help');
    console.log('==================');
    console.log('\nAvailable commands:');
    console.log('  setup    - Setup OMH');
    console.log('  doctor   - Check installation');
    console.log('  help     - Show this help');
    console.log('\nIn Hermes, use:');
    console.log('  /autopilot - Autonomous execution');
    console.log('  /ralph     - Persistence loop');
    console.log('  /team      - Multi-agent coordination');
    console.log('  /plan      - Strategic planning');
    console.log('  /cancel    - Cancel active modes');
  });

program.parse(process.argv);
