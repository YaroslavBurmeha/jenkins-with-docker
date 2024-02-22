FROM debian:12
EXPOSE 80:80
RUN atp update && apt install -y nginx
COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-enabled/default
RUN service nginx restart