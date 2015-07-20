# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "bleepy"

  config.vm.provider :vmware_fusion do |v|
    v.vmx["memsize"] = "2048"
    v.vmx["numvcpus"] = "1"
  end

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.ssh.forward_agent = true

  config.vm.network "private_network", ip: "192.168.50.5"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

end
