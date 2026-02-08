# Outils d'analyse

### Connaitre la distrib/version

```bash
ls /etc/*release* # cat du fichier trouvé  

hostnamectl

lsb_release -a # (plutôt debian)
```
### Périphériques matériels

```bash
lscpu # (processeur)
lspci # (periphériques branchés sur pci-Express)
lsusb # (périph branchés en usb)
```


### Utilisation mémoire

```bash
free -h
```

### Activité des processus
```bash
ps -ef
ps -fu
ps aux
top # htop,atop,glances (seul top est installé nativement)
pstree
```

Recherche parmis les processus :  

```bash
ps -ef | grep ...
pgrep -l recherche
```

Envoi de signaux à des processus

```bash
kill PID
kill -N°Signal PID
```
### Ports

```bash
ss -tuln
```

### Systèmes de fichiers (disque)

```bash
fdisk -l # complet
lsblk # clair

df -h # voir l'espace libre et occupé 
df -hT # pareil mais affiche les types
blkid # infos
```

Côté LVM :  

```bash
pvs # physique
vgs # groupe de volume
lvs # logique
```




### Autre


```bash
lsof # permet de connaitre l’activité des fichiers ouverts dans un répertoire donné

file # permet de connaître la nature d’un fichier.

du # permet de visualiser l’espace occupé par des répertoires.
```
