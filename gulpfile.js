(function () {
    'use strict';

    var gulp = require('gulp');
    // var gutil = require('gulp-util');

    var mocha = require('gulp-mocha');

    // var eslint = require('gulp-eslint');
    var jshint = require('gulp-jshint');

    var jsreporter = require('jshint-stylish');
    // var esreporter = require('eslint-stylish');

    var fs = require('fs');

    var tests = ['./test/**/*.js'];
    var scripts = ['*.js', './lib/*.js', './test/*.js'];
    // var scripts = ['./lib/*.js', './test/*.js'];

    gulp.task('mocha', function () {
        return gulp.src(tests)
            .pipe(mocha({reporter: 'nyan'}));
    });

    gulp.task("mocha|catch", function () {
        return gulp.src(tests)
            .pipe(mocha({ reporter: 'spec' }).on("error", function (err) {
                console.log(err.toString());
                this.emit('end');
            })
        );
    });

    var jsconfig = JSON.parse(fs.readFileSync('./jshint.json')); // .jshintrc'));
    // var esconfig = JSON.parse(fs.readFileSync('./.eslintrc'));

    gulp.task('hint', function () {
        gulp.src(scripts)
            // eslint(esconfig),
            // eslint.formatEach(esreporter),
            .pipe(jshint(jsconfig))
            .pipe(jshint.reporter(jsreporter));
    });

    gulp.task('hackonit', function () {
        gulp.watch(scripts, ['mocha|catch', 'hint']);
    });

}());
