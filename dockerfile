FROM nginx:1.24.0-bullseye
EXPOSE 80:80
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf