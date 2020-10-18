# Getting Base Image
FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl

# install nginx
RUN touch /etc/apt/sources.list.d/nginx.list
RUN echo "deb http://nginx.org/packages/ubuntu/ precise nginx" >> /etc/apt/sources.list.d/nginx.list
RUN echo "deb-src http://nginx.org/packages/ubuntu/ precise nginx" >> /etc/apt/sources.list.d/nginx.list
RUN curl http://nginx.org/keys/nginx_signing.key | apt-key add -
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y vim

# set working directory
WORKDIR /root

# Port
EXPOSE 22 80 
