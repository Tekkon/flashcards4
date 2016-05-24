Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  config.vm.provision :shell, path: "config/vagrant/system/update.sh"
  config.vm.provision :shell, path: "config/vagrant/ruby/rvm/install.sh"
  config.vm.provision :shell, path: "config/vagrant/git/install.sh"
  config.vm.provision :shell, path: "config/vagrant/mc/install.sh"
  config.vm.provision :shell, path: "config/vagrant/postgresql/install.sh"
  config.vm.provision :shell, path: "config/vagrant/nodejs/install.sh"
  config.vm.provision :shell, path: "config/vagrant/libpq-dev/install.sh"
  config.vm.provision :shell, path: "config/vagrant/postgresql/create_database.sh"
  config.vm.provision :shell, path: "config/vagrant/rails/start.sh"
end
