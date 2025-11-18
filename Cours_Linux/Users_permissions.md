# Permissions

https://doc.ubuntu-fr.org/permissions

`sudo adduser didi` créer un nouvel utilisateur didi , créer un /home/didi , enregistre les infos demandées dans __etc/passwd__ et __/etc/shadow__

_à voir `useradd`_


`sudo usermod -aG sudo didi` ajoute didi au groupe __sudo__ , __-G__ spécifie quel groupe didi rejoint, __-a__ permet à didi de rester dans ces AUTRES groupes

`id didi` 
- __uid__ = identifiant de l'user
- __gid__ = identifiant du groupe principal
- __groups__ = liste des groupes de didi

`sudo deluser --remove-home didi` supprime l'user didi ainsi que son __home__

`sudo passwd didi` change le password de didi, __passwd__ simple change le password du user courant

## Permissions dossier fichier

Tout dossier a les permissions RX

`chown nouveauUserProprio:NouveauGroupPrio fichier`

`chgrp -R marketing nomDuFichier.txt` : modifie le groupe de nomDuFichier.txt par le groupe marketing de façon recursive  

`chmod `
de façon __octale__  
va jusqu'à 7 : 
- r : 4
- w : 2
- x : 1
user,group,other  

ex : `chmod 654 text.txt`


de façon __symbolique__ : 

rwx , u = user , g = group , o = others , a = all

`+` est utilisé pour attribuer des nouveaux droits  
`-` supprime un droit  
`=` Si les droits sur les fichiers doivent être définis pour une catégorie d'utilisateurs indépendamment de ses droits antérieurs  

ex :  `chmod ugo+rw text.txt`  
`chmod u+rw,g-r,o= test.txt`  

### DROITS SPECIAUX  

- s = il y a aussi le droit x de
positionné.
- S = il n’y a pas le droit x
de positionné.  

changer le SetGID
`chmod g+s /test` = active l'héritage, si user1 créer un fichier dans /test et que le groupe "documentation" est le groupe propriétaire, le fichier créé par user1 aura comme groupe propriétaire "documentation  
  
`chown -R :documentation /test` = changement de façon récursive le groupe propriétaire de tout ce qu'il y a dans /test  

on peut activer les droits spéciaux avec `chmod` de façon __octale__ : 
SETUID: 4  
SETGID: 2  
Stickybit: 1  

ex: `chmod 4755 monscript.sh` (active le setuid sur monscript.sh, donc s)

ex: `chmod 1770 Depot/` : le 1 indique le stickybit et donc seul le propriétaire pourra supprimer des éléments

de façon __symbolique__ :    
setuid: u+s  
setgid: g+s  
stickybit: o+t  

ex `chmmod u+s monscript.sh` (active le setuid sur monscript.sh, donc s)
