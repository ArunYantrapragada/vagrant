# -*- mode: ruby -*-
# vi: set ft=ruby :

# Every Vagrant development environment requires a box. You can search for
# boxes at https://atlas.hashicorp.com/search.
BOX_IMAGE = "ubuntu/trusty64"
NODE_COUNT = 2

Vagrant.configure("2") do |config|
    config.vm.define "master" do |subconfig|
        subconfig.vm.box = BOX_IMAGE
        subconfig.vm.hostname = "master"
        subconfig.vm.network :private_network, ip: "10.0.0.10"
        subconfig.vm.provision :shell, path: "bootstrap.sh"
    end

   # config.vm.provision :shell, path: "bootstrap.sh"

    (1..NODE_COUNT).each do |i|
        config.vm.define "node#{i}" do |subconfig|
            subconfig.vm.box = BOX_IMAGE
            subconfig.vm.hostname = "node#{i}"
            subconfig.vm.network :private_network, ip: "10.0.0.#{i + 10}"
        end
    end

  # Provisioning with SHELL
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update -y
    echo Hello, VM is ready to work!
  SHELL

  # provisioning with ANSIBLE
    #config.vm.provision "ansible" do |ansible|
    #    ansible.playbook = "playbook.yaml"
    #end
end
