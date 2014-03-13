
coffee = require('broccoli-coffee')
browserify = (entry, outputFile) -> (src) ->
  require('broccoli-browserify') src, {
    entries: [entry]
    outputFile: outputFile
  }

config = (broccoli) ->
  src = broccoli.makeTree @data.src
  browserify('./nads.js', 'nads.js')(coffee src)

module.exports =
  src:
    config: config
    src: 'src'
    dest: 'dist'