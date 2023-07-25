FROM debian:11

SHELL ["/bin/bash", "-c"]

RUN apt-get update -yq
RUN apt-get install redis -yq

COPY /conf/redis.conf /etc/redis.conf

CMD ["redis-server", "/etc/redis.conf"]