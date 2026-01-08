# Notes

## ACL

__QoS__ : permet de gérer la priorité des paquets, exemple prioriser le VOIP plutot que la data  
__ACL__ : lise de controle d'accès
__ACE__ : entrée de controle d'accès


__host__ = une adresse précise  
__any__ = toutes les adresses IP possibles  

exemple:  
`access-list 101 permit ip host 192.168.0.10 any`  
Autorise uniquement la machine 192.168.0.10 vers toutes les destinations  


Il y a deux __ACL__ :
- la standard qui va de 1 à 99
- l'étendue(extended) qui va de 100 à 199


la __standard__ ne prend que la source la destination et le protocole sont implicites : ça va vers n'importe quelle destination, ça autorise ou deny tout le trafic __IP__

l'__étendue__ aura le protocole de précisé ainsi que la destination



## Créer une ACL standard

Créer une ACL nommée qui empêche un routeur de communiquer avec les réseaux 192.168.100.0/24 et 192.168.200.0/24 :

```
ip access-list standard BLOQUE_RESEAUX

remark Interdire ROUTEUR->192.168.100/24
deny 192.168.100.0 0.0.0.255 


remark Interdire ROUTEUR->192.168.200/24
deny 192.168.200.0 0.0.0.255 


permit any

```

ip access-list standard BLOQUE_RESEAUX : permet aussi de selectionner l'ACL pour accéder aux ACE  

Il faut ensuite l'affecter à une interface :

```
int g0/0/0

ip access-group BLOQUE_RESEAUX in
```

Le routeur ne reçoit aucun paquet des 2 réseaux  

`show ip INTERFACE` : Visualiser les ACL de l'interface à la ligne "outgoing"(out) et "inbound"(in)


`show access-lists` : montre les ACL  

Les matches sont le nombre de fois où une ACL a été fonctionnelles

On peut réinitialiser ce compteur avec : `clear access-list counters`  



Si on souhaite modifier une ACE, il faut la supprimer et la recréer(en appliquant les modifications voulues) :

```
no 10
10 deny 192.168.200.0 0.0.0.255
```

## Supprimer une ACL

Supprimer une ACL affecter à une interface :
```
int INTERFACE
no ip access-group NOM/NUMERO out/int
```  

Supprimer une ACL :

`no access-list NUMERO/NOM`

## Sockets TCP/IP

Un socket est une connexion sur un couple IP/Port

## ??
rfc 1918