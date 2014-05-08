# -*- mode: ruby -*-
# vi set ft=ruby:

# Vagranfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
 config.vm.define "phusion" do |v|
   v.vm.provider "docker" do |d|
     d.cmd   = ["/sbin/my_init", "--enable-insecure-key"]
     d.image = "phusion/baseimage"
     d.has_ssh = true
     d.vagrant_vagrantfile = "./docker/Vagrantfile"
   end

     v.ssh.username = "root"
     v.ssh.private_key_path = "phusion.key"
     v.ssh.port = "22"

     v.vm.provision "shell", inline: "echo Hello"
     
     v.vm.synced_folder "./keys", "/vagrant"
 end
end
