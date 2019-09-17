FROM ubuntu

EXPOSE 9666 9667 56666 56666/udp

ADD https://github.com/spockchain/spock/releases/download/v2.0.3/spock_linux_amd64_v2.0.3 /

RUN chmod +x /spock_linux_amd64_v2.0.3

ENTRYPOINT ["/spock_linux_amd64_v2.0.3"]
