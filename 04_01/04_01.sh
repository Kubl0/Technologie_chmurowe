#!/bin/bash

docker volume create nginx_data

docker run -d --name nginx_container -p 80:80 -v nginx_data:/usr/share/nginx/html nginx

docker exec -it nginx_container bash -c "echo 'Hello World' > /usr/share/nginx/html/index.html"