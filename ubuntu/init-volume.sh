if grep -qs '/openebs ' /proc/mounts; then
    echo "/openebs already mounted"
else
    mkfs -t ext4 /dev/sdc
    echo '/dev/sdc                /openebs ext4   defaults        0 0' >> /etc/fstab

    mkdir /openebs
    mount /dev/sdc /openebs
fi

