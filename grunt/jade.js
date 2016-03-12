module.exports = {
    options: {
        pretty: true,
        data: function (dest, src) {
            return require('../languages/en/data.json');
        }
    },
    server: {
        files: [{
            expand: true,
            cwd: '<%= package.app %>',
            dest: '.tmp',
            src: ['*.jade', 'views/{,*/}*.jade'],
            ext: '.html'
        }]
    },
    dist: {
        files: [{
            expand: true,
            cwd: '<%= package.app %>',
            dest: '<%= package.dist %>',
            src: ['*.jade', 'views/{,*/}*.jade'],
            ext: '.html'
        }]
    }
}