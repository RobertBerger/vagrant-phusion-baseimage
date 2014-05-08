vagrant-phusion-baseimage
=========================

vagrant docker provider demo

Windoze:
=======

*) install vagrant 1.6+: http://www.vagrantup.com/downloads.html

*) install VirtualBox: https://www.virtualbox.org/wiki/Downloads

         click yes to the complaints you get that this software packages are not signed

*) install Cygwin: http://www.cygwin.com/install.html and make sure you choose git: 

       Git packages from the “Devel” category:

         git
         git-completion
         git-gui
         gitk

*) Open a Cygwin shell - we don't want no stinkin DOS prompt :)

*) get into your home directory

         cd ~

*) add a box

         vagrant box add hashicorp/precise64

         2) virtualbox <--- choose this

         wait

*) clone the vagrant file(s) and helper scripts

         git clone https://github.com/RobertBerger/vagrant-phusion-baseimage.git

*) get into your newly cloned git repo

         cd ~/vagrant-phusion-baseimage

*) create VM and docker stuff with vagrant

         ./01_up.sh


