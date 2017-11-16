require \../register <| plugins: [\istanbul]
test = require \tape
{ast} = require \livescript
{convert} = require \livescript-next
plugin = require \../src/index .default

function main t
  code = \code
  {parser-override} = plugin!

  actual = parser-override code
  expected = convert ast code
  t.same actual, expected, 'parse code with the plugin'

  parse = (code, options) -> 'code ' + options.source-file-name

  actual = parser-override code, source-file-name: \t.js, parse
  expected = 'code t.js'
  t.is actual, expected, 'parse non-ls with fallback parse function'

  t.end!

test \Plugin main
