#!/bin/bash
#not to be used
cd /opt/pin/BRM
source source.me.sh
cd /opt/pin/BRM/source/sys/fm_cust_pol
make clean
make
cp fm_cust_pol_custom.so /opt/pin/BRM/lib/fm_cust_pol_custom.so
stop_cm
start_cm
echo "#--------Done updating the Code------------------#"
