REM DRIVE="e"
REM set -x
REM export PATH=$PATH:"/cygdrive/e/Program Files/Oracle/VirtualBox/"
SET VAGRANT_LOG=debug
REM export VAGRANT_HOME="/cygdrive/e/home/${USER}/vagrant_home"
REM export VAGRANT_DOTFILE_PATH="/cygdrive/e/home/${USER}/vagrant_dotfile_path"
vagrant box add --clean hashicorp/precise64  --provider virtualbox --insecure
