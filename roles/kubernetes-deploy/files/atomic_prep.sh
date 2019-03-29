#!/bin/bash

sudo atomic host upgrade /
sudo groupadd docker /
sudo usermod -aG docker centos /
sudo chown centos /var/run/docker.sock /
systemctl cat docker | grep -i mount /
mkdir /opt/cni /etc/cni /
chcon -Rt svirt_sandbox_file_t /etc/cni /
chcon -Rt svirt_sandbox_file_t /opt/cni