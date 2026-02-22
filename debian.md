# Notes for setting up Debian XFCE on a minimal system

*start with debian minimal net installer, skip root password, choose xfce*

## Auto Update & Base Stuff
```
sudo apt update && sudo apt upgrade -y
sudo apt install unattended-upgrades brightnessctl gdebi gnome-system-tools -y
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

## Keyboard Shortcuts

Start Button
```
xfce4-popup-applicationsmenu
```

Volume Up
```
pactl set-sink-volume @DEFAULT_SINK@ +5%
```

Volume Down
```
pactl set-sink-volume @DEFAULT_SINK@ -5%
```

Brightness Up
```
brightnessctl set +5%
```

Brightness Down
```
brightnessctl set 5%-
```
