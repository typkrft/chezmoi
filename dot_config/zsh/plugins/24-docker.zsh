#!/usr/bin/env zsh

if command -v docker &>/dev/null; then
    docker_context() {
        contexts=($(sudo docker context list | awk 'NR>1 {print $1}'))
        for context in ${contexts[@]}; do 
            if [[ $(pwd) == *"/docker/$context"* ]]; then
                sudo docker context use $context 
                return 0
            fi
        done
    }
    chpwd_functions=(docker_context $chpwd_functions)
fi