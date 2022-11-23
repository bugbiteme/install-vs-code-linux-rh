#!/bin/bash
# from https://code.visualstudio.com/docs/setup/linux

# the following will install the key and repository:
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# update the package cache and install the package using dnf (Fedora 22 and above):

dnf check-update
sudo dnf install code

