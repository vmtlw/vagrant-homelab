```
emerge -av app-emulation/virt-manager
emerge -av =app-emulation/vagrant-2.4.1
vagrant plugin install vagrant-libvirt
emerge -a dev-util/packer
packer plugins install github.com/hashicorp/qemu
mkdir -p http && packer build example_packer_calculate.json
wget https://raw.githubusercontent.com/vagrant-libvirt/vagrant-libvirt/refs/heads/main/tools/create_box.sh
./create_box.sh IMAGE [BOX] [Vagrantfile.add]
vagrant up --provider=libvirt 
```
