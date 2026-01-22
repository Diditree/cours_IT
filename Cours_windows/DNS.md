# DNS sur Windows

## DNS Résolveur 

### Requêtes DNS résolveur
Deux types de requêtes peuvent être adressés à un serveur DNS :  
- Les __requêtes récursives__ : Le serveur répondant doit fournir une réponse complète à la question posée
- Les __requêtes itératives__ : Le serveur qui envoie la requête accepte une réponse partielle à la question posée. La réponse sera une indication lui permettant d’avancer dans son processus de résolution.  

Un système client fait toujours une requête recursive vers son __DNS__  

### Serveur redirecteur

La redirection permet de décharger notre serveur DNS vers un autre  

- __redirection non conditionnelle__ : redirige les requetes DNS vers un DNS qu'on a indiqué (dns fai, dns google,...)
- __redirection conditionnelle__ : redirige les requetes DNS vers un __redirecteur__ ciblé, exemple : on redirige toutes les requetes qui vont vers nomdedomaine.intranet vers le redirecteur précisé (1 redirecteur pour un domaine spécifique par exemple)  


### Fichier HOSTS

chemin :  C:\Windows\System32\drivers\etc\hosts  

## DNS Hébergeur

Un dns qui fait __autorité__ sur une zone est un DNS qui gère cette zone  

Fichier par défaut d'une zone(__Fichier de zone__) :  `%windir%\system32\dns`  

### Les zones

- __Zone direte__ : résout un nom en ip  
- __Zone inverse__ : résout une ip en nom

Sur ces zones les serveurs peuvent être __serveur principal__ ou __serveur secondaire__

Pour le __serveur principal__ l'accès est en __lecture__ et __écriture__  
Pour le __serveur secondaire__ l'accès est seulement en __lecture__  

Dans les 2 cas le serveur fait autorité sur la zone  

Les différents types d'enregistrements :  
Dans les zones directes :  
- __SOA__ (Start Of Authority) : nom FQDN du serveur DNS disposant de la zone en écriture  
- __NS__ (Name Server) : serveur(s) faisant autorité pour la zone  
- __A__ : Hôte IPv4
- __AAAA__ : Hôte IPv6
- __CNAME__ : Alias
- __MX__ : Messagerie  
  
Dans les zones inverses :   
- __SRV__ : Services
- __PTR__ : Pointeur
- __SOA__


## Notes

RFCs DNS  