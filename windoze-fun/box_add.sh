#!/bin/bash
DRIVE="e"
set -x
export PATH=$PATH:"/cygdrive/e/Program Files/Oracle/VirtualBox/"
export VAGRANT_LOG="debug"
export VAGRANT_HOME="/cygdrive/e/home/${USER}/vagrant_home"
export VAGRANT_DOTFILE_PATH="/cygdrive/e/home/${USER}/vagrant_dotfile_path"
vagrant box add --clean hashicorp/precise64  --provider virtualbox --insecure
