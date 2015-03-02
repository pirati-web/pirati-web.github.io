module.exports = (grunt) ->

  # load all grunt tasks
  require("matchdep").filterDev("grunt-*").forEach grunt.loadNpmTasks

  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    watch:
      scripts:
        files: 'scss/*'
        options: { nospawn: true }
        tasks: ["sass", "watch"]

    bower:
      install:
        options:
          verbose: true

    sass:
      options:
        includePaths: ['bower_components/foundation/scss']
      dist:
        options:
          outputStyle: 'compressed'
        files:
          '../static/style.css': 'scss/style.scss'

    less:
      development:
        options:
          paths: ["bower_components/bootstrap/less"]
        files:
          "site.css": [ "css/main.less" ]
      release:
        options:
          paths: ["bower_components/bootstrap/less"]
          compress: true
        files:
          "../static/style.css": [ "css/main.less" ]

    concat:
      options:
        separator: ';'
      dist:
        src: [  # the files to concatenate
          # '<%= paths.src.mainApp %>/bower_components/angular/angular.js',
          'js/**/*.js',
        ]
        dest: '../static/script.js' # the location of the resulting JS file

    uglify:
      common:
        options:
          mangle: true
        files:
          '../static/script.js': '../static/script.js'



  grunt.registerTask 'build', ['sass', 'concat', 'uglify']
  grunt.registerTask 'default', ['build','watch']
