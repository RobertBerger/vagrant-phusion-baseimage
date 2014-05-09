vagrant-phusion-baseimage
=========================

vagrant docker provider demo

Linux:
======
*) install docker - avoid version 0.10.0 since it has a problem with /dev/shm - I currently use v0.10.1
That's what I did on Ubuntu 12.04:

        sudo sh -c "echo deb https://test.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
        sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
        sudo sh -c "wget -qO- https://test.docker.io/gpg | apt-key add -"
        sudo apt-get update
        sudo apt-get install -y lxc-docker

add your user to the docker group:

        sudo adduser ${USER} docker

*) install vagrant 1.6+: http://www.vagrantup.com/downloads.html

*) clone the vagrant file(s) and helper scripts

You might need to create a ~/.gitconfig for this to work

         cd ~
         git clone https://github.com/RobertBerger/vagrant-phusion-baseimage.git

*) get into your newly cloned git repo

         cd ~/vagrant-phusion-baseimage

*) create docker stuff with vagrant:

         ./01_up.sh

*) ssh to it:

	 ./02_ssh.sh

If you really really want it on Windoze keep on reading. It is much easier wipe you Windows and install Ubuntu.

Windows is a pain in the ass!

... I warned you ...

Windoze:
=======

*) install putty: http://www.putty.org/

*) install vagrant 1.6+: http://www.vagrantup.com/downloads.html

*) install VirtualBox: https://www.virtualbox.org/wiki/Downloads

         click yes to the complaints you get that this software packages are not signed

*) Make sure to put the folder where Virtualbox was installed on the System Path!

In Unix/Linux it would be something like:

         export PATH=$PATH:"/cygdrive/e/Program Files/Oracle/VirtualBox/"

In Windoze do whatever you have to do and - restart...

*) I guess (since it's Windoze) you rebooted already a couple of times until here. If not it's now a good time to reboot!

Check that we vagrant and virtualbox are on the system path, if not, fix it now!

*) install Cygwin: http://www.cygwin.com/install.html and make sure you choose git: 

       Git packages from the “Devel” category:

         git
         git-completion
         git-gui
         gitk

         bsdtar
         bsdcpio

         openssh   
         openssl 

install/configure/start the ssh server: http://docs.oracle.com/cd/E24628_01/install.121/e22624/preinstall_req_cygwin_ssh.htm

*) use putty to ssh to your newly created ssh server

To avoid funnt problems I recommend to access the ssh server/cygwin through putty from now on!

*) In order not to spend hours searching (like me) make sure bsdtar and bstcpio which come with vagrant are operational:
(it seems to be quite usual for bsdtar not to work - https://github.com/mitchellh/vagrant/issues/3724)

make sure that <Whereever you installed vagrant>/HashiCorp/Vagrant/embedded/gnuwin32/bin:

        bsdtar.exe
        
        bsdcpio.exe

are working. Just execute them on a DOS shell to check.

If they don't work find a replacement, like from Cygwin (see above) and copy them over to <Whereever you installed vagrant>/HashiCorp/Vagrant/embedded/gnuwin32/bin:

e.g. in a Cywgin shell from <Whereever you installed vagrant>/HashiCorp/Vagrant/embedded/gnuwin32/bin:

        cp /usr/bin/bsdcpio.exe ..

        cp /usr/bin/bsdtar.exe .

*) get into your home directory (through putty/cygwin)

         cd ~

*) add a box 

         vagrant box add hashicorp/precise64

         2) virtualbox <--- choose this

wait

*) make sure vagrant is able to download a box

         VAGRANT_LOG=debug vagrant box add --clean hashicorp/precise64  --provider virtualbox --insecure

If this does not work check bsdtar.exe!

Only if this works go ahead!!!      

*) clone the vagrant file(s) and helper scripts - remember all through putty on the cygwin ssh server

You might need to create a ~/.gitconfig for this to work

         cd ~
         git clone https://github.com/RobertBerger/vagrant-phusion-baseimage.git

*) get into your newly cloned git repo

         cd ~/vagrant-phusion-baseimage

*) create VM and docker stuff with vagrant

         ./01_up.sh

*) ssh to it

	 ./02_ssh.sh
