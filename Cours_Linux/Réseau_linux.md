# Network

## service systemd

__networking__    

NetworkManager (pour client graphique) > possibilité d'utiliser nmtui et nmcli  

exemple si on souhaite redémarrer le service networking :  
`systemctl restart networking`  

## carte réseau

lo = loopback 127.0.0.1

## DNS

/etc/resolv.conf

## DHCP

/etc/network/interfaces  

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

