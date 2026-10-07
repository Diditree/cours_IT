# PAQUETS
https://wiki.debian.org/SourcesList  

udate : met à jour la liste des paquets  
upgrade : met à jour  


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
deb http://security.debian.org/debian-security trixie-security main  
deb http://ftp.fr.debian.org/debian trixie main  
deb http://ftp.fr.debian.org/debian trixie-updates main  



# DEBIAN 13

dans `/etc/apt/sources.list.d/debian.sources` :

```bash
Types: deb deb-src
URIs: http://deb.debian.org/debian/
Suites: trixie trixie-updates
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```


# RHEL / DNF,YUM

Le fichier `/etc/yum.conf`   permet de définir le comportement de YUM.   
Les .repo se situent dans `/etc/yum.repos.d`    

`/etc/yum.repos.d/oracle-linux-ol10.repo`

disable ol8_UEKR7 sur oracle 8:  
`config-manager --disable ol8_UEKR7`

Si en local : désactiver la GPG dans le .repo (ou setup la key en local)  


```bash
dnf repolist

dnf upgrade
dnf upgrade <paquet>

# vider le cache
dnf clean all

dnf updateinfo list --sec-severity Critical
```


mount -t cifs //10.35.0.6/ressources/depot/Linux/OracleLinux /mnt -o vers=1.0,username=dimitri.lepilleur2025@campus-eni.fr


## MAKE

Sert à compiler :  
`./configure`  
`make install`