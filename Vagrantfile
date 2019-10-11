Vagrant.configure("2") do |config|

  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/bionic64"
    master.vm.hostname = "master"
    master.vm.provision "shell", path: "master.sh"
    master.vm.network "private_network", ip: "172.0.1.2"
  end

  (1..2).each do |i|
    config.vm.define "worknode-#{i}" do |node|
      node.vm.box = "ubuntu/bionic64"
      node.vm.hostname = "worknode-#{i}"
      node.vm.provision "shell", path: "worknode.sh"
      node.vm.network "private_network", ip: "172.0.1.#{i+2}"
    end
  end
end