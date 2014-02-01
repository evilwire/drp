sudo apt-get update
sudo apt-get -y install curl git libpq-dev nodejs
curl -L get.rvm.io | bash -s stable
echo "[[ -s \"\$HOME/.profile\" ]] && source \"\$HOME/.profile\"" >> .bash_profile
echo "[[ -s \"\$HOME/.rvm/scripts/rvm\" ]] && source \"\$HOME/.rvm/scripts/rvm\"" >> .bash_profile
sudo adduser $USER rvm