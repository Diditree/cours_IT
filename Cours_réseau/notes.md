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

## ??
rfc 1918