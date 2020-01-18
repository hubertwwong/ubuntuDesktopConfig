#!/bin/bash
echo "> install > install most recent version of node."
. ~/.nvm/nvm.sh
nvm install node
nvm install node --reinstall-packages-from=node
