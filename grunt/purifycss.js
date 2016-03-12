module.exports = {
    dist: {
        src: ['<%= package.dist %>/**/*.html','<%= package.dist %>/scripts/*.js'],
        css: ['<%= package.dist %>/styles/*.css'],
        dest: '<%= package.dist %>/styles/purify.css'
    }
}