# Permissions

`sudo adduser didi` créer un nouvel utilisateur didi , créer un /home/didi , enregistre les infos demandées dans __etc/passwd__ et __/etc/shadow__

_à voir `useradd`_


`sudo usermod -aG sudo didi` ajoute didi au groupe __sudo__ , __-G__ spécifie quel groupe didi rejoint, __-a__ permet à didi de rester dans ces AUTRES groupes

`id didi` 
- __uid__ = identifiant de l'user
- __gid__ = identifiant du groupe principal
- __groups__ = liste des groupes de didi

`sudo deluser --remove-home didi` supprime l'user didi ainsi que son __home__

`sudo passwd didi` change le password de didi, __passwd__ simple change le password du user courant

## Permissions Groupes

`chgrp -R marketing nomDuFichier.txt` : modifie le groupe de nomDuFichier.txt par le groupe marketing de façon recursive  

## Permissions Dossiers

Tout dossier a les permissions RX