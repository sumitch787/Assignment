#!/bin/bash

blueprintid="ubuntu_18_04"
echo "Enter the Instance Name:-"
read instancename
echo "Enter the AZ(AZ should be like us-east-1a...):-"
read azone
echo "Enter the Key-Pair Name:-"
read keyname
echo "Enter the Bundle-ID:-"
bundle="$(aws lightsail get-bundles | grep bundleId)"
echo $bundle 
read bundleid
echo "Enter the Static ID name:-"
read staticidname
echo "Enter the Snapshot name:-"
read snapname

echo "=====Launching Instance with UbuntuOS===="
aws lightsail create-instances --instance-names=$instancename --availability-zone=$azone --blueprint-id=$blueprintid --bundle-id=$bundleid --tags=key=Magehost,value=Magehost

sleep 200

echo "======Allocating Static Ip to Instance====="
aws lightsail attach-static-ip --static-ip-name $staticidname --instance-name $instancename

echo "=====Creating Snapshot===="
aws lightsail create-instance-snapshot --instance-snapshot-name=$snapname --instance-name=$instancename

