VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  # config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network :forwarded_port, guest: 8080, host: 8080
config.vm.network :forwarded_port, guest: 80, host: 80

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end
  config.vm.provision :shell, :path => "docker-bootstrap.sh"
end
