FROM ubuntu

RUN apt-get update && apt-get install -y nginx

COPY default /etc/nginx/sites-available/default

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

