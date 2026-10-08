# Gestion des droits


## Déléguer sudo à un utilisateur sans l'intégrer au groupe sudoers/wheel

Créer une délégation avec `visudo` :
```bash

sudo visudo -f /etc/sudoers.d/password
userName ALL=(root) /usr/bin/passwd, !/usr/bin/passwd root

```
L'utilisateur peut utiliser `sudo passwd` sauf sur root   