# ubuntuDesktopConfig

My desktop configs for ubuntu.

## WARNING

The following 2 files are deleted and symlink to files in the repo.

```
.bash_aliases
.tmux.conf
```

## Install Notes.

1. Create a directory for this repo
2. CD into said directory

Run the following commands.
```
sudo apt -y install git
git clone https://github.com/hubertwwong/ubuntuDesktopConfig.git .
INSTALLDIR=/full/path/of/this/directory EMAIL="yourEmailForGithub@foo.com" GITNAME="GIT NAME" ./install/combined.sh
```

As a single command
```
sudo apt -y install git && git clone https://github.com/hubertwwong/ubuntuDesktopConfig.git . && INSTALLDIR=/full/path/of/this/directory EMAIL="yourEmailForGithub@foo.com" GITNAME="GIT NAME" ./install/combined.sh
```

If you don't want certain pieces of software to install, comment out the line in the `combined.sh` file.

## Software it installs

1. VSCode
2. Docker CE
3. NodeJS and NPM. From ubuntu. Not from NVM or anything like that.
4. Terminal programs (keepass2 git curl vim tmux gnome-online-accounts libavcodec-extra software-properties-common)
5. Resilio Sync (Use to sync directories accross computers) You still need to accept instructions.
6. Google Chrome.

## TODO

1. Alias assumes certain directories. Probably not the end of the world.
2. Test the after install script.