# Active Directory

__Canal sécurisé__ : Relation d'approbation entre un objet ordinateur et le domaine, c'est comme un mot de passe entre l'objet ordinateur et l'AD. Il est généré au moment où l'ordinateur rejoint l'AD, il est possible de le réinitialiser     

__Niveau fonctionnel de domaine__ : pour les DC, si 2025 , ils doivent tous être en 2025 (voir __niveau fonctionnel de forêt) 
  
__Sites AD__ : temps de réplication dans defaultip(clique droite IP) : service de replication = __KCC__ , c'est lui qui génère NTDS settings 
Commande liée à la replication :    
 ```
 repadmin
 ```
  
corbeille active directory   

__Catalogue Global__: Annuaire contenant les objets de la forêt mais de façon partielle, permet de rechercher rapidement des objets dans toute la forêt    
__PAS__ = attributs répliqués dans le __Catalogue Global__  


Groupe __Administrateurs de l'entreprise__ = seulement disponible sur le domaine racine  

__Magasin d'identité__ = annuaire AD contenant les identités du domaine (utilisateurs, groupes, ordinateurs...) et leurs attributs   

 
__TGT__(Ticket Granting Ticket) : ticket kerberos d'authentification utilisé pour demander des tickets d'accès aux services   
__Ticket__ : Ticket kerberos permettant d'ccéder à un serveur sans fournir à nouveau son MDP  


__Schéma Active Directory__ = comme prototype d'objet, ex user : créer un user = instancier l'objet user, il y a 1 schéma par forêt  

__SYSVOL__ Windows\SYSVOL\sysvol : endroit où l'on peut constater la synchronisation entre deux DC(Les GPO sont stockées dedans)  
Voir __DFSR__ dans __sysvol__      
 
à la promotion d'un serveur en controleur de domaine un compte "__krbtgt__" est créé automatiquement   

__NTDS__ = base de données :  
Base de donnée AD qui remplace la base SAM : __ntds.dit__ C:\Windows\NTDS\ntds.dit  
La base de données __NTDS__ est repartie en 3 partitions : Configuration, schéma, domaine
Schéma et config : répliquer sur chaque __DC__(les mêmes)  


__patitions applicatives__ potentielles qui peuvent être ajotuée à la base annuaire __NTDS__ : __DNS__ , __PAS__  


__SID__ : dernière partie qui est fixe, ex 500 admin, c'est le __RID__

# Administration AD

## Requete enregistrée

On peut créer des __requetes enregistrées__ dans __UOAD__ pour filtrer , par exemple trouver tous les utilisateurs désactivés 

# AGDLP  

Bonnes pratiques :  
- Créer une UO qui va contenir les postes serveurs et les postes clients
- Créer une UO qui va contenir tous les services de la société, par exemple: une UO "Service" qui va contenir une UO "Comptabilité", "Production", "Direction"..., ces UO vont contenir les utilisateurs de ces services  
- Créer une OU pour les GG (Groupe Global) et les DL (groupe Domain Local)
- 1 GG = 4 DL pour les droits (DL_XX_Lecture,DL_XX_Modification,DL_XX_CT,DL_XX_Refus )
- On donne des droits à des DL dans lesquels sont membres des GG qui users  

Exemple d'un fichier de partage "Comptabilité" en accès "Modification" pour le service Direction et Comptabilité :

- Un service Direction et un service Comptabilité.  
- On créer 4 __DL__ pour le fichier partagé Comptabilité DL_Comptabilite_XX  
- On Ajoute à la DL DL_Comptabilite_Modification GG_Comptabilite et GG_Direction


## Groupes  
- __Groupe distribution__ : pour diffuser (mail etc)   
- __Groupe sécurité__: droits ACL  
- __Groupe Global__ : regrouper des objets similaires(ex: tous les commerciaux) , Uniquement objets utilisateur, ordinateur ou groupe global du même domaine   
- __Groupe Domaine Local__ : Donner des droits d'accès à des ressources (Uniquement sur des ressources de leur domaine de création)
- __Groupe universel__ : comme groupe global mais à l'echelle de la forêt

## Containers par défaut

- __Builtin__ : Objets groupes de domaine local créés par défaut pour la gestion du
domaine AD
- __System__ : Objets nécessaires au fonctionnement de l’AD
- __Computers__
- __Users__

## Délégations administratives

Permets de déléguer certains droits, ex : droit de reset MDP  

Clique droite sur l'OU : Délégation de contrôle


# AD
Une __forêt__ est une collection d'un ou plusieurs domaines AD  
Le premier installé est le __domaine racine__  
__serveur en mode RODC__ = Controle de domaine en lecture seule(voir groupe de réplication dont le mdp RODC est autorisé/refusé)  
(Sites et services Active Directory pour créer un site)  
(Utilisateurs et Ordinateurs Active Directory > clique droite "domains controler" > créer au préalable...)  
(penser à changer le controleur de domaine du RODC dans users et ordinateurs AD)



## FSMO 
__les 5 rôles FSMO__  
- __Maitre de nommage de domaine__ : Autorise l'ajout/suppression de domaines dans la forêt(décide quels domaines peuvent être ajoutés ou supprimés dans la forêt / 1 par forêt)
- __Maitre de schéma__ : Définit la structure d'Active Directory et les répliques sur les domaines( / 1 par forêt)
- __maitre d'émulation RID__ : Distribue les numéros utilisés pour identifier les objets, c'est la dernière partie du __SID__(partie finale du SID / 1 par domaine), __RID__ = dernière partie du __SID__    
- __Maitre d'infrastructure__ : Gère les références aux objets d'autres domaines(met à jour les informations sur les utilisateurs entre domaines par exemple / 1 par domaine), synchronise les attributs __objets interdomaines__  
- __Maitre de domaine PDC__  : Le "chef" pour plusieurs opérations importantes du domaine(synchronise l'heure du domaine,intervient dans les changements de MDP: permet à un utilisateur de se connecter directement avec son nouveau MDP sans erreur d'authentificaiton / 1 par domaine), Synchronise l'heure  


clique droite sur le domaine > maitre d'opération  

__IMPORTANT POUR LA MIGRATION__ : https://learn.microsoft.com/fr-fr/troubleshoot/windows-server/active-directory/view-transfer-fsmo-roles     
Voir aussi : __ntdsutil__ pour transferer les rôles  
https://learn.microsoft.com/fr-fr/windows-server/identity/ad-ds/manage/manage-fsmo-roles
Commande PS pour transférer les rôles :
```powershell
Move-ADDirectoryServerOperationMasterRole
```

(Get-ADForest).ForestMode
Set-ADForestMode -Identity domdl.ad -ForestMode Windows2016Forest
Voir les rôles avec __PowerShell__ :

```powershell
Get-ADForest | select *master
Get-ADDomain | select pdc*,*master
```
En __CMD__
```
netdom query fsmo
```  



Nommer son domaine :

- exemple.com
- reseau-intranet.net


On peut arreter/démarrer le service dans `services.msc` > Services de domaine AD ou en utilisant la cmd `net stop ntds` / `net start ntds`

Il est possible de cloner un AD  

## Objets AD

Utilisateur :
- l’onglet Éditeur d’attributs permet la visualisation et/ou la modification des attributs LDAP de l’objet. 


## Sécurité de l'AD

Voir le tiering pour les OU : https://www.it-connect.fr/active-directory-tiering-model-les-fondamentaux/  


www.pingcastle.com : permet de faire un audit de l'annuaire AD  
GPO bitlocker


# Approbation entre domaines

- Ajouter dans les dns de chaque domaine dans "redirecteurs conditionnels" l'autre domaine
- dans "Domaines et approbations Active Diretory" : clique droite sur le domaine > propriété > approbations  

