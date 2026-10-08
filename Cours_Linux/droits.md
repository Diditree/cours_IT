# Gestion des droits
https://blog.stephane-robert.info/docs/admin-serveurs/linux/securiser/sudo/

## Déléguer sudo à un utilisateur sans l'intégrer au groupe sudoers/wheel

Créer une délégation avec `visudo` :
```bash

sudo visudo -f /etc/sudoers.d/password
userName ALL=(root) /usr/bin/passwd, !/usr/bin/passwd root

```
L'utilisateur peut utiliser `sudo passwd` sauf sur root 

## ACl

le __+__ à la fin de la liste des permissions avec `ls` indique que des ACL sont actives  

`setfacl` `getfacl`  


`setfacl -m group:adm:r-x /srv/Complots` , l'option -d active l'héritage des ACLs  