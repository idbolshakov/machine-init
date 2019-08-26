#! /bin/bash
# ubuntu 18

echo ======================================
echo apt update and upgrade
echo ======================================
sudo apt-get update;
sudo apt-get upgrade;

echo ======================================
echo install and configure gnome-tweaks
echo ======================================
sudo add-apt-repository -u ppa:snwh/ppa;
sudo apt install paper-icon-theme;
sudo apt-get install gnome-tweaks;
# run tweaks app
#
# Appearance tab
# disable animations
# set HighContrast theme
# set paper icons
# set DMZ-Black cursor
#
# Top Bar tab
# set  battery percentage: ON
#
# Workspaces tab
# set static Workspaces
# set number of workspaces: 8
#
# Windows tab
# Placement: Left
#
# install gnome extensions via firefox:
# https://extensions.gnome.org/extension/310/alt-tab-workspace/
# https://extensions.gnome.org/extension/1351/show-workspaces/
#
# in the ubuntu Settings on Dock tab:
# enable "Autohide the Dock" option
# set icon size: 30px
#
# in the ubuntu Settings on Devices tab: Mouse & Touchpad tab > tap to click: off
 
echo ======================================
echo install git, make, curl
echo ======================================
sudo apt-get install git;
sudo apt-get install make;
sudo apt-get install curl;

echo ======================================
echo install and configure vim
echo =====================================
sudo apt-get install vim;
cd /tmp;
git clone https://github.com/idbolshakov/vimrc;
cd /tmp/vimrc && make init;
cd ~;
# Inside vim run: :PluginInstall

echo ======================================
echo install and configure terminator
echo ======================================
sudo apt-get install terminator;
cd /tmp;
git clone https://github.com/idbolshakov/terminator-config;
cd /tmp/terminator-config;
make init;
cd ~;

echo ======================================
echo install keepass2
echo ======================================
sudo apt-add-repository ppa:jtaylor/keepass;
sudo apt-get update;
sudo apt-get install keepass2;

echo ======================================
echo install chromium
echo ======================================
sudo apt-get install chromium-browser;

echo ======================================
echo install docker and docker-compose
echo ======================================
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";
sudo apt-get update;
sudo apt-get install docker docker-compose;

echo ======================================
echo install node.js and npm
echo ======================================
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs;

echo ======================================
echo install dropbox
echo ======================================
curl -L https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb > /tmp/dropbox.deb;
cd /tmp;
sudo dpkg -i dropbox.deb;
sudo apt-get update;
sudo apt-get upgrade;
sudo apt --fix-broken install;
cd ~;

echo ======================================
echo install mega
echo ======================================
# download desktop client https://mega.nz/sync
# install it via dpkg

echo ======================================
echo install insync
echo ======================================
# download desktop client https://www.insynchq.com/downloads?start=true
# install it via dpkg

echo ======================================
echo install yandex-disk
echo ======================================
echo "deb http://repo.yandex.ru/yandex-disk/deb/ stable main" \
  | sudo tee -a /etc/apt/sources.list.d/yandex-disk.list > \
  /dev/null && wget http://repo.yandex.ru/yandex-disk/YANDEX-DISK-KEY.GPG -O- \
  | sudo apt-key add - && sudo apt-get update \
  && sudo apt-get install -y yandex-disk;

echo ======================================
echo install inkscape and gimp
echo ======================================
sudo apt-get install gimp;
sudo apt-get install inkscape;
