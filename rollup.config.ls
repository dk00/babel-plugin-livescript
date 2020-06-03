import
  'rollup-plugin-pnp-resolve': pnp-resolve
  '@rollup/plugin-node-resolve': node-resolve
  '@rollup/plugin-babel': babel

package-config = require \./package.json

config =
  input: \src/index.ls
  output: file: package-config.main, format: \cjs sourcemap: true strict: false
  plugins:
    pnp-resolve!
    node-resolve jsnext: true extensions: <[.ls .js]>
    babel extensions: [\.ls] babel-helpers: \runtime skip-preflight-check: true
  external: Object.keys package-config.dependencies

export default: config
