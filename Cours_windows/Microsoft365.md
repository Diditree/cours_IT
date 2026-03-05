# ??

__EntraID__ = Annuaire , anciennement __Azure Active Directory__ , on peut le faire communiquer avec un AD, permet de gérer l'indentité et l'accès  

Le __Entra ID__ utilise __AzureAD Connect__ pour synchroniser avec un domaine local  
On peut se connecter le MDP Ad local, ils ont hashés en SHA256   
C'est un service d’annuaire d’identités cloud.  

Différents rôles peuvent être attribués à un nouvel utilisateur avec une délégation via les __RBAC__ (Rôle Base Access Control)  

__intune__ : A single management experience for the End User Computing team in IT to ensure employees' Microsoft 365 devices and apps are secured, managed, and current.  

# groupes

groupe attribué : admin doit rentrer les user à la main dedans
groupe dynamique : on peut attribuer un user automatiquement dedans (On peut attribuer des licenses à des groupes)  


## types de groupes :

__Groupe Microsoft 365__ : groupe collaboratif complet, il inclut automatiquement: boite maile, calendrier, espace fichier sharepoint,...

__Groupe de distribution__ : pour la diffusion d'informations

__Groupe de sécurité__ : sert à gérer des droits d'accès, souvent géré depuis l'Entra ID



# Notes

  
__User Principal Name__ = __UPN__  = C'est l’identifiant de connexion d’un utilisateur, exemple : utilisateur@domaine ( Domaines et approbations Active directory > clique droite propriété sur domaine)    

Un compte "Admin entreprise" a plus de droit qu'un compte "Admin du domaine"    

__Schéma__ dans __Entra ID__ : Le schéma définit quels types d’objets et quels attributs peuvent être synchronisés.


__ADFS__  = Federation Service
__Ferme ADFS__  
Pas de license pour un compte admin global(pour économie d'argent + sécurité)  
Groupes dynamiques  

__RBAC Azure__
__RBAC__ = Role-Based Access Control

Sur windows server on peut désactiver la sécurité renforcée d'internet explorer  

__OWA__ = version web

# Commandes PS


Forcer la syncrochinastion entre l'entraID et l'annuaire AD :
```Powershell
 Start-ADSyncSyncCycle -PolicyType Delta
```


# Messagerie Cloud

- __MUA__ Mail User Agent = Client de messagerie (Gmail, Outlook, client web, application de smatphone…)
- __MSA__ Mail Submission Agent = Service du serveur de messagerie qui reçoit les mails à envoyer du MUA.
- __MDA__ Mail Delivery Agent = Service du serveur de messagerie qui stocke les mails dans les boites aux lettres des utilisateurs.
- __MTA__ Mail Transfer Agent = Service du serveur de messagerie qui reçoit les mails d’un MSA ou d’un autre MTA

Parcours d'un mail :  
__MUA__ > __MSA__ > __MTA__ > __MDA__ > __MUA__  

L'utilisateur 1 envoie un mail depuis son MUA en SMTP, il est dans le serveur MSA, le serveur MSA l'envoie en SMTP au MTA qui va le transferer en SMTP vers le serveur qui MDA qui stock les mails, l'utilisateur 2 reçoit mail dans son MUA

Un DNS est obligatoire pour que ça fonctionne

# troubleshooting outlook

ctrl + clique droite sur l'icone dans les notifications  

On peut créer des profils pour Outlook(client lourd) depuis le panneau de configuration(courrier)  

Un compte peut avoir accès à plusieurs boites mail  