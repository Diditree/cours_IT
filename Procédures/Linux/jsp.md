# Remplacer /var par la partition logique var sans perdre le contenu de /var

- démarrer en mode rescue (__systemctl isolate rescue.target__) > permet qu'il n y ait pas de nouvelle écriture dans /var
- créer et se placer dans /mnt/vartemp
- monter /dev/mapper/GroupVolumeD12-var (/dev/GroupVolumeD12/var) dans /mnt/vartemp
- déplacer(mv /var/* /mnt/vartemp/.)
- démonter /mnt/vartemp (umount /mnt/vartemp)
- configurer etc/fstab (/dev/mapper/GroupVolumeD12-var /var ext4 defaults 0 0) ou (UUID=xxxxxxxx-xxx-xxx-xxx var ext4 defaults 0 0)  




lsof : list open files (sert à lister les fichiers ouverts)

lsof | grep "/var"




# montage /data sur /dev/sda1


Crér un système de fichiers :
`sudo mkfs.ext4 /dev/sdb`

Créer un point de montage temporaire :
`sudo mkdir /mnt/newdata`

monter la partition sur le montage temporaire :
`sudo mount /dev/sdb /mnt/newdata`

copier le contenu de /data dans le montage temporaire :
`sudo cp -a /data/. /mnt/newdata`

démonter /mnt/newdata
`sudo umount /mnt/newdata`

renommer l'ancien /data :
`sudo mv /data /data.old`

recréer un dossier /data vide :
`sudo mkdir /data`


monter le disque sur /data:
`sudo mount /dev/sdb /data`

récupérer l'UUID:
`sudo blkid /dev/sda1`
ex : UUID="68d8a28d-f140-4335-bb64-45845db38249"


créer la ligne dans /etc/fstab
`sudo vim /etc/fstab`

vérifier:

`mount | grep /data`