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
	sudo sh -c 'echo deb http://ftp.de.debian.org/debian jessie main contrib >> /etc/apt/sources.list'; \
	sudo apt install -y \
	virtualbox-guest-utils \
	virtualbox-guest-dkms \
	virtualbox-guest-x11; \
	)

installatom: ## Install Atom
	$(info --> Install Atom)
	@( \
	sudo wget -O atom-amd64.deb https://atom.io/download/deb; \
	sudo dpkg -i atom-amd64.deb; \
	sudo apt-get -f install -y; \
	rm atom-amd64.deb; \
	)
