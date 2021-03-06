# ubuntuDesktopConfig

My desktop configs for ubuntu.

## WARNING

The following 2 files are deleted and symlink to files in the repo.

```
.bash_aliases
.tmux.conf
```

## TODO

1. Fix docker issue. Basically docker CE does not keep up with ubuntu releases. If you are on the LTS release, of ubuntu, things should work. If you are on current release, you have to update the /etc/apt/sources.list to back up the release to `disco`. Not a really good solution.



## Install Notes.

1. Create a directory for this repo
2. CD into said directory

Run the following commands.
```
sudo apt -y install git
git clone https://github.com/hubertwwong/ubuntuDesktopConfig.git .
INSTALLDIR=/full/path/of/this/directory EMAIL="yourEmailForGithub@foo.com" GITNAME="GIT NAME" SWAP=4 ./install/combined.sh
```

As a single command
```
sudo apt -y install git && git clone https://github.com/hubertwwong/ubuntuDesktopConfig.git . && INSTALLDIR=/full/path/of/this/directory EMAIL="yourEmailForGithub@foo.com" GITNAME="GIT NAME" SWAP=4 ./install/combined.sh
```

## After install instructions

1. Reboot. There are some groups that get setup that need logout or reboot. Reboot is probably eaiser.
2. Run the `resilio.sh` file in the after install directory. This assumes you want resilio sync.

If you don't want certain pieces of software to install, comment out the line in the `combined.sh` file.

To fix in the future. This contains some refresh bash shell so I don't see an easy way to do this.
Run this after the reboot.

```
INSTALLDIR=/full/path/of/this/directory ./install/combined
```

## Changing the bash alias dir

CD to whatever directory contains your new directory. Then run:
```
INSTALLDIR=/full/path/of/this/directory ./install/bashConfig.sh
```


## NVidia cards issues

This is to bypass the freeze you might get on booting from usb. This won't install the NVidia driver.

1. Disable fast boot.
2. On boot, press e on the install option.
3. Go to the line with "Linux" and at the end before the  "---" add the following "nomodeset"
4. At this point, you should be able to go through the initial install process.
5. Select minimal install and allow for third party drivers. 
6. Reboot.

Install the nvidia proprietry driver.

1. On login screen, press "ctrl + alt + f3" or whatever to get to a terminal.
2. Login on terminal. Login with your credentials.

Run the following.

```
sudo apt-get update
sudo apt -y upgrade
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt install -y dkms build-essential
sudo apt install -y nvidia-390
sudo reboot
```

As a single commmand. Not sure how to actually copy this without the OS not being installed.

```
sudo apt-get update && sudo apt -y upgrade && sudo add-apt-repository ppa:graphics-drivers/ppa && sudo apt install -y dkms build-essential && sudo apt install -y nvidia-390 && sudo reboot
```

At this point it should work.



## Software it installs

1. VSCode
2. Docker CE
3. NodeJS and NPM. From ubuntu. Not from NVM.
4. Terminal programs (keepass2 git curl vim tmux gnome-online-accounts libavcodec-extra software-properties-common)
5. Resilio Sync (Use to sync directories accross computers). This is just offline sync program I use.
6. Google Chrome.

## TODO

1. Alias assumes certain directories. Probably not the end of the world.
2. Test the after install script.