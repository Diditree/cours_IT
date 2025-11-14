# Rempalcer /var par la partition logique var sans perdre le contenu de /var

- démarrer en mode rescue (systemctl isolate rescue.target) > permet qu'il n y ait pas de nouvelle écriture dans /var
- créer et se placer dans /mnt/vartemp
- monter /dev/mapper/GroupVolumeD12-var (/dev/GroupVolumeD12/var) dans /mnt/vartemp
- déplacer(mv /var/* /mnt/vartemp/.)
- démonter /mnt/vartemp (umount /mnt/vartemp)
- configurer etc/fstab (/dev/mapper/GroupVolumeD12-var /var ext4 defaults 0 0) ou (UUID=70eb2bfb-f050-47cd-bb8f-01047ba9fada  var ext4 defaults 0 0)  




lsof : list open files (sert à lister les fichiers ouverts)

lsof | grep "/var"
