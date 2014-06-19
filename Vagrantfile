# -*- mode: ruby -*-
# vi: set ft=ruby :

def share_folder(location, name, box)
  if location
    box.vm.share_folder(name, name, location, :nfs => true)
  end
end

Vagrant::Config.run do |config|

  config.vm.define "ier-dev" do |box|

    box.vm.box = "precise64"
    box.vm.box_url = "http://files.vagrantup.com/precise64.box"
    box.vm.network :hostonly, "192.168.33.10"

#share_folder "~/.sbt", "/home/vagrant/.sbt", box
    share_folder ENV['IER_FRONTEND'], "/ier/frontend", box

    box.vm.provision "puppet" do |puppet|
      puppet.module_path = "modules"
      puppet.manifest_file = "puppet.pp"
    end
  end

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  # config.vm.network :hostonly, "192.168.33.10"

  # Set the default project share to use nfs
  # config.vm.share_folder("v-web", "/vagrant/www", "./www", :nfs => true)
  # config.vm.share_folder("v-db", "/vagrant/db", "./db", :nfs => true)

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080

  # Set the Timezone to something useful
  # config.vm.provision :shell, :inline => "echo \"Europe/London\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"

  # Update the server
  # config.vm.provision :shell, :inline => "apt-get update --fix-missing"

end

