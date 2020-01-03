#!/bin/sh -xe

printenv

# Set Variables in template file
sed -i "s/{{TITLE}}/${TITLE}/g" webssh/templates/index.html
sed -i "s/{{INSTANCE_DESCRIPTION}}/${INSTANCE_DESCRIPTION}/g" webssh/templates/index.html
sed -i "s/{{HOSTNAME}}/${INSTANCE_HOSTNAME}/g" webssh/templates/index.html
sed -i "s/{{PORT}}/${INSTANCE_PORT}/g" webssh/templates/index.html
sed -i "s/{{USERNAME}}/${INSTANCE_USERNAME}/g" webssh/templates/index.html

RUN_OPTIONS="--port=${PORT} "

python run.py --port=${PORT} --debug=true --logging=debug 2>&1
