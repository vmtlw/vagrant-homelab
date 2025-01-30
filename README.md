emerge -av app-emulation/virt-manager
emerge -av =app-emulation/vagrant-2.4.1
vagrant plugin install vagrant-libvirt
vagrant up --provider=libvirt
