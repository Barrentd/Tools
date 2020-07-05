# Tools
I created a makefile to install my development environment with apt.

### Author :
- Barrentd : https://github.com/Barrentd/

### Dependency required :

- git (to clone the project)
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

#### installenvironment :
- vim
- nano
- htop
- curl
- nautilus
- firefox
- keepassx
- terminator

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
