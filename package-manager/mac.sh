#!/bin/bash

package_manager="brew"
install_command="install"
update_command="update"
list_command="ls"

homebrew_install=$(brew --version | cut -d' ' -f 1)

if [ $homebrew_install != "Homebrew"]; then
    NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
