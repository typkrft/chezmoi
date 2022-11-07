#!/bin/bash

set -eu 

# Set IP Env 
IP=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}' | tail -n1)
export "$IP"
# Set GUI
