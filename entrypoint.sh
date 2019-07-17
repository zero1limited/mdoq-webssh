#!/bin/sh -xe

# Set Variables in template file
sed -i "s/{{TITLE}}/${TITLE}/g" webssh/templates/index.html
sed -i "s/{{INSTANCE_DESCRIPTION}}/${INSTANCE_DESCRIPTION}/g" webssh/templates/index.html
sed -i "s/{{HOSTNAME}}/${INSTANCE_HOSTNAME}/g" webssh/templates/index.html
sed -i "s/{{PORT}}/${INSTANCE_PORT}/g" webssh/templates/index.html
sed -i "s/{{USERNAME}}/${INSTANCE_USERNAME}/g" webssh/templates/index.html

python run.py --port=${PORT}
