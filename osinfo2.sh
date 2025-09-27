#!/bin/bash
source ./randommac2.sh

source ./static-macchanger.sh 

source ./manual-mac.sh 



options () {
  echo "------------------"
  echo " choose an options"
  echo "-------------------"

  echo "1 . View ip address"
  echo "2 . MAC address"
  echo "3 . OS-info"
  echo "4 . DNS-records"
  echo "5 . inbuild-mac-address "
  echo "6 . Random-mac-address change"
  echo "7 . manual-mac address-change"
  echo "8 . Screen  clean"
  echo "9 . Exit"

}
while true ; do
  options
  read -p " please choose an options"::: opt

  case $opt in
    1) sudo ip add ;;
    2) sudo ip link ;;
    3) neofetch ;;
    4) nmcli dev show | grep DNS ;;
    5) static ;;
    6) random ;;
    7) manual-mac;;
    8) clear ;;
    9) exit ;;
    *)
    esac
  done

  
