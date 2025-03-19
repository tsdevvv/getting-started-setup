#!/bin/bash
no_pm=true

cmd='curl -o /tmp/vscode.deb -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"; sudo dpkg -i /tmp/vscode.deb'
