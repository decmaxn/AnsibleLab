# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  config.vm.define "acs" do |acs|
	acs.vm.box = "ubuntu/trusty64"
	acs.vm.hostname = "acs"
	acs.vm.network "private_network", ip:"192.168.33.10"
   end

   config.vm.define "s12" do |s12|
	s12.vm.box="opentable/win-2012r2-standard-amd64-nocm"
	s12.vm.hostname="s12"
	s12.vm.network "private_network", ip:"192.168.33.253"
 	s12.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true
	s12.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
   end

end
