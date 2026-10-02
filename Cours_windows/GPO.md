# GPO

Les __GPO__ affectent les clés dans les ruches __hkey_current_user__ et __hkey_local_machine__    

Stockés dans __NTDS__ et partagés dans __SYSVOL__  

Les GPO ont besoins des ordinateurs dans les ACL/droits pour fonctionner  


On peut faire des recherches par mot-clé > allez dans tous les paramètres > options des filtres  

2 GPOs par défaut : 
- Default Domain Policy: liée à la racine du domaine : Définit les paramètres de sécurité pour les utilisateurs du domaine
- Default Domain Controlle Policy : liée à l'uo domain controllers : Définit les paramètres de sécurité pour les contrôleurs de domaine

Ordre des droits :

1) Local : La stratégie configurée localement sur la machine  
2) Site : Les stratégies appliquées au site géographique Active Directory  
3) Domaine : Les stratégies appliquées à l'ensemble du domaine  
4) OU (Unité d'Organisation) : Les stratégies appliquées aux conteneurs spécifiques où se trouvent les utilisateurs ou les ordinateurs  

GPO type préférence : utilisateur peut "refuser" ex : lecteur réseau, l'utilisateur peut déconnecter le lecteur  


Modèle d'administration __ADMX__ stockés localement dans C:\Windows:\PolicyDefinitions et dans __SYSVOL__ pour du domaine   


# commandes

```
gpupdate
gpresult /r

```


# ??
groupe restreint  
gestion de donnée dans le partage  
