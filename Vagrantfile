# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Load balancer
  config.vm.define "lb1" do |lb1|
    lb1.vm.box = "ubuntu/xenial64"
    lb1.vm.network "private_network", ip: "192.168.56.10"
    lb1.vm.provision :shell do |shell|
      shell.path = "lb.sh"
    end
  end
  # Box 1
  config.vm.define "web1" do |web1|
    web1.vm.box = "ubuntu/xenial64"
    web1.vm.network "private_network", ip: "192.168.56.11"
    web1.vm.provision :shell do |shell|
      shell.args = "1"
      shell.path = "web.sh"
    end
  end
  # Box 2
  config.vm.define "web2" do |web2|
    web2.vm.box = "ubuntu/xenial64"
    web2.vm.network "private_network", ip: "192.168.56.13"
    web2.vm.provision :shell do |shell|
      shell.args = "2"
      shell.path = "web.sh"
    end
  end
end
