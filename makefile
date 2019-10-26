installenvironment: ## Install dependencies
	$(info --> Install dependencies)
	@( \
	sudo apt update; \
	sudo apt install -y \
	gnome-shell \
	gnome-terminal \
	vim \
	nano \
	htop \
	curl \
	nautilus \
	firefox-esr \
	keepassx \
	terminator; \
	)


installdocker: ## Install Docker
	$(info --> Install Docker)
	@( \
	sudo apt install -y \
	docker \
	docker-compose; \
  )


installvirtualboxfeatures: ## Install VirtualBox graphic and clipboard
	$(info --> Install VirtuaBox features)
	@( \
	sudo wget -O virtualbox-guest-x11.deb http://ftp.fr.debian.org/debian/pool/contrib/v/virtualbox/virtualbox-guest-x11_4.3.36-dfsg-1+deb8u1_amd64.deb; \
	sudo wget -O virtualbox-guest-utils.deb http://ftp.fr.debian.org/debian/pool/contrib/v/virtualbox/virtualbox-guest-utils_4.3.36-dfsg-1+deb8u1_amd64.deb; \
	sudo wget -O virtualbox-guest-dkms.deb http://ftp.fr.debian.org/debian/pool/contrib/v/virtualbox/virtualbox-guest-dkms_4.3.36-dfsg-1+deb8u1_all.deb; \
        sudo apt install -y xserver-xorg-core; \
	sudo dpkg -i \
	virtualbox-guest-x11.deb \
	virtualbox-guest-utils.deb \
	virtualbox-guest-dkms.deb; \
        sudo apt-get -f install -y; \
        rm -f virtualbox-guest-x11.deb virtualbox-guest-utils.deb virtualbox-guest-dkms.deb; \
	)

installatom: ## Install Atom
	$(info --> Install Atom)
	@( \
	sudo wget -O atom-amd64.deb https://atom.io/download/deb; \
	sudo dpkg -i atom-amd64.deb; \
	sudo apt-get -f install -y; \
	rm atom-amd64.deb; \
	)
