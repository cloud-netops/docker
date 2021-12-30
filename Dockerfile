FROM ubuntu:20.04
MAINTAINER "Satya<satya.netops@gmail.com>"
RUN apt update
RUN apt install -y nginx\
    iproute2\
    iputils-ping\
    curl
COPY index.html /usr/share/nginx/html
COPY index.html /var/www/html
VOLUME /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


