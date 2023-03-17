FROM ubuntu:18.04

RUN apt-get update
RUN apt install -y nginx

COPY ./nginx/ /etc/nginx/conf.d/

EXPOSE 80

CMD ["nginx", "-g", "'daemon off;'"]
