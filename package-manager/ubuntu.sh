#!/bin/bash

package_manager="sudo apt"
install_command="install -y"
update_command="update -y"
list_command="list"

/bin/bash -c "$package_manager $install_command curl git wget zip unzip"