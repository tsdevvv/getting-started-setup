#!/bin/bash
no_pm=true

git clone https://github.com/medusalix/xow /tmp/xow

cd /tmp/xow

sudo apt install -y libusb-1.0.0-dev libusb-1.0.0 cabextract

make BUILD=RELEASE
sudo make install
sudo xow-get-firmware.sh

sudo systemctl enable xow
sudo systemctl start xow
