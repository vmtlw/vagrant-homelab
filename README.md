emerge -av app-emulation/virt-manager
emerge -av =app-emulation/vagrant-2.4.1
vagrant plugin install vagrant-libvirt
vagrant up --provider=libvirt
emerge -a dev-util/packer
packer plugins install github.com/hashicorp/qemu
packer build example_packer_calculate.json
