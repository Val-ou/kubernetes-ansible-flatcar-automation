#!/bin/bash

set -o errexit
set -o pipefail

mv -f .temp/kubelet /opt/bin/kubelet
chown root:root /opt/bin/kubelet
chmod 0755 /opt/bin/kubelet

mkdir -p /etc/systemd/system/kubelet.service.d

mv -f .temp/kubelet.service /etc/systemd/system/kubelet.service
mv -f .temp/10-kubeadm.conf /etc/systemd/system/kubelet.service.d/10-kubeadm.conf
mv -f .temp/20-flatcar.conf /etc/systemd/system/kubelet.service.d/20-kubelet.conf

chown root:root /etc/systemd/system/kubelet.service
chown root:root /etc/systemd/system/kubelet.service.d/*

chmod 0644 /etc/systemd/system/kubelet.service
chmod 0644 /etc/systemd/system/kubelet.service.d/*

systemctl daemon-reload
systemctl enable kubelet

exit 0
