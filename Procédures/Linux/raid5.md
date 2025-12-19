# Mise en place d'un raid 5 sur Linux

https://doc.ubuntu-fr.org/raid_logiciel


- pour un raid 5 il faut minimum 3 disque SCSI si possible de la même taille
- installer mdamd 
- partitionner les 3 disques avec fdisk (type fd : linux raid autodetect)
- `sudo mdadm --create /dev/md0 --level=5  --raid-devices=3 /dev/sdc1 /dev/sdd1 /dev/sde1` : créer un raid 5 qui se situe dans /dev/md0 avec 3 devices (sdc1, sdd1, sde1)
- `sudo mdadm --daemonise /dev/md0` ou `mdadm --monitor --daemonize /dev/md0` : permet de lancer un monitoring du raid
- `sudo mdadm --detail /dev/md0` : Si on souhaite des details sur le raid
- `sudo mkfs.ext4 /dev/md0` : formater le raid 5 en ext4
- `UUID=aefc9c89-cc49-496d-8a23-8dbbecad9695	/srv ext4	defaults 	0	1` : dans fstab pour monter le raid au démarrage dans /srv