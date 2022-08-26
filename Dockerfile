FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install nginx -y
COPY nginx_settings.conf ./etc/nginx/conf.d/
COPY index.html /var/www/html/index.html
RUN ln -sf /dev/stdout /var/log/nginx/ip.access.log && ln -sf /dev/stderr /var/log/nginx/error.log
CMD ["nginx","-g","daemon off;"]