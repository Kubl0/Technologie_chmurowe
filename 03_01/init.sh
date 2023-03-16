docker build -t my_nginx .
docker run -d --name my_nginx_conainr -p 8080:80 my_nginx
