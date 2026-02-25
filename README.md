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
```
sudo hdparm -I /dev/sdX | grep frozen
sudo hdparm --user-master u --security-set-pass p /dev/sdX
sudo hdparm --user-master u --security-erase p /dev/sdX
```

## NVME Erase
```
sudo nvme id-ctrl /dev/nvme0 | grep -i sanitize
sudo nvme sanitize /dev/nvme0 --sanact=2
```

## EMMc Erase
```
lsblk -D /dev/mmcblk0
If you see non-zero DISC-GRAN / DISC-MAX → discard is supported.
sudo blkdiscard -f /dev/mmcblk0
```

## Benchmark
`
sudo fio --name=seqread --filename=/dev/sdb --rw=read --bs=1M --iodepth=16 --numjobs=1 --direct=1 --size=2G
`

## Mount NTFS
`
sudo ntfsfix /dev/sdb3 && sudo mount -t ntfs-3g /dev/sdb3 /mnt/test
`
