module.exports = {
    main: {
        src: ['<%= package.dist %>/**/*.html','<%= package.dist %>/scripts/*.js'],
        css: ['<%= package.dist %>/styles/main.css'],
        dest: '<%= package.dist %>/styles/main.css'
    },
    short: {
        src: ['<%= package.dist %>/**/*.html','<%= package.dist %>/scripts/*.js'],
        css: ['<%= package.dist %>/styles/short.css'],
        dest: '<%= package.dist %>/styles/short.css'
    }
}