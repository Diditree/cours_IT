# Cheatsheet de commandes et raccourcis Windows

## CMD 

- `hostname` :  nom de la machine  
- `route` : permet de gérer la table de routage  
- `arp -a` : table liée au cache ARP  
- `netstat` : liste les ports ouverts  
- `ipconfig` : 
- `dir` : ls
- `more` : cat
- `diskpart` : disques de stockage depuis cmd (commandes liées : ?,help,list,select)  
- `net user` (net help user pour l'aide détaillée)  
- `net localgroup` (net help localgroup)
- `net use` : permet de gérer les lecteurs réseau (`net use F: \\SERV\FOLDER`)
- `whoami /user` : pour voir le SID  
- `gpresult /x` : générer un rapport
- `gpupdate /force` : update des GPO  
- `control` ouvre le panneau de configuration
  
## Executer (w+r)

lancer une commande en /safe = mode sans echec    
mgmt = management   

- `diskmgmt.msc` : console des disques stockages  
- `sysdm.cpl` : renommer pc, ajout du domaine  
- `ncpa.cpl` : réseaux
- `compmgmt.msc` : ouvre le gestionnaire d'ordinateur
- `msfinfo32` : info sys
- `services.msc` : ouvre les services
- `firewall.cpl` :
- `wf.msc` : gestion du firewall  
- `lusrmgr.msc` : gestion des utilisateurs et groupes locaux
- `mmc` : console
- `secpol.msc` : Stratégie de sécurité locale  
- `fsmgmt.msc` : Dossiers partagés
- `mstsc` : RDP/ connecion à distance (Microsoft Terminal Services Client)
- `devmgmt.msc` : gestionnaire de périphériques
- `dsa.msc` : gestionnaire des utilisateurs et PC de l'AD
- `gpmc.msc` : ouvrir la gestion des GPO dans l'ad
- `regedit` : base de registre
- `dnsmgmt.msc` : gestionnaire DNS
- `dhcpmgmt.msc` : gestionnaire DHCP
- `ms-settings:optionalfeatures` : ouvre les options falcutatives
- `certlm.msc` : affiche les certificats  



## Raccourcis clavier

- Win + i : Paramètres windows  
- Win + x : Menu administrateur  
- Win + e : Explorateur de fichiers 
- Ctrl + Shift + Esc : Gestionnaire des tâches
- ALT + ESPACE : permet d'acceder à déplacer une fenêtre
- Win + v : historiquer copier/coller
- CTRL + Shift + Clic : Ouvrir en admin