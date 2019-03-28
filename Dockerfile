FROM centos:latest

RUN yum -y update
RUN yum -y upgrade
RUN yum -y install ntp

CMD [ "mkdir", "/app" ]

# ntp port
EXPOSE 123/udp

# start ntpd in the foreground
ENTRYPOINT [ "/app/start.sh" ]
