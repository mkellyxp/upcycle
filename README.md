# Notes for Computer Upcycle Project

## Check if spinner
`
lsblk -d -o name,rota
`

## Spinner Zero
`
sudo dd if=/dev/zero of=/dev/sdX bs=1M status=progress
`

## SATA SSD Erase
`
sudo hdparm -I /dev/sdX | grep frozen
sudo hdparm --user-master u --security-set-pass p /dev/sdX
sudo hdparm --user-master u --security-erase p /dev/sdX
`
