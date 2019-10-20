# Tools
I created a makefile to install my development environment with apt.

### Dependency required :

- git (to clone the project)
- make (to execute the makefile)
- sudo (to grant the user root privilege)

#### To use sudo :

Use the usermod command to add the user to the sudo group.

```bash
usermod -aG sudo username
```

### The installation file includes :

#### function installenvironment :
- gnome-shell
- gnome-terminal
- vim
- nano
- htop
- curl
- nautilus
- firefox
- keepassx
- terminator

#### function installdocker :
- Docker
- Docker-compose

#### function installvirtualboxfeatures :
If you use debian in a virtualBox.
- virtualbox-guest-x11 
- virtualbox-guest-utils 
- virtualbox-guest-dkms

#### function installatom :
- Atom

### Author :
- Barrentd
