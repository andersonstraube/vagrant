
Vagrant.configure("2") do |config|

  config.vm.box = "hashicorp/bionic64"

  config.vm.box_check_update = true

  config.vm.network "forwarded_port", guest: 3306, host: 3307

  config.vm.network "private_network", ip: "192.168.56.0"


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"


  config.vm.provider "virtualbox" do |vb|
     vb.name = "mysqlserver"
     vb.memory = "1024"
     vb.cpus = 1
 end
 
  config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y mysql-server
     mysql < /vagrant/mysql/create-user.sql && \
     cat /vagrant/mysql/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf && \
     service mysql restart
   SHELL
end
