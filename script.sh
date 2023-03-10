#!/bin/bash

echo "Removing previous"
rm -r /etc/apt/sources.list

echo "Adding"

echo "deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ jammy main restricted" >> /etc/apt/sources.list
echo "deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ jammy-updates main restricted" >> /etc/apt/sources.list
echo "deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ jammy universe" >> /etc/apt/sources.list
echo "deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ jammy-updates universe" >> /etc/apt/sources.list
echo "deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ jammy multiverse" >> /etc/apt/sources.list
echo "deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ jammy-updates multiverse" >> /etc/apt/sources.list

echo "Setting the correct permissions for the sources.list file..."
chmod 644 /etc/apt/sources.list

echo "Done!"
