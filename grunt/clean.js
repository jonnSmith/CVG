module.exports = {
    dist: {
        files: [{
            dot: true,
            src: [
                '.tmp',
                '<%= package.dist %>/*',
                '!<%= package.dist %>/.git*',
                '!<%= package.dist %>/uploads*',
                '!<%= package.dist %>/html*',
                '!<%= package.dist %>/pdf*',
                '!<%= package.dist %>/php*',
                '!<%= package.dist %>/php-vendor*',
                '!<%= package.dist %>/languages*',
                '!<%= package.dist %>/.idea*'
            ]
        }]
    },
    server: '.tmp',
    options: { force: true }
}