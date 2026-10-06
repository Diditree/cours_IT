# Administrer des services

Utiliser la commande `systemctl`  
Pour trouver des fichiers de configuration systemd : `systemctl cat NOM_DU_SERVICE` ou dans le status : `FragmentPath`  
Pour trouver un binaire (qui sera dans /usr/sbin) d'un service : `which NOM_DU_SERVICE`  



Les fichiers de configuration systemd (unit file) servent à définir et contrôler le comportement des services, des montages ou des tâches planifiées sur un système Linux.  
`/usr/lib/systemd/system/` : Fichiers fournis par défaut par le système et les paquets logiciels.  
`/etc/systemd/system/` : Fichiers personnalisés créés ou modifiés par l'administrateur   