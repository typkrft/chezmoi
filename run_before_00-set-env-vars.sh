#!/bin/bash

set -eu 

# Set IP Env 
ip_addr=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | tail -n1)
export IP="$ip_addr"

# Set GUI
