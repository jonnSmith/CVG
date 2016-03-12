module.exports = {
    test: {
        options: {
            compress: false
        },
        files: {
            '.tmp/styles/main.css': ['<%= package.app %>/styles/{,*/}*.styl']
        }
    },
    server: {
        options: {
            compress: false
        },
        files: {
            '.tmp/styles/main.css': ['<%= package.app %>/styles/{,*/}*.styl']
        }
    },
    dist: {
        options: {
            compress: true
        },
        files: {
            '.tmp/styles/main.css': ['<%= package.app %>/styles/{,*/}*.styl']
        }
    }
}