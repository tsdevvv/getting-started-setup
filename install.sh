#!/bin/bash


function install_package {
    no_pm=false
    has_setup=false
    common_file="./packages/$1/common.sh"
    echo "Check common file: $common_file"
    if [ -r $common_file ]; then
        source "$common_file"
        has_setup=true
    fi
    spec_file="./packages/$1/$2.sh"
    echo "Check specific file: $common_file"
    if [ -r $spec_file ]; then
        source "$spec_file"
        has_setup=true
    fi
    if $has_setup; then

        echo "no_pm=$no_pm"
        if $no_pm; then
            echo "cmd=$cmd"
            no_pm=false
            /bin/bash -c "$cmd"
        else
            echo "package_manager=$package_manager"
            echo "install_command=$install_command"
            echo "package_manager_parametr=$package_manager_parametr"
            echo "package=$package"
            /bin/bash -c "$package_manager $install_command $package_manager_parametr $package"
        fi
    else
        echo "Has no setup file for $1"
    fi
}
