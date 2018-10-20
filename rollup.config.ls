import
  \rollup-plugin-node-resolve : node-resolve
  \rollup-plugin-babel : babel

{dependencies} = require \./package.json

config =
  input: \src/index.ls
  output: file: \lib/index.js format: \cjs sourcemap: true strict: false
  plugins:
    node-resolve jsnext: true extensions: <[.ls .js]>
    babel {}
  external: Object.keys dependencies

export default: config
