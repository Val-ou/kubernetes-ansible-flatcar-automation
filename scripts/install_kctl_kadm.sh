#!/bin/bash

set -o errexit
set -o pipefail

mv -f .temp/kubectl /opt/bin/kubectl
mv -f .temp/kubeadm /opt/bin/kubeadm

chown root:root /opt/bin/kubectl
chown root:root /opt/bin/kubeadm

chmod 0755 /opt/bin/kubectl
chmod 0755 /opt/bin/kubeadm

exit 0
