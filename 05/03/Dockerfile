ARG PYTHON_VERSION=latest;
FROM python:${PYTHON_VERSION}
COPY ./myapp /index
WORKDIR /index

RUN pip install -r requirements.txt

CMD ["python", "index.py"]