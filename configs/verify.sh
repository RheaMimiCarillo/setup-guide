#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'

main(){

    if code --version >/dev/null && \
       git --version >/dev/null && \
       npm --version >/dev/null && \
       (tree --version >/dev/null || tree.com --version >/dev/null) && \
       cat ~/.gitconfig >/dev/null ; then
        echo -e "${GREEN}Congrats, you've done it!"
    else
        echo -e "${RED}Something went wrong! Please start back at Step 1"
    fi
    
    tput init
}

main
