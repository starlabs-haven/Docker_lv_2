FROM nginx

MAINTAINER Nathan Stark

COPY conf/nginx.conf /etc/nginx/
COPY conf/default.conf /etc/nginx/conf.d/
COPY conf/index.html /var/www/myvhost/

RUN usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80