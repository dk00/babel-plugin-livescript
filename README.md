# babel-plugin-livescript

Parse LiveScript and convert to Babel AST.

[![build status](https://github.com/dk00/babel-plugin-livescript/workflows/build/badge.svg)](https://github.com/dk00/babel-plugin-livescript/actions)
[![coverage](https://codecov.io/gh/dk00/babel-plugin-livescript/branch/master/graph/badge.svg)](https://codecov.io/gh/dk00/babel-plugin-livescript)
[![npm](https://img.shields.io/npm/v/babel-plugin-livescript.svg)](https://npm.im/babel-plugin-livescript)
[![dependencies](https://david-dm.org/dk00/babel-plugin-livescript/status.svg)](https://david-dm.org/dk00/babel-plugin-livescript)


## Installation

```
npm i --save-dev babel-plugin-livescript
```

## Usage

*.babelrc.js*

```js
module.exports = {
  plugins: ['livescript']
}
```

### Via CLI

```
babel --plugins livescript script.ls
```

### Via Node API

```js
require('babel-core').transform('code', {
  plugins: ['livescript']
});
```
