#!/bin/sh -xe

# Set Variables in template file
sed -i "s/{{TITLE}}/{{${TITLE}}}/g" webssh/templates/index.html
sed -i "s/{{INSTANCE_DESCRIPTION}}/{{${INSTANCE_DESCRIPTION}}}/g" webssh/templates/index.html
sed -i "s/{{HOSTNAME}}/{{${HOSTNAME}}}/g" webssh/templates/index.html
sed -i "s/{{PORT}}/{{${PORT}}}/g" webssh/templates/index.html
sed -i "s/{{USERNAME}}/{{${USERNAME}}}/g" webssh/templates/index.html

python run.py --port=${PORT}