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
	net-tools \
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
	)

installatom: ## Install Atom
	$(info --> Install Atom)
	@( \
	sudo wget -O atom-amd64.deb https://atom.io/download/deb; \
	sudo dpkg -i atom-amd64.deb; \
	sudo apt-get -f install -y; \
	rm atom-amd64.deb; \
	)
