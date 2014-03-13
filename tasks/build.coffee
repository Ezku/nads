module.exports = (grunt) ->
  grunt.registerTask 'build', [
    'broccoli:src:build'
  ]