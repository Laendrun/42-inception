FROM debian:11

SHELL ["/bin/bash", "-c"]

RUN apt-get update -yq
RUN apt-get install php-fpm -yq
RUN apt-get install php-mysql -yq
RUN apt-get install mariadb-client -yq
RUN apt-get install curl -yq
RUN apt-get install vim -yq
RUN apt-get install iputils-ping -yq

COPY /conf/www.conf /etc/php/7.4/fpm/pool.d
COPY /tools/wpinit.sh .

RUN chmod +x wpinit.sh

CMD ["bash", "wpinit.sh"]
# CMD ["sleep", "infinity"]