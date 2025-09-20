#!/bin/bash

set -o errexit
set -o pipefail

if [[ ! -n $1 ]]; then
    exit 1
fi

if [[ ! -n $2 ]]; then
    exit 1
fi

readonly ADDRESS=$1
readonly NAME=$2

if grep -q "$ADDRESS" /etc/hosts; then
    sed -i "s/$ADDRESS.*/$ADDRESS    $NAME/" /etc/hosts
else
    echo "$ADDRESS    $NAME" >> /etc/hosts
fi

exit 0
