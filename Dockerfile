FROM alpine:latest

RUN apk update
RUN apk upgrade
RUN apk add ntp

# ntp port
EXPOSE 123/udp

# start ntpd in the foreground
ENTRYPOINT [ "/usr/sbin/ntpd", "-d" ]
