#bin/bash

# need to run make 2 times for whatever reason to get the .ko
make
make

sudo rmmod 88XXau_ohd

sudo insmod 88XXau_ohd.ko
