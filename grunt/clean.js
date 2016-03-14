module.exports = {
    dist: {
        files: [{
            dot: true,
            src: [
                '.tmp',
                '<%= package.dist %>/*',
                '!<%= package.dist %>/.git*',
                '!<%= package.dist %>/uploads*',
                '!<%= package.dist %>/pdf*',
                '!<%= package.dist %>/php-vendor*',
                '!<%= package.dist %>/.idea*'
            ]
        }]
    },
    server: '.tmp',
    options: { force: true }
}