qemu-system-x86_64 \
    -m 256M \
    -kernel ./bzImage \
    -initrd ./initramfs.cpio.gz \
    -append "root=/dev/ram rw rdinit=/root/init console=ttyS0 oops=panic panic=1 quiet nokaslr" \
    -monitor /dev/null \
    -no-reboot \
    -nographic

