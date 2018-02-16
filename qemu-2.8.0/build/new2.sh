#! /bin/bash
#echo -n "VM name (debian2): "
#read vmname
#if [ "$vmname" = ""  ]
#then
vmname="debian2"
#fi
#echo $vmname
#./x86_64-softmmu/qemu-system-x86_64 -m 1024 -enable-kvm -drive if=virtio,file=../images/$(echo -n $vmname".qcow2"),cache=none -netdev user,id=myeth0 -device virtio-net-pci,netdev=myeth0 -device virtio-vssd-pci 2>&1 | tee -a ../images/$(echo -n $vmname)".log"

#./x86_64-softmmu/qemu-system-x86_64 -m 2048 -smp 4 -enable-kvm -drive if=virtio,file=../images/$(echo -n $vmname".qcow2"),cache=none -D ../images/$(echo -n $vmname".log") -netdev bridge,br=virbr0,helper=./qemu-bridge-helper,id=myeth0 -device virtio-net-pci,netdev=myeth0 -device virtio-vssd-pci

#./x86_64-softmmu/qemu-system-x86_64 -s -m 2048 -smp 1 -enable-kvm -kernel ../../../linux/linux-4.9.14/arch/x86_64/boot/bzImage -append "root=/dev/vda1 console=tty0" -drive if=virtio,file=../images/debian2.qcow2,cache=none -D ../images/debian2.log -netdev bridge,br=virbr0,helper=./qemu-bridge-helper,id=myeth0 -device virtio-net-pci,netdev=myeth0 -device virtio-vssd-pci -balloon virtio-balloon -curses

#./x86_64-softmmu/qemu-system-x86_64 -s -m 2048 -smp 1 -enable-kvm -kernel ../../../linux/linux-4.9.14/arch/x86_64/boot/bzImage -append "root=/dev/vda1 rw console=ttyS0" -drive if=virtio,file=../images/debian2.qcow2,cache=none -D ../images/debian2.log -netdev bridge,br=virbr0,helper=./qemu-bridge-helper,id=myeth0 -device virtio-net-pci,netdev=myeth0 -device virtio-vssd-pci -balloon virtio-balloon -nographic

# Non-graphic mode
#./x86_64-softmmu/qemu-system-x86_64 -s -m 2048 -smp 2 -enable-kvm -kernel ../../../linux/linux-4.9.14/arch/x86_64/boot/bzImage -append "root=/dev/vda1 rw console=ttyS0" -drive if=virtio,file=../images/debian2.qcow2,cache=none -D ../images/debian2.log -netdev bridge,br=virbr0,helper=./qemu-bridge-helper,id=myeth0 -device virtio-net-pci,netdev=myeth0 -device virtio-vssd-pci -balloon virtio-balloon -nographic -drive if=virtio,file=../images/test.img,cache=none 

# Graphic mode
./x86_64-softmmu/qemu-system-x86_64 -kernel /home/deba/essd/linux-4.9.35/arch/x86/boot/bzImage -append "root=/dev/vda1 rw console=tty0"  -enable-kvm  -drive format=raw,if=virtio,file=/home/deba/prashanth/vm_images/vm2.img,cache=none -device virtio-vssd-pci



