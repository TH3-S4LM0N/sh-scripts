#!/usr/bin/env bash
source /etc/os-release
if [ "$NAME" != "Arch Linux" ]; then
    echo "This script only runs on Arch Linux"
fi

sudo pacman -Sy qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat libguestfs
sudo systemctl enable --now libvirtd
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt
sudo systemctl restart libvirtd