FROM centos:latest

RUN yum -y update
RUN yum -y install ntp

# ntp port
EXPOSE 123/udp

# start ntpd in the foreground
ENTRYPOINT [ "/usr/sbin/ntpd", "-d" ]
