#!/bin/bash
echo "> install > git"

if [ -z "$EMAIL" ]; then
    echo "Need to set EMAIL for git"
    exit 1
fi  

if [ -z "$GITNAME" ]; then
    echo "Need to set GITNAME"
    exit 1
fi  

sudo apt update
sudo apt install -y git
git config --global --replace-all user.name "$GITNAME"
git config --global --replace-all user.email "$EMAIL"
git config --global credential.helper cache
git config credential.helper 'cache --timeout=3153600000'

# USE THIS TO DEBUG
# git config --list