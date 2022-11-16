
Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/trusty64"

  config.vm.define:app do |app_config|  
    app_config.vm.network "public_network", ip: "192.168.10.95"

    app_config.vm.provision "shell", inline: "sudo apt update && apt install puppet -y"

    app_config.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "app.pp"
 
    end

 
    app_config.vm.provider:virtualbox do |v|
      v.memory = 1024
      v.cpus = 1
  
    end
  end  
end
