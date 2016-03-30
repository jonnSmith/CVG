module.exports = {
    short: {
        files: {
            '<%= package.dist %>/styles/short.css': [
                '.tmp/styles/bootstrap.css',
                'app/bower_components/font-awesome/css/font-awesome.css',
                '.tmp/styles/main.css'
            ]
        }
    },
    options: {
        compile: true,
        compress: true
    }
}