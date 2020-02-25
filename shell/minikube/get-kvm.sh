sudo apt install -y \
    qemu-kvm \
    libvirt-daemon \
    libvirt-daemon-system \
    virtinst \
    bridge-utils \
    cpu-checker

sudo kvm-ok
sudo usermod -aG libvirt $(whoami)
kvm --version
