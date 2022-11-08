#!/bin/bash

# Clear old Values
ex +g/^ip/d -cwq ~/.config/chezmoi/chezmoi.toml
ex +g/^gui/d -cwq ~/.config/chezmoi/chezmoi.toml

# Set IP
if [[ $ ]]
ip_addr=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | tail -n1)
sed -i.chez_bak "2i\\
ip = \"$ip_addr\"
" ~/.config/chezmoi/chezmoi.toml

# Set GUI
wayland=$(ls /usr/share/wayland-sessions)
xorg=$(ls /usr/share/xsessions)
if [[ ( $wayland != "" )  || ( $xorg != "" ) || ( $(uname -s) = "Darwin" ) ]]; then
    sed -i.chez_bak "2i\\
gui = \"true\"
    " ~/.config/chezmoi/chezmoi.toml
else
    sed -i.chez_bak "2i\\
gui = \"false\"
    " ~/.config/chezmoi/chezmoi.toml
fi

# Remove Backup Files
find ~/.config/chezmoi -maxdepth 1 -name '*.chez_bak' -delete