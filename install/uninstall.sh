#!/bin/bash
echo "> uninstall > removing some uneeded packages"
sudo apt -y remove --purge libreoffice*
sudo apt -y remove --purge thunderbird
sudo apt -y remove --purge gimp
sudo apt -y autoremove
sudo apt -y autoclean