installenvironment: ## Install dependencies
	$(info --> Install dependencies)
	@( \
	sudo apt update; \
	sudo apt install -y \
	gnome-shell \
	gnome-terminal \
	git \
	vim \
	nano \
	htop \
	curl \
	nautilus \
	firefox \
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
	sudo apt install -y \
	virtualbox-guest-x11 \
  	virtualbox-guest-utils \
  	virtualbox-guest-dkms; \
	)

installatom: ## Install Atom
	$(info --> Install Atom)
	@( \
	wget -O atom-amd64.deb https://atom.io/download/deb; \
	sudo dpkg -i atom-amd64.deb; \
	sudo apt-get -f install -y; \
	rm atom-amd64.deb; \
	)
