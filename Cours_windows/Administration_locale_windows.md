# Notes sur de l'administration d'un poste en local


Depuis __Gestion de l'ordinateur__ : `compmgmt.msc` (computer management), on peut se connecter à un autre ordinateur (clique droite se connecter à un autre ordinateur) sans voir l'écran.  

Le disque est automatique partagé sur le réseau (C$) `\\PC-UTILISATEUR\C$`  

__LAPS__

## WINRS  

__winrs__ : permet d’exécuter des commandes à distance sur une machine Windows via le protocole WinRM 

```
winrs -r:HOSTNAME cmd
```  