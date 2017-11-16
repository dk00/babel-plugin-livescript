import
  livescript: {ast}
  \livescript-next : {convert}

function parser-override code, {source-file-name=\t.ls}: options={} parse
  if /\.ls$/test source-file-name then convert ast code
  else parse code, options

export default: parser-override
