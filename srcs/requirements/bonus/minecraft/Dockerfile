FROM debian:11

SHELL ["/bin/bash", "-c"]

RUN apt-get update -yq
RUN apt-get install openjdk-17-jre-headless -yq
RUN apt-get install screen -yq
RUN apt-get install wget -yq

RUN mkdir -p /var/data/server
RUN wget https://piston-data.mojang.com/v1/objects/8f3112a1049751cc472ec13e397eade5336ca7ae/server.jar -O /var/data/server/server.jar

COPY ./conf/server_init.sh /var/data/server/
COPY ./conf/server.properties /var/data/server/
COPY ./conf/ops.json /var/data/server/
RUN chmod +x /var/data/server/server_init.sh

CMD ["bash", "/var/data/server/server_init.sh"]