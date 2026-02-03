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
`apt list *nom*` # liste tous les paquets qui contiennent nom



DEB12 :  
deb http://security.debian.org/debian-security bookworm-security main  
deb http://ftp.fr.debian.org/debian bookworm main  
deb http://ftp.fr.debian.org/debian bookworm-updates main  
