#!/bin/bash
no_pm=true

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -


# echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update -y 
sudo apt-get install -y google-chrome-stable
