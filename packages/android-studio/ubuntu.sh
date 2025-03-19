#!/bin/bash
no_pm=true

wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.3.1.13/android-studio-2024.3.1.13-linux.tar.gz -O /tmp/android-studio.tar.gz

tar -zxvf /tmp/android-studio.tar.gz -C /tmp/
sudo mv /tmp/android-studio /opt/
sudo ln -sf /opt/android-studio/bin/studio.sh /bin/android-studio

sudo cp android-studio.desktop /usr/share/applications 