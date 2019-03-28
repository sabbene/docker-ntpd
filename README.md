docker run --restart=always --detach -v git/docker-ntpd/ntp.conf:/etc/ntp.conf -v git/docker-ntpd/start.sh:/app/start.sh -p 123:123/udp docker-ntpd
