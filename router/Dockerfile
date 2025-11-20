FROM debian:13

RUN apt-get update && apt-get install -y \
        iptables \
        iproute2 \
        bash \
        && rm -rf /var/lib/apt/lists/*

RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]