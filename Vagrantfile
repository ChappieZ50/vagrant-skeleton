# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end
  config.vm.provision "shell", path: "scripts/increase_swap.sh"
  config.vm.provision "shell", path: "scripts/update_repositories.sh"
  config.vm.provision "shell", path: "scripts/install_java.sh"
  config.vm.provision "shell", path: "scripts/install_elasticsearch.sh"
  config.vm.provision "shell", path: "scripts/install_nodejs.sh"
  config.vm.provision "shell", path: "scripts/install_postgresql.sh"
  config.vm.provision "shell", path: "scripts/install_python.sh"
end
