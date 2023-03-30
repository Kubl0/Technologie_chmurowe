#!/bin/bash

docker volume create nodejs_data

docker run -d --name nodejs_container -v nodejs_data:/app node:latest

docker volume create all_volumes

docker run --rm -v nginx_data:/usr/share/nginx/html -v all_volumes:/all_volumes busybox sh -c "cp -r /usr/share/nginx/html/* /all_volumes/"

docker run --rm -v nodejs_data:/app -v all_volumes:/all_volumes busybox sh -c "cp -r /app/* /all_volumes/"
