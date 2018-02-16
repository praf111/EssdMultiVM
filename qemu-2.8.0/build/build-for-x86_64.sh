#! /bin/bash

# Configure QEMU for x86_64 only - faster build
#../configure --target-list=x86_64-softmmu,i386-softmmu --enable-debug --enable-spice
../configure --target-list=x86_64-softmmu --enable-debug --enable-debug-info --disable-strip --disable-pie #--extra-cflags=-O0

# Build in parallel - my system has 4 CPUs
make -j32

# Change the owner of qemu-bridge-helper and set its SUID to allow normal users to run it
sudo chown root qemu-bridge-helper && sudo chmod 4755 qemu-bridge-helper
