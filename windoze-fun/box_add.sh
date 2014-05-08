#!/bin/bash
set -x
export VAGRANT_LOG="debug"
export VAGRANT_HOME="/home/User/VAGRANT_HOME"
export VAGRANT_DOTFILE_PATH="/home/User/VAGRANT_DOTFILE_PATH"
vagrant box add --clean hashicorp/precise64  --provider virtualbox --insecure
