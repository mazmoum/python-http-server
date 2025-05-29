FROM docker.io/python:3.11-slim
RUN adduser --disabled-password --gecos "" python-server && \
    mkdir /server && chown -R python-server:python-server /server
USER python-server
WORKDIR /server
CMD ["python", "-m", "http.server"]
