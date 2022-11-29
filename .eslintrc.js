module.exports = {
  env: {
    browser: true,
    es2021: true
  },
  extends: ['plugin:@next/next/recommended', 'standard-with-typescript'],
  overrides: [
    {
      files: ['*.jsx', '*.tsx'],
      rules: {
        '@typescript-eslint/explicit-module-boundary-types': ['off'],
        '@typescript-eslint/explicit-function-return-type': 'off'
      }
    }
  ],
  parserOptions: {
    ecmaVersion: 'latest',
    sourceType: 'module',
    project: 'tsconfig.json'
  },
  plugins: ['react', 'prettier'],
  rules: {}
}
