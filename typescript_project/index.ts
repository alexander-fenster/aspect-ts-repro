import * as fs from 'fs/promises';

async function main() {
  const filename = process.argv[2];
  if (!filename) {
    throw new Error(`Usage: ${process.argv[0]} ${process.argv[1]} filename`);
  }
  console.log(`TypeScript code is writing output to ${filename}`);
  await fs.writeFile(filename, 'Hello World!\n');
}

main();
