###
# Config
###

SRC_PATH = ''
TMP_PATH = './tmp/'
DEST_PATH = './dest/'


module.exports = {
  dest: DEST_PATH
  tmp: TMP_PATH
  bower: {
    dest: DEST_PATH + 'vendor'
  },
  html: {
    src: SRC_PATH + 'html/**/*.html'
    dest: DEST_PATH
    devDest: TMP_PATH
  }
  sass: {
    src: SRC_PATH + 'sass/**/*.{scss,sass,css}'
    dest: DEST_PATH + 'stylesheets'
    devDest: TMP_PATH + 'stylesheets'
    includePaths: ['./sass-lib', './compass/lib', './normalize']
    imagePath: '../images'
  },
  js: {
    src: SRC_PATH + 'coffeescripts/**/*.{coffee,cjsx}'
  }
  images: {
    src: SRC_PATH + 'images/**/*'
    dest: DEST_PATH + 'images'
    devDest: TMP_PATH + 'images'
  },
  browserify: {
    src: './coffeescripts/app.cjsx'
    dest: DEST_PATH + 'javascripts'
    devDest: TMP_PATH + 'javascripts'
  }
  vendor: {
    src: SRC_PATH + '*.{png,ico}' # Add favicon / icon
    dest: DEST_PATH
    devDest: TMP_PATH
  }
  json: {
    src: SRC_PATH + 'json/**/*'
    dest: DEST_PATH + 'json'
    devDest: TMP_PATH + 'json'
  }
  browserSync: {
    baseDir: [TMP_PATH, DEST_PATH]
    routes: {
      '/vendor': './bower_components'
    }
  }
}
