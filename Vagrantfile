# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/alpine318"
  config.vm.box_version = "4.3.12"
  config.vm.network :public_network,
    :dev => "br0",
    :mode => "bridge",
    :type => "bridge"
  config.vm.provider "libvirt" do |libvirt|
   libvirt.cpus = 4
   libvirt.cputopology :sockets => '2', :cores => '2', :threads => '1'
   libvirt.nested = true
   libvirt.storage :file, :device => :cdrom, :path => '/mnt/ansible/molecule/calculate-linux/temp/css-20250124-x86_64.iso'
  end
end
