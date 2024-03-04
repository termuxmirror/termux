#!/bin/bash

apt update

apt-get install nodejs npm

cat << 'EOF' > terminal.js
const readline = require('readline');
const fs = require('fs');
const { exec } = require('child_process');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  prompt: '> '
});

const simulateTerminal = () => {
  rl.prompt();

  rl.on('line', async (input) => {
    const args = input.trim().split(' ');
    const command = args.shift();

    switch (command) {
      case 'ls':
        fs.readdir('.', (err, files) => {
          if (err) throw err;
          console.log(files.join('\t'));
          rl.prompt();
        });
        break;
      case 'mkdir':
        fs.mkdir(args[0], (err) => {
          if (err) throw err;
          console.log(\`Directory \${args[0]} created.\`);
          rl.prompt();
        });
        break;
      case 'cd':
        process.chdir(args[0]);
        console.log(\`Changed directory to \${args[0]}\`);
        rl.prompt();
        break;
      case 'nano':
        const nanoProcess = exec(\`nano \${args.join(' ')}\`);
        nanoProcess.stdout.pipe(process.stdout);
        nanoProcess.stdin.pipe(process.stdin);
        nanoProcess.on('exit', () => {
          rl.prompt();
        });
        break;
      case 'zip':
        const zipProcess = exec(\`zip \${args.join(' ')}\`);
        zipProcess.stdout.pipe(process.stdout);
        zipProcess.on('exit', () => {
          rl.prompt();
        });
        break;
      case 'unzip':
        const unzipProcess = exec(\`unzip \${args.join(' ')}\`);
        unzipProcess.stdout.pipe(process.stdout);
        unzipProcess.on('exit', () => {
          rl.prompt();
        });
        break;
      case 'rm':
        fs.unlink(args[0], (err) => {
          if (err) throw err;
          console.log(\`\${args[0]} deleted.\`);
          rl.prompt();
        });
        break;
      case 'mv':
        fs.rename(args[0], args[1], (err) => {
          if (err) throw err;
          console.log(\`\${args[0]} moved to \${args[1]}\`);
          rl.prompt();
        });
        break;
      case 'cat':
        fs.readFile(args[0], 'utf8', (err, data) => {
          if (err) throw err;
          console.log(data);
          rl.prompt();
        });
        break;
      case 'exit':
        rl.close();
        break;
      default:
        console.log('Command not found.');
        rl.prompt();
        break;
    }
  }).on('close', () => {
    console.log('Exiting terminal.');
    process.exit(0);
  });
};

simulateTerminal();
EOF

echo "terminal.js wurde erfolgreich erstellt."