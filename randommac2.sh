#!/bin/bash
random(){
iface=enp0s3   

  newmac=$(printf "%02X:%02X:%02X:%02X:%02X:%02X\n" \
    $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) \
    $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))


sudo ip link set dev  $iface down
sudo ip link set dev $iface address $newmac
sudo ip link set dev $iface up

echo "OLD MAC changed to new MAC  $newmac"
}
echo "$iface MAC changed to $newmac"


random 
