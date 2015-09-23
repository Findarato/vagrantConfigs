# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "WPLreports"
#  config.vm.provider = "virtualbox"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 3001, host: 3001
  config.vm.network "forwarded_port", guest: 5000, host: 3000
  config.vm.network "forwarded_port", guest: 5001, host: 3001
  config.vm.network "forwarded_port", guest: 80, host: 3080
  config.vm.box_check_update = true
  config.vm.provider "virtualbox" do |v|
    v.gui = false
    v.name = "WPLreports"
    v.memory = 1024
    v.cpus = 2
  end
end
