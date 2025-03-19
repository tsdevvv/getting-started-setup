#!/bin/bash
no_pm=true

sudo apt-get update && sudo apt-get install apt-transport-https


if [ ! -e '/usr/share/keyrings/dart.gpg' ]; then
    wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | echo "y" | sudo gpg  --dearmor -o /usr/share/keyrings/dart.gpg

    echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
fi 

sudo apt update -y
sudo apt install -y dart

sudo apt install -y xz-utils libglu1-mesa

wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.2-stable.tar.xz -O /tmp/flutter.tar.xz
mkdir -p $HOME/development

tar -xf /tmp/flutter.tar.xz -C $HOME/development/

echo 'export PATH="$HOME/development/flutter/bin:$PATH"' >> ~/.bash_profile
export PATH="$HOME/development/flutter/bin:$PATH"

flutter upgrade

