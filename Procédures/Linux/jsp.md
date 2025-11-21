# Remplacer /var par la partition logique var sans perdre le contenu de /var

- démarrer en mode rescue (__systemctl isolate rescue.target__) > permet qu'il n y ait pas de nouvelle écriture dans /var
- créer et se placer dans /mnt/vartemp
- monter /dev/mapper/GroupVolumeD12-var (/dev/GroupVolumeD12/var) dans /mnt/vartemp
- déplacer(mv /var/* /mnt/vartemp/.)
- démonter /mnt/vartemp (umount /mnt/vartemp)
- configurer etc/fstab (/dev/mapper/GroupVolumeD12-var /var ext4 defaults 0 0) ou (UUID=11111 var ext4 defaults 0 0)  

UUID="e7871342-084a-4b37-a6be-fc3c1c5a0707"


lsof : list open files (sert à lister les fichiers ouverts)

lsof | grep "/var"




# /data

Crér un systme de fichiers :
`sudo mkfs.ext4 /dev/sda1`

Créer un point de montage temporaire:
`sudo mkdir /mnt/newdata`

monter la partition:
`sudo mount /dev/sda1 /mnt/newdata`


move /data dans /mnt:
`sudo mv /data/* /mnt/newdata/.`

créer un old_data
`sudo cp -rp /mnt/newdata old_data`


démonter /mnt/newdata
`umount /mnt/newdata`

monter la nouvelle partition:
`sudo mount /dev/sda1 /data`
(On monte deux fois car le premier montage sert à préparer la partition, et le second à la mettre en production.)


récupérer l'UUID:
`sudo blkid /dev/sda1`
UUID="68d8a28d-f140-4335-bb64-45845db38249"


créer la ligne dans /etc/fstab
`sudo vim /etc/fstab`

vérifier:

`mount | grep /data`