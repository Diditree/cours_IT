__Remote Desktop Service__  

Connexion pas chiffrée    
RDS est un rôle à installer sur un serveur windows  

Utilise le protocole __RDP__ (__3389__)  
Avant de s'appeler serveur RDS, ça s'appelait serveur TSE  
__VDI__ = machines virtuelles instanciées pour chaque utilisateur qui se connecte au serveur RDS  

Le service RDS est un service :
- Multisession
- Multi-utilisateurs  
Il permet des accès multiples à des environnements dédiés  


# Types de déploiement

- Déploiement standard : utilisé pour déployer le service __RDS__ sur un ensemble de serveurs ( permet le ciblage des services de rôle sur les serveurs souhaités)
- Démarrage rapide : Utilisé pour déployer les services __RDS__ sur un serveur unique
  


# Collections

Désactiver les lecteurs dans les propriétés de la collection(gestionnaire de serveur > collections > propriétés > taches): empêche l'utilisateur de mapper ses lecteurs   

Une collection par service ?


# Rôles de services RDS

- __Hote de session bureau à distance__ : serveur sur lequel les utilisateurs vont se connecter
- __Broker__ : Dispatch les connexions
- __Gestionnaire de licenses__ : Permet de gérer les licenses CAL(par utilisateur ou par siège/poste qui se connecte)
- __Passerelle bureau à distance__ : Chiffre le flux RDP dans une connexion HTTPS(flux RDP pas chiffré), peut pallier à un __VPN__

# Publication des Applications

__RemoteApp__ : permet d'executer SEULEMENT des applications en bureau à distance(on ne voit pas le bureau en entier seulement la fenêtre de l'application)   

