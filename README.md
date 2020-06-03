# babel-plugin-livescript

A plugin let you use LiveScript code with Babel.

It overrides Babel parser to handle LiveScript, convert LiveScript AST to Babel AST with (livescript-next)[https://github.com/dk00/livescirpt-next].

[![build status](https://github.com/dk00/babel-plugin-livescript/workflows/build/badge.svg)](https://github.com/dk00/babel-plugin-livescript/actions)
[![coverage](https://codecov.io/gh/dk00/babel-plugin-livescript/branch/master/graph/badge.svg)](https://codecov.io/gh/dk00/babel-plugin-livescript)
[![npm](https://img.shields.io/npm/v/babel-plugin-livescript.svg)](https://npm.im/babel-plugin-livescript)
[![dependencies](https://david-dm.org/dk00/babel-plugin-livescript/status.svg)](https://david-dm.org/dk00/babel-plugin-livescript)

## Installation

```
npm i --save-dev babel-plugin-livescript
```

## Usage

### With a configuration file

```js
module.exports = {
  plugins: ['livescript']
}
```

### With Rollup

If you are using this with `@rollup/plugin-babel`, `skipPreflightCheck` flag must be enabled, and add `extensions: ['.ls']` to let babel handle LiveScript files.

```js
import babel from '@rollup/plugin-babel'

module.exports = {
  plugins: [
    babel({
      plugins: [
        'livescript'
      ],
      extensions: ['.ls'],
      skipPreflightCheck: true,
    })
  ]
}
```

### Via CLI

```
babel --plugins livescript script.ls
```

### Via Node API

```js
require('@babel/core').transform('code', {
  plugins: ['livescript']
});
```
