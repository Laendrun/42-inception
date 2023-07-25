FROM debian:11

SHELL ["/bin/bash", "-c"]

RUN apt-get update -yq
RUN apt-get install adminer -yq
RUN apt-get install wget -yq
RUN apt-get install systemctl -yq

COPY ./conf/adminer_init.sh /
RUN chmod +x adminer_init.sh

CMD ["bash", "adminer_init.sh"]