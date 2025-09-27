#!/bin/sh
static (){
macdown=$(sudo ip link set enp0s3  down)
macchange=$(sudo ip link set enp0s3 address 60:22:00:99:44:03)
macup=$(sudo ip link set enp0s3 up)


}
echo $macdown
echo $macchnage
echo $macup


static
