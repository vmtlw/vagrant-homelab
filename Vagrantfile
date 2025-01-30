# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/alpine318"
  config.vm.box_version = "4.3.12"
  config.vm.provider "libvirt" do |libvirt|
   libvirt.storage :file, :device => :cdrom, :path => '/mnt/ansible/molecule/calculate-linux/temp/css-20250124-x86_64.iso'
  end
end
