# Repertoires et arborescence

## /proc (process)

__proc__ pour processus et non processeur.  
Ce repo donne des infos sur les différents processus qui tournent sur la machine.  
Chaque proc dans la liste dispose d'un "__PID__" (processus ID) qui permet de les indentifier.  
On peut ensuite accéder au repertoire qui porte le même nom que le __PID__ pour accéder à plus d'informations.

## /usr

__usr__ pour "Unique System Ressources" (anciennement user) est l'ancien repertoire utilisateur(équivalent aujourd'hui de __/home__)
Le repo va contenir des repertoires __/bin__ et __/sbin__ (aussi __/lib__)


## /bin

Le repo __bin__ contient tous les binaires, donc les programmes nécessaires pour faire fonctionner la machine.  
Il contient aussi les commandes pour les utilisateurs(ls, which,...)  
__bin__ est un __lien symbolique__ vers __usr/bin__  


## /sbin

__sbin__ Contient les exectuables pour les administrateurs(ip,iptable,...)

__sbin__ est un __lien symbolique__ vers __usr/sbin__  


## /home

Repertoire pour l'utilisateur qui va contenir notamment __bashrc__ (qui permet de mettre des scripts pour configurer ce qu'il va se passer au moment du log) et __profile__.  
On retrouve aussi __.ssh__ où on va retrouver les différentes clés ssh etc

## /root

Repertoire admin (la home de root)

## /sys

Pour __system__ , système de fichier virtuel (donc qui n'existe pas vraiment sur le disque dur).

## /boot

Contient tout ce dont on a besoin pour booter (bootloader et kernel)

## /var

Variables, contient tout ce qui peut changer (exemple : www pour un site web, les logs, spool)  
Il y a aussi un __lib__ qui va contenir les fichiers __variables__ utilisés par __usr/lib__


## /dev

pour device : systèmes de fichiers virtuels, qui va permettre d'interagir avec des peripheriques  (tty, cartes sons, disque dur)


## /tmp

Temporary , s'efface à chaque reboot de la machine la plus part du temps.

## /opt

Pour optionnel

## /etc

fichiers de configuration pour différents applicatifs

## /lib

contient les librairies utilisée par les binaires ou applicatifs