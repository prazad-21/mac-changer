#!/bin/bash

manual-mac () {

read -p "Enter your static mac address": Newmac

sudo ip link set dev enp0s3 down
sudo ip link set dev enp0s3 address  "$Newmac"
sudo ip link set dev enp0s3 up 
}
manual-mac
echo " your mac changed to $Newmac"
