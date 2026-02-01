# Services DHCP

`isc-dhcp-server` : service serveur dhcp  
`isc-dhcp-relay` : service dhcp relay

lancer le dhcp-server en __debug__ avec le binaire : `dhcpd -4 -d -cf /etc/dhcp/dhcpd.conf -f` ou `dhcpd -d`

lancer le dhcp-relay en __debug__ avec le binaire : `dhcrelay -4 -d -i ens32 -i INTERFACE -i INTERFACE X.X.X.X` : peut permettre de voir en temps réel les logs

# Configuration d'un serveur dhcp

Path de la conf : `/etc/dhcp/dhcpd.conf` 

Préciser l'interface sur laquelle le serveur doit écouter : `/etc/default/isc-dhcp-server`

enp0s3
/etc/dhcp/dhcpd.con


Test syntaxique : `dhcpd –t`  

Le serveur a besoin d'indiquer le subnet de toutes ses interfaces sinon il ne fonctionnera pas.  

```bash

# vi /etc/dhcp/dhcpd.conf
option domain-name "demo.eni";
option domain-name-servers 172.16.17.18; # DNS
# 6H 6m 6s = 21966s
default-lease-time 21966;
max-lease-time 42000;
ddns-update-style none;
authoritative;
log-facility local7;
subnet 192.168.42.0 netmask 255.255.255.0 {
}
subnet 172.19.0.0 netmask 255.255.0.0 {
range 172.19.2.0 172.19.9.255;
option routers 172.19.1.1;
}
host wifi-hp-04 {
hardware ethernet 08:00:07:26:c0:a5;
fixed-address 172.20.0.2;
}
```


# Configuration d'un relay dhcp

Path de la conf : `/etc/default/isc-dhcp-relay`  

```bash
# vi /etc/default/isc-dhcp-relay
SERVERS="192.168.42.2"
# On what interfaces should the DHCP relay (dhrelay) serve DHCP requests?
INTERFACES="ens33 ens35"
# Additional options that are passed to the DHCP relay daemon?
OPTIONS=""
```