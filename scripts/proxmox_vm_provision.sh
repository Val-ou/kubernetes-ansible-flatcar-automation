#!/bin/bash

set -o errexit
set -o pipefail

if [[ ! -n $1 ]]; then
    exit 1
fi

if [[ ! -n $2 ]]; then
    exit 1
fi

if [[ ! -n $3 ]]; then
    exit 1
fi

if [[ ! -n $4 ]]; then
    exit 1
fi

readonly TEMPLATE_ID=$1
readonly VM_ID=$2
readonly VM_NAME=$3
readonly VM_IP=$4

qm clone $TEMPLATE_ID $VM_ID --full --name $VM_NAME
qm set $VM_ID --sshkey ~/.ssh/authorized_keys
qm set $VM_ID --ipconfig0 ip=$VM_IP/16,gw=172.16.0.1
qm set $VM_ID --nameserver=172.16.0.1
qm set $VM_ID --searchdomain=internal

exit 0
