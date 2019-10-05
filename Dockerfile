FROM ubuntu

EXPOSE 9666 9667 56666 56666/udp

ADD spock_linux_amd64_v2.0.11 /

RUN chmod +x /spock_linux_amd64_v2.0.11

ENTRYPOINT ["/spock_linux_amd64_v2.0.11"]
