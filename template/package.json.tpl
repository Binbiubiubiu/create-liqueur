{
  "name": "{{{ name }}}",
  "version": "0.0.1",
  "description": "{{{ description }}}",
  "author": "{{{ author }}}",
  "keywords": [],
  "license": "MIT",
  "main": "dist/index.js",
  "module": "dist/index.mjs",
  "unpkg": "dist/index.global.js",
  "typings": "dist/index.d.ts",
  "files": [
    "dist"
  ],
  "scripts": {
    "build": "tsup && api-extractor run -l",
    "dev": "tsup --watch",
    "lint": "eslint .",
    "format": "pretter --write",
    "prepare": "husky install",
    "test": "vitest",
    "test:cov": "vitest run --coverage",
    "prerelease": "pnpm build",
    "release": "release-it",
    "postrelease": "zx ./scripts/postrelease.mjs",
    "docs:dev": "vitepress dev docs",
    "docs:build": "vitepress build docs",
    "docs:deploy": "gh-pages -d docs/.vitepress/dist"
  },
  "devDependencies": {
    "@algolia/client-search": "^4.9.1",
    "@commitlint/cli": "^17.1.2",
    "@commitlint/config-conventional": "^17.1.0",
    "@microsoft/api-extractor": "^7.31.2",
    "@release-it/conventional-changelog": "^5.1.0",
    "@rushstack/eslint-patch": "^1.2.0",
    "@types/node": "^18.7.18",
    "@typescript-eslint/eslint-plugin": "^5.38.0",
    "@typescript-eslint/parser": "^5.38.0",
    "@vitest/coverage-c8": "^0.23.4",
    "eslint": "^8.23.1",
    "eslint-config-prettier": "^8.5.0",
    "eslint-plugin-prettier": "^4.2.1",
    "gh-pages": "^4.0.0",
    "husky": "^8.0.1",
    "lint-staged": "^13.0.3",
    "prettier": "^2.7.1",
    "release-it": "^15.4.2",
    "tsup": "^6.2.3",
    "typescript": "^4.8.3",
    "vitepress": "1.0.0-alpha.15",
    "vitest": "^0.23.4",
    "zx": "^7.0.8"
  },
  "publishConfig": {
    "access": "public",
    "registry": "https://registry.npmjs.org"
  },
  "commitlint": {
    "extends": [
      "@commitlint/config-conventional"
    ]
  },
  "lint-staged": {
    "*.{js,md,json}": [
      "prettier --write --ignore-unknown"
    ],
    "*.ts": [
      "prettier --parser=typescript --write"
    ]
  },
  "packageManager": "pnpm@7.3.0"
}
