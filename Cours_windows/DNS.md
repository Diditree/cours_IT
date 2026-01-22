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

xdxdxdx

## Notes

RFCs DNS  