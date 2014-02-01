rvm requirements
source /usr/local/rvm/scripts/rvm
rvm use --install 2.1.0
gem install rails -v 4.0.2
gem install "therubyracer"
cd /vagrant
bundle install
rake db:migrate
rake db:seed

# bundle install
# echo "[[ -s \"\$HOME/.profile\" ]] && source \"\$HOME/.profile\"" >> .bash_profile
# echo "[[ -s \"\$HOME/.rvm/scripts/rvm\" ]] && source \"\$HOME/.rvm/scripts/rvm\"" >> .bash_profile
# echo "rvm use --2.1.0" >> .bash_profile
# rails server