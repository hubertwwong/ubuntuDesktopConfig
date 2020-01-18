#!/bin/bash
echo "> .bash_aliases"

# PATHS
##############################################################################

# MUST CHANGE
# You want to set these per machine.
ZZ_SYNC_DIR="/home/hubert/zzz/sync/vagrant"
ZZ_SCRIPTS_DIR="$ZZ_SYNC_DIR/ubuntu/scripts/ubuntuDesktopConfig/dotfiles"
#source scripts_env.sh

# Other directories.

# Other ENV
##############################################################################
export GPODDER_DOWNLOAD_DIR=$ZZ_SYNC_DIR/../podcasts

# Color schemes constants
##############################################################################

FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white
RST="\e[m" # RESET

# Prompt
##############################################################################

# Save the default prompt if you want to go back to it.
DEFAULT_PROMPT=$PS1
alias aaPromptDefault="PS1=$DEFAULT_PROMPT"

# Custom Prompt
CUST1_PROMPT="[\u][\w][\@]\n$ "
CUST2_PROMPT="$RST[$FBLE\u$RST][$FBLE\w$RST][$FBLE\@$RST]\n$ "
CUST_NONAME_PROMPT="$RST[$FBLE\w$RST][$FBLE\@$RST]\n$ "
PS1=$CUST2_PROMPT

# Functions
##############################################################################

## Docker
## 
## See this url for docker-ips
## https://stackoverflow.com/questions/17157721/how-to-get-a-docker-containers-ip-address-from-the-host

# List all containers
# docker-ips
docker-ips() {
    docker inspect --format='{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
}

# List a speicific IP of a docker container
# docker-ip YOUR_CONTAINER_ID
docker-ip() {
  docker inspect --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$@"
}

# Aliases
##############################################################################

# LS
alias l2="ls -alF"
alias la="ls -A"
alias ld="ls -ld */"   # List in long format, only directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Paths
alias aaGoDocker="cd $ZZ_SYNC_DIR/docker"
alias aaGoStudy="cd $ZZ_SYNC_DIR/study"
alias aaGoScripts="cd $ZZ_SCRIPTS_DIR"
alias aaGoSync="cd $ZZ_SYNC_DIR"

# Scripts

# Simple helper reduce typing
alias aaAptInstall="sudo apt -y update && sudo apt -y install"

# System update
alias aaUpgradeSys="sudo apt -y update && sudo apt -y upgrade && sudo apt -y autoremove && sudo apt -y autoclean"

# Init this file.
# alias aaUpdateBash="cp $ZZ_SCRIPTS_DIR/.bash_aliases ~/;source .bashrc"

# Git
alias ggi="git init"
alias gga="git add ."
alias ggc="git commit -m "

# Misc
alias aaOwnDir="sudo chown -R $USER:$USER ."

# Install
#########

# Some basic libs
#alias aaInstallBasic="aaAptInstall git curl vim htop tmux"
#alais aaInstallMisc="aaAptInstall "
# Docker. https://docs.docker.com/install/linux/docker-ce/ubuntu/
# NOTE: You want the version created by docker corp.
#alias aaInstallDocker="aaAptInstall apt-transport-https ca-certificates curl gnupg-agent software-properties-common;curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\";aaAptInstall docker-ce docker-ce-cli containerd.io"
#alias aaInstallVSCode="sudo snap install --classic code"
# alias aaInstallI3="aaAptInstall i3 i3blocks rxvt-unicode lxappearance"
#alias aaInstallSync='echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list && curl -LO http://linux-packages.resilio.com/resilio-sync/key.asc && sudo apt-key add ./key.asc && sudo apt-get update && sudo apt-get install -y resilio-sync'
#alias aaInstallChrome='wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i google-chrome-stable_current_amd64.deb'
#alias aaInstallAll="aaInstallBasic && aaInstallDocker && aaInstallVSCode && aaInstallI3 && aaInstallSync && aaInstallChrome"

# Node scripts
##############
alias aaNodeCleanNPM="find . -name "node_modules" -type d -prune -exec rm -rf '{}' +"

# TMUX
#######
[[ $TERM != "screen" ]] && exec tmux

# PATH
######
export PATH=$PATH:$HOME/.config/composer/vendor/bin
