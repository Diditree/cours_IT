`/etc/hosts`
`/etc/nsswitch.conf`

`/etc/resolv.conf`
`nameserver x.x.x.x`

`journalctl -u named --follow` : voir en direct les logs journal du service named 

`ss -antu` : voir les ports ouverts en écoute


## Commandes bind9

Fichiers conf de bind9 : `/etc/bind/named.conf`

```bash
named-checkconf
named-checkzone
rndc
```