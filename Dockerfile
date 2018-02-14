FROM debian:stretch-slim
MAINTAINER Sergio Visinoni <piffio@piffio.org>

RUN apt-get update && \
        apt-get install -y git squashfs-tools kpartx multistrap \
                qemu-user-static samba debootstrap parted \
                dosfstools qemu binfmt-support qemu-utils sudo && \
        rm -rf /var/lib/apt/lists/*

COPY ./build-entrypoint.sh /
ENTRYPOINT ["./build-entrypoint.sh"]
