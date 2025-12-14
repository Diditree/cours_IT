# Active Directory

_source ENI :  Windows Server 2022
- Les bases indispensables pour administrer et configurer votre serveur_

Une __forêt__ est une collection d'un ou plusieurs domaines AD  
Le premier installé est le __domaine racine__  

__serveur en mode RODC__ = Controle de domaine en lecture seule  
(Sites et services Active Directory pour créer un site)  
(Utilisateurs et Ordinateurs Active Directory > clique droite "domains controler" > créer au préalable...)  
(penser à changer le controleur de domaine du RODC dans users et ordinateurs AD)



à revoir : __les 5 rôles FSMO__  
- maitre d'émulation RID
- Maitre d'infrastructure
- Maitre de nommage de domaine
- Maitre de schéma
- Maitre de domaine PDC  

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