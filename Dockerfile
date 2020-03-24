# This is the Dockerfile for colorapp
FROM python:3.7-slim

WORKDIR /usr/hello

ENV FLASK_APP=hello.py
ENV PYTHONDONTWRITEBYTECODE 1

EXPOSE 5000/tcp

COPY . . 

RUN pip install -r requirements.txt

CMD ["flask","run","--host=0.0.0.0"]
