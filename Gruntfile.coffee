module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-mocha-test'

  grunt.initConfig
    mochaTest:
      run:
        src: ['spec/helper.coffee', 'spec/**/*_spec.coffee']
        options:
          clearRequireCache: true

    watch:
      test:
        options:
          spawn: true
          atBegin: true
        files: ['src/**/*.coffee', 'spec/**/*.coffee']
        tasks: ['mochaTest']

  grunt.registerTask('default', 'watch')
