#!/bin/bash
echo "> uninstall > removing some uneeded packages"
sudo apt update
sudo apt -y remove --purge libreoffice*
#https://wiki.ubuntu.com/LibreOffice
sudo apt -y remove --purge libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-base libreoffice-math libreoffice-help-* libreoffice-l10n-* libreoffice-nlpsolver libreoffice-l10n-fr myspell-fr hyphen-fr mythes-fr libreoffice-help-fr 
sudo apt -y remove --purge thunderbird
sudo apt -y remove --purge gimp
sudo apt -y autoremove
sudo apt -y autoclean