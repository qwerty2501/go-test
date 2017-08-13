# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "centos/7"
  config.vm.hostname = "milky-vagrant"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 443, host: 50000

  config.vm.synced_folder "./", "/q2/go/src/test-project", create: true

  config.vm.provision :shell, inline: "sudo sh /q2/go/src/test-project/bootstraps/vagrant_bootstrap.sh"
  

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
