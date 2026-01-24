# systemd / systemctl

## systemctl

Pour vérifier le mode par défaut :  

`systemctl get-default`  

Pour changer le target par défaut :  

`sudo systemctl set-default XXX.target`

Pour changer l'état du système à la volée :  

`sudo systemctl isolate XXX.target` : interrompt les services "inutiles" et activ ceux nécessaires à la target


## Target

Les __targets__ dans __systemd__ remplissent le même rôle que les __runlevels (SysV)__  

On va manipuler les targets en utilisant la commande `systemctl` / `systemctl isolate`  

### poweroff.target

__poweroff.target__ sert à __éteindre__

```bash
systemctl poweroff
systemctl isolate poweroff.target
```  

Quand elle est atteinte :  

- tous les __services__ sont arrêtés proprement
- les systèmes de fichiers sont démontés
- la machine s’éteint complètement

Correspond au SysV `runlevel 0`  

Quand l’utiliser ?  

- Arrêt normal du serveur ou de la machine
- Scripts d’arrêt automatisés
- Maintenance matérielle


### rescue.target  

__rescue.target__ sert à accéder au mode secours

souvent besoin du password root  
système monté en lecture seule au début  

```bash
systemctl rescue
systemctl isolate rescue.target
```  

Qu'est ce que ça fait ?  
- 1 seul utilisateur (root)
- pas de réseau (par défaut)
- très peu de services
- shell root direct

Correspond au SysV `runlevel 1` (single-user)

Quand l’utiliser ?

- mot de passe root oublié
- /etc/fstab cassé
- service bloquant le boot
- réparation du système

### multi-user.target  

__multi-user.target__ est le mode serveur classique sans GUI

```bash
systemctl set-default multi-user.target
systemctl isolate multi-user.target
```

Qu'est ce que ça fait ?  

- réseau actif
- services serveurs démarrés (SSH, Apache, DB…)
- plusieurs utilisateurs connectés
- pas de GUI

Correspond au SysV `runlevel 3` (multi-user)

Quand l’utiliser ?

- serveurs (web, mail, DB)
- machines distantes
- environnements cloud / VM
- systèmes embarqués  


### graphical.target

__graphical.target__ est le mode interface graphique

```bash
systemctl set-default graphical.target
systemctl isolate graphical.target
```

Qu'est ce que ça fait ?  

- tout ce que fait multi-user.target
- GUI
- gestionnaire de session (GDM, SDDM…)

Correspond au SysV `runlevel 5` (multi-user avec GUI X11)

Quand l’utiliser ?

- stations de travail
- PC personnels
- environnements desktop Linux

### reboot.target  

__reboot.target__ sert à redémarrer  

```bash
systemctl reboot
systemctl isolate reboot.target
```  

Qu'est ce que ça fait ?  
- arrêt propre des __services__
- démontage des __FS__
- redémarrage immédiat

Correspond au SysV `runlevel 6`  

Quand l’utiliser ?

- Après mise à jour du kernel
- Changements critiques (réseau, drivers, systemd)
- Redémarrage planifié d’un serveur













