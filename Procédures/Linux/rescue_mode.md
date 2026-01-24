# Lancer en rescue mode


Depuis un système déjà boot :
```bash
sudo systemctl isolate rescue.target
```

Si on souhaite réinitialiser le mot de passe de root :

```bash
mount -o remount,rw /
passwd root
```

Réparer les partitions (corrige les erreurs de montage) :  
```bash
fsck /dev/sdX
```