FROM alpine:3.18.0
ENV FTP_USER=foo \
	FTP_PASS=bar \
	GID=1000 \
	UID=1000

RUN apk add --no-cache --update \
	vsftpd==3.0.5-r2

COPY [ "/conf/vsftpd.conf", "/etc" ]
COPY [ "/conf/ftp.sh", "/" ]

RUN chmod +x ftp.sh

CMD [ "/usr/sbin/vsftpd" ]
ENTRYPOINT [ "/ftp.sh" ]