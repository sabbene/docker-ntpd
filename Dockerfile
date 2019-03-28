FROM centos:latest

RUN yum -y update
RUN yum -y upgrade
RUN yum -y install ntp

RUN ln -sf /dev/stdout /var/log/ntp.log

CMD [ "mkdir", "/app" ]

# ntp port
EXPOSE 123/udp

# start ntpd in the foreground
ENTRYPOINT [ "/app/start.sh" ]
