require! {
  'gulp-riot'
}

riot = gulp-riot

module.exports = (gulp, $) ->

  gulp.task \riot ->
    gulp.src 'src/tags/*'
      .pipe $.plumber!
      .pipe riot {
        template: 'jade'
        type: 'livescript'
        +expr
      }
      .pipe gulp.dest '.tmp/tags'
      .pipe $.browser-sync.reload { +stream }
