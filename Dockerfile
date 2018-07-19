FROM ubuntu:16.04
MAINTAINER elizandro@nexthop.net.br


# Start the container with the follonwing command:
#  docker run -it --rm -p 69:69 -v $(pwd):/var/lib/tftpboot --name tftpd nexthopsolutions/tftpd

RUN apt-get update
RUN apt-get install -y tftpd-hpa
VOLUME /var/lib/tftpboot

EXPOSE 69

CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot