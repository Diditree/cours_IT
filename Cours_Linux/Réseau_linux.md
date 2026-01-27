# Network

## service systemd

__networking__    

Service __NetworkManager__ (pour client graphique) > possibilité d'utiliser __nmtui__ et __nmcli__    

Si __NetworkManager__ est installé, il faut impérativement l'utiliser  

exemple si on souhaite redémarrer le service networking :  
`systemctl restart networking`  


## Configurer une IP en commande

Si on ne passe ni par __NetworkManager__ ni par `/etc/network/interfaces`   

Ajout d'une adresse à une interface : `ip a add X.X.X.X/MASK dev ensXX` (del à la place de add si on souhaite supprimer)  

`ip a flush ensXX` : supprime toutes les IP sur les interfaces 



ip link set ens33 down
ip l set ens33 up


## carte réseau

lo = loopback 127.0.0.1

## DNS

`/etc/resolv.conf`


`nameserver X.X.X.X`

ou dans `/etc/network/interfaces`   

`dns-nameservers 1.1.1.1 8.8.8.8`
## DHCP

`/etc/network/interfaces`  

à la place d'auto il est possible de mettre allow-hotplug  

Configuration dhcp :  
```bash
# The loopback network interface
auto lo
iface lo inet loopback
# The primary network interface
auto ens33
iface ens33 inet dhcp
```
  
Configuration static :  
```bash
# The loopback network interface
auto lo
iface lo inet loopback

auto ens33
iface ens33 inet static
    address 10.6.6.6
    netmask 255.255.0.0
    gateway 10.6.255.254
```


## Routage

Le service de la route est : `net.ipv4.ip_forward`

`ip route` : affiche les routes  

Setup une route par défaut(gateway) :
`ip route change default via x.x.x.x`  

Setup une route statique : 
`ip route add 10.56.0.0/16 via 172.16.6.253`  
Utiliser del à la place d'add pour supprimer  


Par défaut Linux ne partage pas les paquets d'une carte réseau à une autre  
Pour activer ça temporairement :
`sysctl -w net.ipv4.ip_forward=1` (par défaut à 0)


Pour modifier durablement il faut aller dans `/etc/sysctl.conf` et décommenter la ligne `net.ipv4.ip_forward=1`  

Pour forcer la prise en compte des changements : `sysctl -p`  

