# ??

## architecture cisco

Mode utilisateur > mode privilégié(enable) > mode configuration(conf t) > interface(interface) / ligne(line) / routage(router)  

## ???
`running-config` : config en cours  
`startup-config` : config sauvegardée  

# Mots de passes  

`service password-encryption` : chiffre tous les MDP  
L'accès distance ne fonctionnera pas si le mode enable secret ou password n'est pas configuré  

Ajouter un password au mode __enable__ :
```
enable password PASSWORD
```
  
Ajouter un password __HASHER__ au mode __enable__ :
```
enable secret PASSWORD
```

## Port console
Ajouter et activer un password à un port console en mode configuration :  
```
line console 0
password PASSWORD
login
```

## VTY / Accès à distance
Ajouter et activer un password à un accès à distance en mode configuration (le chiffre correspond au nombre de connexions autorisées donc de 0 à 15 ici) :  

```
line vty 0 15
password PASSWORD
login
```

## Interface

allumer/éteindre une interface : `shutdown` / `no shutdown` 

ajouter une adresse IP à une interface : `ip address IP SUBNETMASK`

# Bannière

La bannière est importante pour informer sur quel switch on est  

Configurer une bannière en mode configuration :

```
banner motd *MESSAGE*
```

