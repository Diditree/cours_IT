# Repertoires et arborescence

## /proc (process)

__proc__ pour processus et non processeur.  
Ce repo donne des infos sur les différents processus qui tournent sur la machine.  
Chaque proc dans la liste dispose d'un "__PID__" (processus ID) qui permet de les indentifier.  
On peut ensuite accéder au repertoire qui porte le même nom que le __PID__ pour accéder à plus d'informations.

## /usr

__usr__ pour user est l'ancien repertoire utilisateur(équivalent aujourd'hui de __/home__)
Le repo va contenir des repertoires __/bin__ et __/sbin__ (aussi __/lib__)


## /bin

Le repo __bin__ contient tous les binaires, donc les programmes nécessaires pour faire fonctionner la machine.  
Il contient aussi les commandes pour les utilisateurs(ls, which,...)  
__bin__ est un __lien symbolique__ vers __usr/bin__  


## /sbin

__sbin__ Contient les exectuables pour les administrateurs(ip,iptable,...)

__sbin__ est un __lien symbolique__ vers __usr/sbin__  