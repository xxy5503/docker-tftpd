FROM debian:stretch

MAINTAINER owa

RUN apt-get update && apt-get install -y tftpd-hpa

VOLUME /var/lib/tftpboot

EXPOSE 69/udp

CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 -l -c -s /var/lib/tftpboot
