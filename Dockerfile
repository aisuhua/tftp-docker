FROM ubuntu:22.04

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && \
    sed -i s@/security.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        busybox \
        tftpd-hpa && \
    rm -rf /var/lib/apt/lists/*

VOLUME /data

ADD entrypoint.sh /entrypoint.sh

EXPOSE 69/udp
STOPSIGNAL SIGKILL

ENTRYPOINT ["/entrypoint.sh"]
