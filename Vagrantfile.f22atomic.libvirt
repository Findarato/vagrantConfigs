# Vagrantfile for Fedora 22 Atomic Host

Vagrant.configure(2) do |config|

 config.vm.box = "f22atomic"

 config.vm.provider "libvirt" do |libvirt|
    libvirt.driver = "kvm"
    libvirt.memory = 2048
    libvirt.cpus = 4
  end

#  config.vm.provision "shell", path: "http://192.168.1.33/~joe/provisioner.sh"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo dnf install -y nano python ruby npm which make wget cachefilesd
    sudo reboot

    #Update Node
    sudo npm cache clean -f
    sudo npm install -g n
    sudo n stable

#Install Bower and some generators
    sudo npm install -g inherits diff yo bower grunt-cli gulp gulp-webp  --save-dev
    sudo npm install -g generator-polymer


    sudo echo 'RUN=yes' > /etc/default/cachefilesd

  SHELL


  config.vm.synced_folder "~/Documents/webapps/dndTool/", "/vagrant/", type: "nfs", mount_options: ['rw', 'tcp','fsc']  #the fsc is for cachedfilesd
  
end
