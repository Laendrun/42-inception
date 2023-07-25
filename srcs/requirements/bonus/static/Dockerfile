FROM debian:11

SHELL ["/bin/bash", "-c"]

RUN apt-get update -yq
RUN apt-get install nginx -yq

RUN mkdir -p /var/www/html/

COPY ws /var/www/html/

RUN rm -f /var/www/html/index.nginx-debian.html
CMD ["nginx", "-g", "daemon off;"]