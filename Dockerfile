FROM ubuntu:16.04
MAINTAINER diboanches 

ENV http_proxy <proxy_ip> 
ENV https_proxy <proxy_ip> 

RUN apt-get update && apt-get install -y nginx 
RUN rm -rf /var/www/html/*
COPY index.html /var/www/html/
EXPOSE 80 

CMD /usr/sbin/nginx -g "daemon off;"
