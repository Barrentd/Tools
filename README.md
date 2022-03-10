# Tools
I created a makefile to install my development environment with apt.

### Author :
- Barrentd : https://github.com/Barrentd/

### Dependency required :

- git (to clone this project)
- make (to execute the makefile)
- sudo (to grant the user root privilege)

#### To use sudo :

Use this command to add the user to the sudo group.

```console
sudo adduser <username> sudo
```

Then, use this command to reload the sudoers file.
```console
sudo service sudo restart
```

### The installation file includes :

#### help :

Usage:
  make 
  help             Display this help

Install
  main             Install gnome, install the dependencies and remove the useless gnome software
  gnome            Install the distro gnome

Utilities 
  env              Install softwares and useful packages
  utils            Install utils packages
  vboxguest        Install VirtualBox graphic and clipboard

Docker
  docker           Install Docker

Ansible
  ansible          Install Ansible

Python
  python           Install Python3

Editors
  atom             Install Atom
  vscode           Install VScode

Remove
  rmvGnomeSoft     Remove gnome useless software who came with the installation of gnome (game, utilities)

#### installenvironment :
- vim
- nano
- htop
- curl
- nautilus
- firefox
- keepassxc
- terminator
- tree

#### installdocker :
- Docker
- Docker-compose

#### installvirtualboxfeatures :
If you use Debian/Ubuntu based Linux distributions in virtualBox.
- virtualbox-guest-x11 
- virtualbox-guest-utils 
- virtualbox-guest-dkms

#### installatom :
- Atom
