Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-12.1"
  config.vm.box_version = "202309.08.0"
  config.vm.synced_folder ".", "/home/vagrant/dev"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provision "shell", reboot: true, path: "provisioner.sh"
end