Vagrant.configure("2") do |config|
  config.vm.box = "debian/bookworm64"
  config.vm.synced_folder ".", "/home/vagrant/dev"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provision "shell", reboot: true, path: "https://raw.githubusercontent.com/chubbyhippo/vagrant-debian/main/provisioner.sh"
end