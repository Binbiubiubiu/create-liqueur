module.exports = {
  printWidth: 80,
  semi: true,
  singleQuote: true,
  trailingComma: 'none',
  overrides: [
    {
      files: ["*.json"],
      options: {
        parser: "json"
      }
    }
  ]
};
