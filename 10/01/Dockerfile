FROM python:latest
WORKDIR /app
RUN pip install flask
COPY app.py .
EXPOSE 5000
CMD [ "python", "app.py" ]