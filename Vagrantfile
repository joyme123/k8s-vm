# master
Vagrant.configure("2") do |config|


end


# worknode

Vagrant.configure("2") do |config|
  (1..2).each do |i|
    config.vm.define "node-#{i}" do |node|
      node.vm.hostname "node-#{i}"
      node.vm.provision "shell", path: "join.sh"
      
  end
end