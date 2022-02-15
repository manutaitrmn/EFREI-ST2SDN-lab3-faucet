Vagrant.configure("2") do |config|
    config.vm.define "faucet" do |faucet|
        faucet.vm.box = "bento/ubuntu-18.04"
        faucet.vm.hostname = "faucet"
        faucet.vm.network "private_network", ip: "10.10.20.4"
        faucet.vm.provider "virtualbox" do |v|
            v.memory = 4096
            v.cpus = 2
            v.name = "faucet"
        end
    end
end