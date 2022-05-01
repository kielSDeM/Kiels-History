
#!/bin/bash
#written by Kiel DeMarco

FILE1=/home/zero/qemu-scripts/arch.img
FILE2=/home/zero/qemu-scripts/archlinux-2022.03.01-x86_64.iso
#creates arch virtual disk if it does not exist
if [ ! -f "$FILE1" ]
then
    echo "Going to create an arch virt-disk"
    qemu-img create -f raw arch.img 60G 
else
    echo "files exists"
fi
#downloads arch iso if not already downloaded
if [ ! -f "$FILE2" ]
then
	echo "downloading arch linux"
	wget http://mirror.arizona.edu/archlinux/iso/2022.03.01/archlinux-2022.03.01-x86_64.iso
else
    echo "arch downloaded"
fi

#starts arch img with iso or without iso if installed.
if qemu-img info arch.img | grep -i "disk size: 4 KiB"
then
    qemu-system-x86_64 -hda arch.img -boot d \
    -cdrom archlinux-2022.03.01-x86_64.iso  -m 4096M -cpu host \
    -smp 2 -enable-kvm 
    echo "starting arch booter"
else

    kvm -device intel-hda arch.img -boot d \
    -m 4096M -cpu host \
    -smp 4 -spice port=3001,disable-ticketing=on \
    -vga qxl -enable-kvm \
    -device virtio-serial-pci,id=virtio-serial0,max_ports=16,bus=pci.0,addr=0x5 \
    -chardev spicevmc,name=vdagent,id=vdagent \
    -device virtserialport,nr=1,bus=virtio-serial0.0,chardev=vdagent,name=com.redhat.spice.0

    echo "starting arch"
fi 
