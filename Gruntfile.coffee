module.exports = (grunt) ->
  grunt.initConfig
    #增加对coffee文件的监视
    watch:
      coffee:
        files:
          [
            'src/controllers/*.coffee'
          ]
        tasks: ["newer:coffee"]
      stss:
        files:
          [
            'src/styles/*.stss'
          ]
        tasks: ["newer:stss"]
      jade:
        files:
          [
            'src/views/*.jade'
          ]
        tasks: ["newer:jade"]

    coffee:
      compile_multiple_files:
        options:
          bare: true
        files:
          # 1:1 的编译文件
          #'app/controllers/simulate_stocks.js': 'app/controllers/simulate_stocks.coffee'
          # 编译多个文件
          [
            expand: true
            flatten: true
            cwd: 'src/controllers/'
            src: ['*.coffee']
            dest: 'app/controllers/'
            ext: '.js'
          ]
      #compile_home_js:
      #  options:
      #    bare: true
      #  files:
      #    # 把多个文件合并
      #    'app/controllers/home.js': [
      #      'src/controllers/home/home_market.coffee'
      #      'src/controllers/home/home_master.coffee'
      #      'src/controllers/home/home_me.coffee'
      #      'src/controllers/home/home_competition.coffee'
      #      'src/controllers/home/home_community.coffee'
      #      'src/controllers/home/home_version.coffee'
      #      'src/controllers/home/home_frame.coffee'
      #    ]

    jade:
      compile:
        options:
          pretty: true
        files: [
          expand: true
          src: ['**/*.jade']
          dest: 'app' # 写成  'app/views' 也行,
          cwd: 'src'  # 如果 dest是'app/views', 这里就要是 'src/views'
          ext: '.xml'
        ]

    stss:
      compile:
        files:[
          expand: true
          src: ['**/*.stss', '!**/_*.stss']
          dest: 'app'
          cwd: 'src'
          ext: '.tss'
        ]

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-stss'
  grunt.loadNpmTasks 'grunt-newer'

  grunt.registerTask 'default', [ 'coffee', 'jade','stss' ]
  #grunt.registerTask 'default', [ 'coffee', 'jade' ]
