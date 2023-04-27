FROM alpine:latest

ARG PYTHON_VERSION=3.9.5
ARG PORT=8080

ENV PYTHON_VERSION=${PYTHON_VERSION} \
    PORT=${PORT}

RUN apk add --no-cache python3 py3-pip

WORKDIR /index
COPY . /index

RUN pip install -r requirements.txt

EXPOSE ${APP_PORT}
VOLUME ["/index/data"]

CMD ["python3", "index.py", "--port", "${PORT}", "--version", "${PYTHON_VERSION}"]

