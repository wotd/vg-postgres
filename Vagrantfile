Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "db"
  config.vm.network "private_network", ip: "192.168.50.40"
  config.vm.provision :shell, path: "bootstrap-db.sh"
end
