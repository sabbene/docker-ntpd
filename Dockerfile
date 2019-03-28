FROM centos:latest

RUN yum -y update
RUN yum -y upgrade
RUN yum -y install ntp

# ntp port
EXPOSE 123/udp
CMD [ "mkdir", "/app" ]
COPY "start.sh" "/app/start.sh"
# start ntpd in the foreground
ENTRYPOINT [ "/app/start.sh" ]
