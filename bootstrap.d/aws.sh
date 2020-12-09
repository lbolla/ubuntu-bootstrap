#!/bin/bash

info 'Install aws'

# See https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install
# and https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst

if ! command -v aws &> /dev/null; then
    pushd /tmp
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install
    popd
fi
