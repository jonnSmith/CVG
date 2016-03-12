### Installation

install [Node.js](https://nodejs.org/en/download/package-manager/)
go to the app root

    npm install -g grunt-cli
    npm install -g bower
    npm install -g karma-cli
    npm install karma jasmine-core phantomjs --save-dev

    npm install
    bower install
    grunt build
    
### Configuration file package.json:


    {
          "name": "CVG",
          "description": "CVG App (Angular+CoffeeScript+Jade+Stylus)",
          "repository": "https://github.com/jonnSmith/CVG",
          "license": "MIT",
          "version": "0.0.1",
          "app":  "app",
          "dist": "/var/www/vhosts/app/public",
          "dependencies": {},
          "devDependencies": {
                "grunt": "~0.4.1",
                "gruntfile-gtx": "^0.3.0",
                "require-directory": "^2.1.1",
                "grunt-autoprefixer": "~0.4.0",
                "grunt-bower-install": "~1.0.0",
                "grunt-concurrent": "~0.5.0",
                "grunt-contrib-clean": "~0.5.0",
                "grunt-contrib-coffee": "~0.7.0",
                "grunt-contrib-jade": "~0.9.1",
                "grunt-contrib-stylus": "~0.12.0",
                "grunt-contrib-concat": "~0.3.0",
                "grunt-contrib-connect": "~0.5.0",
                "grunt-contrib-copy": "~0.4.1",
                "grunt-contrib-cssmin": "~0.7.0",
                "grunt-contrib-htmlmin": "~0.1.3",
                "grunt-contrib-imagemin": "~0.3.0",
                "grunt-contrib-jshint": "~0.7.1",
                "grunt-contrib-uglify": "~0.2.0",
                "grunt-contrib-watch": "~0.5.2",
                "grunt-google-cdn": "~0.2.0",
                "grunt-pleeease": "~1.3.2",
                "grunt-purifycss": "~0.1.0",
                "grunt-newer": "~0.6.1",
                "grunt-ngmin": "~0.0.2",
                "grunt-rev": "~0.1.0",
                "grunt-svgmin": "~0.2.0",
                "grunt-usemin": "~2.0.0",
                "grunt-karma": "~0.12",
                "jshint-stylish": "~0.1.3",
                "load-grunt-tasks": "~0.4.0",
                "time-grunt": "~0.2.1"
          },
          "engines": {
            "node": ">=0.10.0"
          }
    }