import { defineConfig, Options } from 'tsup';
import { name } from './package.json';

export default defineConfig((options) => {
  return {
    entry: ['./src/index.ts', './src/cli.ts', './src/get-git-user.ts'],
    name,
    target: 'node14',
    minify: !options.watch,
    format: 'cjs',
    splitting: true,
    sourcemap: false,
    treeshake:true,
    clean: true,
    dts: true,
    external:['../package.json']
  } as Options;
});
