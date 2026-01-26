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


## carte réseau

lo = loopback 127.0.0.1

## DNS

`/etc/resolv.conf`

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

