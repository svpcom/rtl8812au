#!/bin/bash
if [ -e "/lib/modules/6.3.13-060313-generic/kernel/drivers/net/wireless/88XXau_wfb.ko" ]; then
    sudo rm -Rf "/lib/modules/6.3.13-060313-generic/kernel/drivers/net/wireless/88XXau_wfb.ko"
fi
if [ -e "/lib/modules/6.3.13-060313-generic/kernel/drivers/net/wireless/88XXau_ohd.ko" ]; then
    sudo rm -Rf "/lib/modules/6.3.13-060313-generic/kernel/drivers/net/wireless/88XXau_ohd.ko"
fi