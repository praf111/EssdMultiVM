./x86_64-softmmu/qemu-system-x86_64 \
-m 1024 \
-smp 1 \
-enable-kvm \
-kernel /home/prafull/mtp/linux-4.9.14/arch/x86_64/boot/bzImage \
-append "root=/dev/vda1 console=tty0" \
-drive if=virtio,file=/home/prafull/mtp/ubuntu16.04,cache=none \
-object memory-backend-file,id=mb1,size=1M,share,mem-path=/dev/shm/ivshmem \
-device virtio-vssd-pci 
