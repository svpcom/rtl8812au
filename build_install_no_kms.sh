#bin/bash

# need to run make 2 times for whatever reason to get the .ko
make
make

sudo rmmod 88XXau_wfb

sudo insmod 88XXau_wfb.ko
