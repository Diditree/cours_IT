# Définitions

__Certificat__ : Permet d'authentifier(être sur le bon site par exemple), chiffrer les données échangées,hache les données ce qui garantit l'intégrité.

Le __certificat__ contient le contenu de la __CSR__, le nom de la __CA__, la clé publique, les dates d'expiration, les extensions x.509(key usage: à quoi sert le certificat ?)  

__Private Key__ : Permet de signer ou déchiffrer   

__Public Key__: Sert à vérifier qui a signé le certificat ou chiffrer   

__CA__ : Autorité de certification   

__CSR__ : Requete pour un certificat à une __CA__ , contient diverses informations comme le DN,FQDN,..  

Quand on dit qu'une __CA__ signe, elle hash et chiffre ce hash  

Norme __X.509__ : TODO

# Fonctionnement 

On souhaite sécuriser des échanges :  
1) Le serveur qui veut sécuriser les échanges génère une __clé privée__  
2) Une __CSR__ est générée pour attester que le serveur est le bon, la __CSR__ contient des informations comme : DN, FQDN, organisation, pays et la __clé publique__.(permettra de déchiffrer)  
La __CSR__ sera envoyé au __CA__
3) La __CSR__ est envoyée au __CA__, qui peut être publique(racine) ou interne(windows certsrv)  
La __CA__ vérifie, si c'est validé elle créer un certificat et le signe.
4) Sur le serveur qui veut sécuriser les échanges on y installe la clé publique et le certificat reçu du CA
5) Déroulement d'une connexion : Le serveur envoie son certificat (contenant sa clé publique) au navigateur du client.
Le navigateur vérifie qui a signé le certificat grâce à sa liste de CA racines de confiance  
Le client utilise la clé publique pour chiffrer une "clé de session" temporaire. Seule la clé privée pourra la déchiffrer









# Créer une PKI

