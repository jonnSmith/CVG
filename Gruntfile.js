'use strict';

module.exports = function (grunt) {

    var gtx = require('gruntfile-gtx').wrap(grunt);
    gtx.loadAuto();
    var gruntConfig = require('./grunt');
    gruntConfig.package = require('./package.json');
    gtx.config(gruntConfig);

    gtx.alias('build', [
        'clean:dist',
        'bowerInstall',
        'jade:dist',
        'coffee:dist',
        'stylus:dist',
        'useminPrepare',
        'concurrent:dist',
        'autoprefixer',
        'concat',
        'ngmin',
        'copy:fonts',
        'copy:dist',
        'cdnify',
        'cssmin',
        'uglify',
        'rev',
        'usemin',
        'htmlmin',
        'sass',
        'recess',
        'purifycss:short',
        'pleeease'
    ]);

    gtx.alias('serve', [
        'clean:server',
        'bowerInstall',
        'jade:server',
        'concurrent:server',
        'autoprefixer',
        'watch'
    ]);
    gtx.finalise();
};
