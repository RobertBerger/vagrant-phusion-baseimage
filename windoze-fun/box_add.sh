#!/bin/bash
set -x
export VAGRANT_LOG="debug"
vagrant box add vagrant box add --clean hashicorp/precise64  --provider virtualbox --insecure
