#!/bin/bash

if [[ $EUID -ne 0 ]]; then
  echo "You must run this with superuser priviliges.  Try \"sudo ./dkms-install.sh\"" 2>&1
  exit 1
else
  echo "About to run dkms install steps..."
fi

#Add devendencies
sudo apt install sbsigntool dkms linux-headers-`uname -r` -y

DRV_DIR=rtl8812au
DRV_NAME=rtl8812au
DRV_VERSION=5.2.20.2

cp -r $(pwd) /usr/src/${DRV_NAME}-${DRV_VERSION}

dkms add -m ${DRV_NAME} -v ${DRV_VERSION}
dkms build -m ${DRV_NAME} -v ${DRV_VERSION}
dkms install -m ${DRV_NAME} -v ${DRV_VERSION}
RESULT=$?

#Sign driver
INST_DRV_DIR=/lib/modules/`uname -r`/updates/dkms
MOD_NAME=88XXau_wfb.ko
unzstd ${INST_DRV_DIR}/${MOD_NAME}.zst
kmodsign sha512 mok/MOK.priv mok/MOK.der ${INST_DRV_DIR}/${MOD_NAME}
rm ${INST_DRV_DIR}/${MOD_NAME}.zst
zstd ${INST_DRV_DIR}/${MOD_NAME}
rm ${INST_DRV_DIR}/${MOD_NAME}

echo "Finished running dkms install steps."


	if echo "net.ipv6.conf.all.disable_ipv6 = 1
  net.ipv6.conf.default.disable_ipv6 = 1
  net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf; then
		echo "Disabled IPv6 Successfuly "
		sysctl -p
	else
		echo "Could not disable IPv6"
	fi



exit $RESULT
