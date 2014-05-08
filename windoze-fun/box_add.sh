#!/bin/bash
set -x
export VAGRANT_LOG="debug"
export VAGRANT_HOME="/home/${USER}/vagrant_home"
export VAGRANT_DOTFILE_PATH="/home/${USER}/vagrant_dotfile_path"
vagrant box add --clean hashicorp/precise64  --provider virtualbox --insecure
