#!/bin/bash
echo "> After Install > Calls other scripts"

source $INSTALLDIR/afterInstall/resilio.sh
source $INSTALLDIR/afterInstall/nvm.sh

echo "> After Install > Install is complete."
