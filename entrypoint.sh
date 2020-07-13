#!/bin/sh -xe

dockerize -template webssh/templates/index.html:webssh/templates/index.html
dockerize -template webssh/static/js/main.js:webssh/static/js/main.js

RUN_OPTIONS="--port=${PORT} "

python run.py --port=${PORT} --debug=true --logging=debug --wpintvl=30 2>&1
