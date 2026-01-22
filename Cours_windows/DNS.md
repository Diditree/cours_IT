# DNS sur Windows

## requêtes DNS résolveur
Deux types de requêtes peuvent être adressés à un serveur DNS :  
- Les requêtes récursives : Le serveur répondant doit fournir une réponse complète à la question posée
- Les requêtes itératives : Le serveur qui envoie la requête accepte une réponse partielle à la question posée. La réponse sera une indication lui permettant d’avancer dans son processus de résolution.

## serveur redirecteur

La redirection permet de décharger notre serveur DNS vers un autre  

- redirection non conditionnelle : redirige les requetes DNS vers un dns qu'on a indiqué (dns fai, dns google,...)
- redirection conditionnelle : redirige les requetes DNS vers un redirecteur ciblés (1 redirecteur pour un domaine spécifique par exemple)  


## Fichier HOSTS

chemin :  C:\Windows\System32\drivers\etc\hosts  

## Notes

RFCs DNS  