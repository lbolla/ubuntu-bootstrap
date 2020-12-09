#!/bin/bash

# See https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install
# and https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst

if ! command -v aws &> /dev/null; then
    info 'Install aws'
    pushd /tmp
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    rm -rf /tmp/aws/
    popd
fi

if [ $_bootstrap_upgrade -eq 1 ]; then
    debug 'Upgrade aws'
    pushd /tmp
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install --update
    rm -rf /tmp/aws/
    popd
fi
