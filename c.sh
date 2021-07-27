#!/bin/bash
var1="$HOSTNAME"
var2=`nproc --all`
var3=`cat /proc/meminfo | grep MemTotal | awk '{ print $2}'`
var31=`echo $(($var3/1024)) MB`

echo "Hostname:"  $var1
echo "CPU cores:" $var2
echo "Total RAM:" $var31 # Change to $var3 for KB
df -H --type btrfs --type ext4 --type ext3 --type ext2 --type vfat --type iso9660 #| awk '{s+=$2} END {printf "%.0f", s}'

exit