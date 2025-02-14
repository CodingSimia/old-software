FROM  ubuntu:18.04

EXPOSE 80

RUN apt update && apt install -y nginx
RUN service nginx stop

COPY docs /var/www/html

CMD ["nginx", "-g", "daemon off;" ]
