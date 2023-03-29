#!/bin/bash
echo "We're now compiling the rtl8812au driver into your stock kernel"
sudo apt install -y dkms
sudo ./opt/rtl8812au/dkms-install.sh > /opt/installrtl.log
systemctl disable rtl8812auEasyCompile
sudo rm -Rf /etc/systemd/system/rtl8812auEasyCompile.service
sudo rm -Rf /usr/local/bin/rtl8812auEasyCompile.sh
echo "cleanup done"