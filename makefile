# !/bin/bash
# A Simple makefile to install a development environment
.DEFAULT_GOAL:=help
SHELL:=/bin/bash

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Install

main: ## Install gnome, install the dependencies and remove the useless gnome software
	$(info --> Install Gnome, dependencies and removeGnomeSoft)
	@( \
	make gnome; \
	make env; \
	make rmvGnomeSoft; \
	)

gnome: ## Install the distro gnome
	$(info -->  Install Gnome)
	@( \
	sudo apt update; \
	sudo apt install -y gnome; \
	)

##@ Utilities 

env: ## Install softwares and useful packages
	$(info -->  Install software)
	@( \
	sudo apt update; \
	sudo apt install -y \
	vim \
	wget \
	nano \
	htop \
	curl \
	net-tools \
	keepassxc \
	terminator \
	ssh; \
	)

pickenv: ## Install software with the possibility to choose what to install
	$(info --> Install software with choice)
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
	"terminator" "" OFF ); \
	echo array ; \
	)

vboxguest: ## Install VirtualBox graphic and clipboard
	$(info --> Install VirtuaBox features)
	@( \
	)

##@ Docker

docker: ## Install Docker
	$(info --> Install Docker)
	@( \
	sudo apt install -y \
	docker \
	docker-compose; \
	)

##@ Ansible

ansible: ## Install Ansible
	$(info --> Install Ansible)
	@( \
	make python \
	sudo apt-get install sshpass
	python -m virtualenv ansible \
	source ansible/bin/activate \
	python -m install ansible; \
	)

##@ Python

python: ## Install Python3
	$(info --> Install Python3)
	@( \
	sudo apt install -y \
	python3-apt \
	python3-pip \
	python3-virtualenv; \
	)

##@ Editors

atom: ## Install Atom
	$(info --> Install Atom)
	@( \
	sudo wget -O atom-amd64.deb https://atom.io/download/deb; \
	sudo dpkg -i atom-amd64.deb; \
	sudo apt-get -f install -y; \
	rm -f atom-amd64.deb; \
	)

vscode: ## Install VScode
	$(info --> Install VScode)
	@( \
	sudo wget -O code.deb https://go.microsoft.com/fwlink/?LinkID=760868; \
	sudo dpkg -i code.deb; \
	sudo apt-get -f install -y; \
	rm -f code.deb; \
	)

##@ Remove

rmvGnomeSoft: ## Remove gnome useless software who came with the installation of gnome (game, utilities)
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
