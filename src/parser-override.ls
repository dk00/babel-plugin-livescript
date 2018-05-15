import
  livescript: {ast}
  \livescript-next : {convert}

function parser-override code, {source-file-name=\t.ls}: options={} parse
  if /\.ls$/test source-file-name
    try convert ast code
    catch
      message = source-file-name + ': ' + e.message
      throw new SyntaxError message, source-file-name, e.hash.loc.first_line
  else parse code, options

export default: parser-override
