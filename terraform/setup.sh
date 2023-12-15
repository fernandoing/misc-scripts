#!/bin/bash
set -x

if [[ -z "${TF_VERSION}" ]]; then
  TF_VERSION="1.6.6"
else
  TF_VERSION="${TF_VERSION}"
fi

# get tfenv tool for selecting TF version
rm -rf ~/.tfenv
git clone https://github.com/tfutils/tfenv.git ~/.tfenv

# link tfenv to the bin
rm -rf ~/bin
mkdir ~/bin
ln -s ~/.tfenv/bin/* ~/bin/

# select and install TF version
tfenv install "${TF_VERSION}"
tfenv use "${TF_VERSION}"

# Test tf version
terraform --version
