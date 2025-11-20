# Outils d'analyse

### Connaitre la distrib/version

`ls /etc/*release*` > cat du fichier trouvé  

`hostnamectl`  

`lsb_release -a` (plutôt debian)

### Périphériques matériels

`lscpu` (processeur)
`lspci` (periphériques branchés sur pci-Express)
`lsusb` (périph branchés en usb)

### Utilisation mémoire

`free -h`

### Activité des processus

`ps -ef`
`ps aux`
`top`, `htop`, `atop`, `glances` (seul top est installé nativement)  

Recherche parmis les processus :  

`ps -ef | grep ...`
`pgrep -l recherche`

Envoi de signaux à des processus

`kill n°DePID`
`kill -n°Signal n°DePID`

### Systèmes de fichiers
`fdisk -l`
`lsblk`

Côté LVM :  

```bash
pvs # physique
vgs # groupe de volume
lvs # logique
```

`df -h ` # voir l'espace libre et occupé 
`df -hT` # pareil mais affiche les types

`blkid` # infos


###

`lsof` : permet de connaitre l’activité des fichiers ouverts dans un répertoire donné

`file` permet de connaître la nature d’un fichier.

`du` permet de visualiser l’espace occupé par des répertoires.