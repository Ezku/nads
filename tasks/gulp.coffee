browserify = require 'gulp-browserify'
rename = require 'gulp-rename'
closureCompiler = require 'gulp-closure-compiler'

module.exports = (gulp) ->
  paths =
    src: 'src/**/*.coffee'
    entryFile: 'src/nads.coffee'
    outputFile: 'nads.js'
    outputFileMin: 'nads.min.js'
    dist: 'dist'

  gulp.task 'build', ->
    gulp
      .src(paths.entryFile, read: false)
      .pipe(browserify(
        transform: ['coffeeify']
        extensions: ['.coffee']
      ))
      .pipe(rename(paths.outputFile))
      .pipe(gulp.dest(paths.dist))
      .pipe(closureCompiler())
      .pipe(rename(paths.outputFileMin))
      .pipe(gulp.dest(paths.dist))

  gulp.task 'watch', ->
    gulp.watch paths.src, [
      'build'
    ]

  gulp.task 'default', [
    'build'
    'watch'
  ]