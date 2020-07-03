# A Simple Shell Script to install my development environment
# Barrentd

installenvironment: ## Install dependencies
	$(info --> Install dependencies)
	@( \
	sudo apt update; \
	sudo apt install -y \
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
	
installenvironmentwithchoice: ## Install dependencies with the possibility to choose the dependencie
	@( \
	sudo apt update; \
	array = (whiptail --title "Check list example" --checklist \
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
	sudo apt update -y && apt upgrade \
	sudo apt install dkms linux-headers-$(uname -r) build-essential \
	dpkg -l | grep -E "dkms|linux-headers-$(uname -r)|build-essential" \
	sudo sh /media/cdrom0/VBoxLinuxAdditions.run; \
	)

installatom: ## Install Atom
	$(info --> Install Atom)
	@( \
	sudo wget -O atom-amd64.deb https://atom.io/download/deb; \
	sudo dpkg -i atom-amd64.deb; \
	sudo apt-get -f install -y; \
	rm atom-amd64.deb; \
	)
