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

  get-syntax-error = ->
    code = 'a: 1\n b: 3'
    parser-override code, source-file-name: \/path/to/module.ls

  try
    get-syntax-error!
    t.fail 'must get syntax error'
  catch
    actual = e.message
    expected = "/path/to/module.ls: Parse error on line 1: Unexpected 'INDENT'"
    t.is actual, expected, 'generate error message with file path'

  t.end!

test \Plugin main
