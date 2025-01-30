emerge -av app-emulation/virt-manager
emerge -av =app-emulation/vagrant-2.4.1
vagrant plugin install vagrant-libvirt


cat <<EOF> Vagrantfile
Vagrant.configure(2) do |config|
  config.ssh.shell = '/bin/ash'
  config.ssh.sudo_command = 'doas %c'
  config.vm.provider 'libvirt' do |lv, config|
    lv.random :model => 'random'
    lv.graphics_type = 'spice'
    lv.video_type = 'qxl'
    lv.channel :type => 'unix', :target_name => 'org.qemu.guest_agent.0', :target_type => 'virtio'
    lv.channel :type => 'spicevmc', :target_name => 'com.redhat.spice.0', :target_type => 'virtio'
    config.vm.synced_folder '.', '/vagrant', nfs: true, nfs_version: 4, nfs_udp: false
  end
end
EOF


vagrant up --provider=libvirt
