# ??

__EntraID__ = Annuaire , anciennement __Azure Active Directory__ , on peut le faire communiquer avec un AD, permet de gérer l'indentité et l'accès  

Le __Entra ID__ utilise __AzureAD Connect__ pour synchroniser avec un domaine local  
On peut se connecter le MDP Ad local, ils ont hashés en SHA256   
C'est un service d’annuaire d’identités cloud.  

Différents rôles peuvent être attribués à un nouvel utilisateur avec une délégation via les __RBAC__ (Rôle Base Access Control)  

__intune__ : A single management experience for the End User Computing team in IT to ensure employees' Microsoft 365 devices and apps are secured, managed, and current.  


- __Microsoft Entra ID__ : authenticates the employee and provides single sign-on to corporate apps.  
- __Microsoft Entra ID Governance__ : automatically provisions the right access based on the employee's role.  
- __Microsoft Entra ID Protection__ : evaluates each sign-in for risk and triggers stronger authentication when needed.  
- __Microsoft Entra Internet Access__ : secures the employee's connection to cloud and internet resources.  
- __Microsoft Entra Private Access__ : provides secure access to on-premises apps without a VPN.  

__Microsoft Entra Connect Sync__ : synchronise les informations nécessaires et voulues entre l'__AD__ et l'__Entra ID__(idéal pour grosse entreprise et bien plus lourd)  

__Microsoft Entra Cloud Sync__ : Au lieu d'un gros serveur de synchronisation, on installe un petit agent sur un ou plusieurs serveurs (pas de DB, pas de serv dédié, dans le cloud, rapide à déployer)     

# groupes

__Identities__ : On peut attribuer des __identités__ à des user, devices et des software-based objects comme des app   
Si des __identités__ on besoin des mêmes caccès on peut créer des groupes pour gérer les permissions.  

groupe attribué : admin doit rentrer les user à la main dedans  
groupe dynamique : on peut attribuer un user automatiquement dedans (On peut attribuer des licenses à des groupes)   


## types de groupes :

__Groupe Microsoft 365__ : groupe collaboratif complet, il inclut automatiquement: boite mail, calendrier, espace fichier sharepoint,...

__Groupe de distribution__ : pour la diffusion d'informations

__Groupe de sécurité__ : sert à gérer des droits d'accès, souvent géré depuis l'Entra ID



# Définitions

__Tenant__ : Un tenant Microsoft est l'espace cloud dédié à une organisation. Il constitue une frontière d'administration et de sécurité dans laquelle sont stockés les identités (utilisateurs, groupes, appareils), les applications, les licences et les politiques de sécurité de l'entreprise. Chaque tenant est isolé des autres organisations et possède un identifiant unique (Tenant ID) ainsi qu'un domaine initial du type  

__Directory__ : Base de données du tenant  

__Multi tenant__ : Entreprise qui possède plusieurs tenant, ils ont indépendants (plusieurs filliales d'une holding par ex), les utilisateurs de chaque tenant ne sont pas partagés entre les tenant    

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