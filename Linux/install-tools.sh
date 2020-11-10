#!/bin/sh

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                        Install-Tools.sh v0.001                      #
#                                by                                   #
#                        Manuel Revx0r Berrueta                       #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Update the system
echo "Updating OS...."
apt update
apt upgrade -y

# Installing tools
echo "Tool Install Begins!"
apt install kismet -y
apt install wireshark -y

# Dev Tools
echo "Dev Tools Install"
apt install git -y
apt install vim -y
apt install build-essential -y
apt install gdb -y
apt install python3-pip -y
pip3 install ipython

# Utils
echo "Utils Install"
apt install curl -y
apt install wget -y
apt install finger -y
apt install tldr -y

# RE
echo "RE Tools Install"
apt install vim-common -y #xxd
apt install binwalk -y
apt install exiftool -y

# Net Tools
echo "Net Tools Install"
apt install nmap -y
apt install netcat -y
apt install tcpdump -y
apt install sqlmap -y
apt install aircrack-ng -y