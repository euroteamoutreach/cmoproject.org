/* eslint-disable max-len */

module.exports = {
  root: true,
  env: {
    browser: true,
    es6: true,
  },
  extends: [
    // https://eslint.vuejs.org/rules/
    'plugin:vue/recommended',

    // https://github.com/airbnb/javascript
    'airbnb-base',
  ],
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parserOptions: {
    parser: 'babel-eslint',
    ecmaVersion: 2018,
    sourceType: 'module',
  },
  plugins: [
    'vue',
  ],
  settings: {
    'import/core-modules': ['vue'],
  },
  rules: {
    // Allow unresolved imports
    // https://github.com/nuxt/eslint-config/blob/master/packages/eslint-config/index.js
    'import/no-unresolved': 'off',

    // https://eslint.org/docs/rules/max-len
    // https://github.com/vuejs/eslint-plugin-vue/issues/731
    'max-len': 'off',

    // https://eslint.org/docs/rules/radix
    radix: ['error', 'as-needed'],

    // https://eslint.org/docs/rules/no-param-reassign
    'no-param-reassign': 'off',

    // Allow debugger during development
    'no-debugger': process.env.NODE_ENV === 'production' ? 'error' : 'warn',
    'no-console': process.env.NODE_ENV === 'production' ? 'error' : 'warn',

    // https://github.com/vuejs/eslint-plugin-vue/blob/master/docs/rules/max-attributes-per-line.md
    'vue/max-attributes-per-line': ['error', {
      singleline: 2,
      multiline: {
        max: 1,
        allowFirstLine: true,
      },
    }],
    'vue/attribute-hyphenation': ['error', 'always', {
      ignore: ['fetchFormat'],
    }],
  },
};
