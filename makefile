# !/bin/bash
# A Simple makefile to install my development environment
# Barrentd

main: ## For Gnome
	$(info --> Install dependencies and removeGnomeSoft)
	@( \
	make installenvironment; \
	make removeGnomeSoft; \
	)

installenvironment: ## Install dependencies
	$(info -->  Install dependencies)
	@( \
	sudo apt update; \
	sudo apt install -y \
	gnome \
	gnome-terminal \
	vim \
	nano \
	htop \
	curl \
	net-tools \
	nautilus \
	firefox-esr \
	keepassx \
	code \
	terminator; \
	)

installenvironmentwithchoice: ## Install dependencies with the possibility to choose the dependencie
	$(info --> Install dependencies with choice)
	@( \
	sudo apt update; \
	array = ( whiptail --title "Check list example" --checklist \
	"Choose the software(s) you want to install" 25 78 11 \
	"gnome-terminal" "" OFF \
	"vim" "" OFF \
	"nano" "" OFF \
	"htop" "" OFF \
	"curl" "" OFF \
	"net-tools" "" OFF \
	"nautilus" "" OFF \
	"firefox-esr" "" OFF \
	"keepassx" "" OFF \
	"code" "" OFF \
	"terminator" "" OFF); \
	echo array ; \
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

removeGnomeSoft: ## Remove gnome useless software who came with the installation of gnome (game, utilities)
	$(info --> Remove gnome useless software)
	@( \
	sudo apt remove --purge -y libreoffice* \
	rhythmbox \
	transmission-gtk \
	software-properties-gtk \
	network-manager \
	four-in-a-row \
	quadrapassel \
	evince \
	totem \
	tali \
	gedit \
	vinagre \
	shotwell \
	seahorse \
	simple-scan \
	lightsoff \
	aisleriot \
	swell-foop \
	evolution \
	file-roller \
	gnome-music  \
	gnome-tweaks \
	gnome-calendar \
	gnome-calculator \
	gnome-sudoku \
	gnome-weather \
	gnome-taquin \
	gnome-maps \
	gnome-todo \
	gnome-games \
	gnome-clocks \
	gnome-contacts \
	gnome-documents \
	gnome-disk-utility \
	gnome-sound-recorder; \
	gnome-robots \
	sudo apt autoclean; \
	sudo apt autoremove -y; \
	)