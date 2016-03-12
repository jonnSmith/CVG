module.exports = {
    dist: {
        files: [{
            dot: true,
            src: [
                '.tmp',
                '<%= package.dist %>/*',
                '!<%= package.dist %>/.git*'
            ]
        }]
    },
    server: '.tmp',
    options: { force: true }
}