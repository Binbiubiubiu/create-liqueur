import { defineConfig } from 'vitest/config';

export default defineConfig({
  resolve: {},
  test: {
    globals: true,
    environment: 'node'
  }
});
