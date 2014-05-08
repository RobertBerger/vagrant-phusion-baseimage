#!/bin/bash
set -x
echo "This will take some time the first time - be patient!"
SET VAGRANT_LOG=debug
vagrant up --provider=docker
