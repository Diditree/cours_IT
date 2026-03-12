Mode agent, mode vm  
FailOver = inverse de load balancer  
VSS(Volume Shadowcopy Service) = snapshot


# Veeam Backup & Réplication
Veeam permet de faire de la sauvegarde complète de VM et ensuite implémenter une restauration soit full (VM complète) soit granulaire (données issues de la VM)  

La replication permet une remise en état rapide du service en démarrant le réplica de la machine impactée  

Un __replica__ est stocké sur un __datastore__  

Un __réplica__ doit être démarré uniquement via la console Veeam Backup & replication pour que l'original et le __replica__ se synchronisent  

## Backup repositories

Base où on accueil les sauvegardes

Définir les différents supports de stockage et les assigner
- Disque locaux
- Partages CIFS / SMB / NFS
- Disques externes

Il est possible de :
- Sauvegarde l’intégralité des VM
- Exclure certains disques
- Choisir le mode de Backup (__incremental__ ou __reverse incremental__)

## plan de Backup copy

La mise en place d’un plan de backup Copy permet d’assurer une copie des données de sauvegarde sur un repository distant(__copie deconnectée__)  


## Procédures (mise en place d'un backup copy)


## Ajouter un serveur Hyper-v pour lui installer un agent

Inventory > Virtual infrastructure > Add server > microsoft Hyper-V (stabdalone)> Name > credentials: NOMDUSRV\Administrateur + password > review : task limit 4   



### Ajouter un backup repo

Dans __Backup Infrastructure/Backup Repository__, cliquer sur __Add Repository__, puis sur __Direct attached storage__ puis sur Microsoft Windows 

### Ajouter une Virtual infrastructure 

Dans __Inventory__ , cliquer sur __Add Server__


### Créer un job

Un job c'est la plannification d'une sauvegarde  

Menu __home__ > __backup job__ > __virtual machine__

### Créer un job de copy pour duplication

Faire une copy d'un job

menu __home__ > bouton __backup copy__

### Configuration backup

Menu burger en haut à gauche > __configuration backup__ > choisir où on souhaite faire la backup > __Backup now__





## External Repository

Il est possible d'ajouter un __external repository__ avec un fournisseur cloud (aws,azure,google)