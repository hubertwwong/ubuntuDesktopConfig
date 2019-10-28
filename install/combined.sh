#!/bin/bash
echo "> Install > Calls other scripts"

if [ -z "$EMAIL" ]; then
    echo "Need to set EMAIL for git"
    exit 1
fi  

if [ -z "$GITNAME" ]; then
    echo "Need to set GITNAME"
    exit 1
fi  

# if [ -z "$USERNAME" ]; then
#     echo "Need to set USERNAME for resilio sync"
#     exit 1
# fi

if [ -z "$INSTALLDIR" ]; then
  echo "Need to set INSTALLDIR to set paths"
  exit 1
fi

source $INSTALLDIR/install/first.sh
source $INSTALLDIR/install/git.sh
source $INSTALLDIR/install/node.sh
source $INSTALLDIR/install/resilio.sh
source $INSTALLDIR/install/vscode.sh
source $INSTALLDIR/install/chrome.sh
source $INSTALLDIR/install/docker.sh
source $INSTALLDIR/install/apt.sh
# Do this last because of source
source $INSTALLDIR/install/bashConfig.sh