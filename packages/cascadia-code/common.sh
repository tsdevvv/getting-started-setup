#!/bin/bash

no_pm=false

curl -o /tmp/cascadia-code.zip -L https://github.com/microsoft/cascadia-code/releases/download/v2407.24/CascadiaCode-2407.24.zip

echo "All" | unzip /tmp/cascadia-code.zip -d /tmp/cascadia-code

mkdir -p $HOME/.local/share/fonts/cascadia-code

echo "yes" | cp /tmp/cascadia-code/ttf/static/*.ttf $HOME/.local/share/fonts/cascadia-code