# Active Directory

corbeille active directory   

__SYSVOL__ Windows\SYSVOL\sysvol : endroit où l'on peut constater la synchronisation entre deux DC    
 
à la promotion d'un serveur en controleur de domaine un compte "__krbtgt__" est créé automatiquement

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



# AD
_source ENI :  Windows Server 2022
- Les bases indispensables pour administrer et configurer votre serveur_

Une __forêt__ est une collection d'un ou plusieurs domaines AD  
Le premier installé est le __domaine racine__  
__serveur en mode RODC__ = Controle de domaine en lecture seule  
(Sites et services Active Directory pour créer un site)  
(Utilisateurs et Ordinateurs Active Directory > clique droite "domains controler" > créer au préalable...)  
(penser à changer le controleur de domaine du RODC dans users et ordinateurs AD)



__les 5 rôles FSMO__  
- __maitre d'émulation RID__ : Distribue les numéros utilisés pour identifier les objets(partie finale du SID / 1 par domaine)  
- __Maitre d'infrastructure__ : Gère les références aux objets d'autres domaines(met à jour les informations sur les utilisateurs entre domaines par exemple / 1 par domaine)
- __Maitre de nommage de domaine__ : Autorise l'ajout/suppression de domaines dans la forêt(décide quels domaines peuvent être ajoutés ou supprimés dans la forêt / 1 par forêt)
- __Maitre de schéma__ : Définit la structure d'Active Directory( / 1 par forêt)
- __Maitre de domaine PDC__  : Le "chef" pour plusieurs opérations importantes du domaine(synchronise l'heure du domaine,intervient dans les changements de MDP: permet à un utilisateur de se connecter directement avec son nouveau MDP sans erreur d'authentificaiton / 1 par domaine)  

Voir les rôles avec __PowerShell__ :
```powershell
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

www.pingcastle.com : permet de faire un audit de l'annuaire AD  
GPO bitlocker


# Approbation entre domaines

- Ajouter dans les dns de chaque domaine dans "redirecteurs conditionnels" l'autre domaine
- dans "Domaines et approbations Active Diretory" : clique droite sur le domaine > propriété > approbations  

a

