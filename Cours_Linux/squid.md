# Squid 

`/etc/squid/squid.conf` 

- ACL
- http_access
- ports
- cache

Tout ce qui n'est pas explicitement autorisé est refusé  


`http_access` : Allows HTTP clients (browsers) to access the HTTP port. This is the primary access control list.

acl lan_clients src 192.168.9.0/24 :
- acl : déclare une ACl
- lan_clients : nom de l'ACL
- src : source

une ACL peut avoir plusieurs valeurs , elles ne s'écrasent pas car ça utilise un OU logique  

Configuration squid dans le TP07 de la MSP :  
```bash
# Port proxy
http_port 3128
 
# ACL réseaux
acl lan_clients src 192.168.9.0/24
acl lan_servers src 192.168.8.0/24
 
# Ports autorisés
acl Safe_ports port 80
acl Safe_ports port 443
acl Safe_ports port 21
http_access deny !Safe_ports
 
# Autorisations
http_access allow lan_clients
http_access allow lan_servers
 
# Refus final
http_access deny al
```

