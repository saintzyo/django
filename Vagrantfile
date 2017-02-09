Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
	v.name = "django"
  end

  config.vm.box = "bento/ubuntu-16.04"

  config.vm.network "private_network", ip: "10.0.1.10"

  config.vm.provision "shell", inline: <<-SHELL
     apt-get install -y python
	 apt-get install -y software-properties-common
	 apt-add-repository -y ppa:ansible/ansible
	 apt-get update
	 apt-get install -y ansible
  SHELL
  Vagrant.configure("2") do |config|

  config.vm.provision "file", source: "./ansible", destination: "/vagrant/"
  end
  config.vm.provision "shell", inline: <<-SHELL
	cd /vagrant/ansible
	ansible-playbook -i hosts main.yml
  SHELL
end
