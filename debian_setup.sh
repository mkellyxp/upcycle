sudo apt install ntp -y
sudo systemctl restart ntp
sudo apt update && sudo apt upgrade -y

sudo apt install unattended-upgrades apt-listchanges extremetuxracer flatpak gnome-software gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
