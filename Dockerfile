FROM centos:latest

RUN yum -y update
RUN yum -y upgrade
RUN yum -y install ntp

# ntp port
EXPOSE 123/udp

# start ntpd in the foreground
ENTRYPOINT [ "ntpdate", "-s", "time.nist.gov", ";", "/usr/sbin/ntpd", "-d" ]
