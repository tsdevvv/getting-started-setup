#!/bin/bash

echo "Starting..."

os_branch=$(uname)

if [[ "Linux" == $os_branch ]]; then
    echo  "OS: Linux"
    os_distro=$(cat /etc/os-release | grep "^ID=" | cut -d'=' -f 2)
else
    echo "OS: Mac"
    os_distro="mac"
fi

echo "DISTRO: $os_distro"

source ./package-manager/$os_distro.sh
echo "package_manager=$package_manager"
echo "install_command=$install_command"
echo "update_command=$update_command"
echo "list_command=$list_command"


packages=$(ls ./packages)

source ./install.sh

for package_name in $packages; do
    install_package $package_name $os_distro
done

echo "All packages has been installed
