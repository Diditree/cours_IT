`/etc/hosts`
`/etc/nsswitch.conf`

`/etc/resolv.conf`
`nameserver x.x.x.x`

`journalctl -u named --follow` : voir en direct les logs journal du service named 

`ss -antu` : voir les ports ouverts en écoute


#

`/etc/bind/named.conf.options` : configurer un DNS resolveur/une redirection inconditionnelle


exemple de conf:  
```bash
options {
// Répertoire de travail de Bind9
directory "/var/cache/bind";
// Redirection exclusive (pas d’appel aux racines en cas d’indisponibilité)
// vers les serveurs Quad9
forward only;
forwarders { 9.9.9.9; };
// Restriction des hôtes auxquels répond le serveur
allow-query { rsxclts; };
// Restriction des hôtes autorisés à adresser des requêtes récursives au serveur
allow-recursion { rsxclts; };
// Communication DNSSEC désactivée
dnssec-validation no;
// Information de version non communiquée
version none;
};
```

## Commandes bind9

Fichiers conf de bind9 : `/etc/bind/named.conf`

```bash
named-checkconf
named-checkzone
rndc
```


# Configurer un DNS faisant autorité sur une zone

Déclarer la zone directe dans : `/etc/bind/named.conf.local`  

ex:  

```bash
zone "eni.demo" {
type master;
file "db.eni.demo";
};
```  

`db.eni.demo` se situe dans `/var/cache/bind`

Zone inverse : `/etc/bind/named.conf.local`  

```bash
zone "42.168.192.in-addr.arpa" {
type master;
file "db.192.168.42.inv";
};
```


Fichier de zone directe (db/eni.demo) :  
```bash
$ORIGIN eni-ecole.bzh.
$TTL 86400
@ SOA dns1.eni-ecole.bzh. hostmaster.eni-ecole.bzh. (
2019100253 ; serial
86400 ; refresh 1 day
7200 ; retry 2 hours
3600000 ; expire
3600 ) ; negative TTL
;

@ NS dns1.eni-ecole.bzh.
@ NS dns2.eni-ecole.bzh.
dns1 A 44.0.5.3
dns1 AAAA 2001:0db8::ec01:e
dns2 AAAA 2001:0db8::ec01:e53
www A 44.0.0.80
rdsgw A 35.12.13.15
smtp A 44.0.0.25
ww CNAME www.eni-ecole.bzh.
wwww CNAME www.eni-ecole.bzh.
@ MX 10 smtp.eni-ecole.bzh.
@ MX 20 mx0.mail.ovh.net.

```


Fichier de zone inverse(db.192.168.42.inv) :  

```bash

$TTL 86400
@ SOA dns1.eni.demo. hostmaster.eni.demo. (
2019100253 ; serial
86400 ; refresh 1 day
7200 ; retry 2 hours
3600000 ; expire
3600 ) ; negative TTL
;
@ NS dns1.eni.demo.
Enregistrements SOA et NS
relatifs à la zone
1 PTR srv01.eni.demo.
2 PTR srv02.eni.demo.
13 PTR lucky.eni.demo.
254 PTR gw42.infra.eni.
```

1,2,13,254 sont le dernier octer de l'adresse IP  


