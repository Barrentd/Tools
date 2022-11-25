mkdir -p ~/.ssh/github
ssh-keygen -t ed25519 -f ~/.ssh/github/id_ed25519 -q -N ""
printf "\nHost github.com\n   Port 22\n   User git\n   IdentityFile ~/.ssh/github/id_ed25519\n" >> ~/.ssh/config
