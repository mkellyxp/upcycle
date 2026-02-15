# Notes for setting up Debian XFCE on a minimal system

*start with debian minimal net installer, skip root password, choose xfce*

## Auto Update & Base Stuff
```
sudo apt update && sudo apt upgrade -y
sudo apt install unattended-upgrades brightnessctl -y
sudo dpkg-reconfigure unattended-upgrades
```

## Login manager user select
```
sudo nano /etc/lightdm/lightdm.conf
```
Uncomment out `greeter-hide-users=false` in [Seat:*]

## Chromebook Audio
```
sudo apt install firmware-intel-sound firmware-sof-signed alsa-ucm-conf -y
```
