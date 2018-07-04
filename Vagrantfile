# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"   
  
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 8888, host: 8888  #for jupyter notebook
  config.vm.network "forwarded_port", guest: 8787, host: 8787  #for RStudio


  config.vm.synced_folder "www", "/var/www", create:true
  config.vm.synced_folder "data", "/data", create:true

  config.vm.provider "virtualbox" do |vb|   
    vb.memory = "2048"
    vb.cpus = "2"
  end
 
  config.vm.provision :shell, path: "bootstrap.sh"

end
