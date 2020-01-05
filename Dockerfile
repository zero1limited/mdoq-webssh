FROM python:3.7-slim
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
COPY entrypoint.sh /entrypoint.sh
COPY docker/dockerize /usr/local/bin/dockerize

ENTRYPOINT ["/entrypoint.sh"]
