# Update Clock
# https://www.reddit.com/r/Crostini/wiki/getstarted/bootstrapping-a-container
# sudo dpkg-reconfigure tzdata
# List timezones with
# sudo timedatectl list-timezones
# Set to EST
sudo timedatectl set-timezone America/New_York

# Update package list
sudo apt-get update -y
sudo apt-get upgrade -y

# Install 'command-not-found' support
# https://www.reddit.com/r/Crostini/wiki/howto/install-command-not-found
sudo apt install command-not-found -y
sudo apt update -y
sudo update-command-not-found

# Install VS Code
https://www.reddit.com/r/Crostini/wiki/howto/install-vscode
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > vscode.deb
sudo apt install ./vscode.deb -y

# Install node/npm via nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
nvm use node

# Install rvm - ruby version manager, inc rails
# DO NOT RUN AS SUDO
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --rails

# Install preferred node-based tools
npm install -g swagger-node-codegen
npm install -g forever
npm install -g @angular/cli
npm install -g @vue/cli

# Install Postman
sudo apt-get install libgconf-2.4 -y
curl -L https://dl.pstmn.io/download/latest/linux64 > postman.tar.gz
mkdir -p /opt/tools/
tar -xvf postman.tar.gz -C /opt/tools/
echo "[Desktop Entry]" > ./Postman.desktop
echo "Encoding=UTF-8" >> ./Postman.desktop
echo "Name=Postman" >> ./Postman.desktop
echo "Exec=/opt/tools/Postman/app/Postman %U" >> ./Postman.desktop
echo "Icon=/opt/tools/Postman/app/resources/app/assets/icon.png" >> ./Postman.desktop
echo "Terminal=false" >> ./Postman.desktop
echo "Type=Application" >> ./Postman.desktop
echo "Categories=Development;" >> ./Postman.desktop
sudo mv Postman.desktop /usr/share/applications/
sudo ln -s /opt/tools/Postman/Postman /usr/bin/Postman


# Get useful tools
sudo apt-get install git-flow meld -y

# Add useful aliases
echo "alias ll=\"ls -l\"" >> ~/.bashrc

. .bashrc