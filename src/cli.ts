import { yParser } from '@umijs/utils';
import createLiqueur from '.';

const args = yParser(process.argv.slice(2), {
  alias: {
    version: ['v'],
    help: ['h']
  }
});

if (args.version && !args._[0]) {
  // eslint-disable-next-line @typescript-eslint/no-var-requires
  const { name, version } = require('../package.json');
  console.log(`${name}@${version}`);
} else {
  createLiqueur({ args, cwd: process.cwd() }).catch(console.error);
}
