# sistema base 
FROM alpine:latest

RUN mkdir -p /home/app

COPY . /home/app

EXPOSE 3000
