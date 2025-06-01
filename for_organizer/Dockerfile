FROM ubuntu:22.04

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y socat
RUN apt-get install -y qemu-system
ENV TERM=linux

ADD qemu.sh /
ADD bzImage /
ADD initramfs.cpio.gz /
RUN chmod +x /qemu.sh
RUN chmod +x /bzImage

CMD socat TCP-LISTEN:55555,reuseaddr,fork EXEC:"timeout 3600 /qemu.sh"
