#!/usr/bin/env zsh

if command -v docker &>/dev/null; then
    docker_context() {
        contexts=($(sudo docker context list | awk 'NR>1 {print $1}'))
        current_context=$(sudo docker context ls | grep '*' | awk '{print $1}')
        for context in ${contexts[@]}; do
            if [[ $(pwd) == *"/docker/$context"* ]]; then
                if [[ $context = $current_context ]]; then
                    return 0
                fi
                sudo docker context use $context &>/dev/null
                echo "Now Using Docker Context: $context"
                return 0
            fi
        done
    }
    chpwd_functions=(docker_context $chpwd_functions)
fi