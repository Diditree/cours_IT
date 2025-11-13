# PAQUETS
https://wiki.debian.org/SourcesList  

`/etc/apt/sources.list` : conf des dépôts  

`apt update`  
`apt-get update`  
`apt upgrade`  
`apt-get upgrade`  
`apt install`  

chaque commande de paquets à ses logs :  
- apt-get et apt : fichier /var/log/apt/history.log   
- dpkg : fichier /var/log/dpkg.log  

`dpkg -L <paquet>`
`apt show <paquet>`  

`apt list --upgradable`