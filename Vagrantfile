# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "generic/alpine316"
  config.vm.box_version = "4.2.14"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 256
    vb.linked_clone = true
  end

  config.vm.provision "python3", type: "shell",
    inline: "sudo apk add python3"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "playbook.yml"
  end
end
