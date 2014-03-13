module.exports = (grunt) ->
  baseConfig = {
  }

  require('load-grunt-config')(grunt, {
    configPath: "#{__dirname}/tasks/config"
    config: baseConfig
  })
  require('load-grunt-tasks')(grunt)

  grunt.loadTasks "#{__dirname}/tasks"