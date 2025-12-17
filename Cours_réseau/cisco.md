# Commandes Cisco

Si l'OS est en K9, le ssh est supporté  

https://github.com/grplyler/cisco-cheatsheet 


NB: On peut copier coller l'intégralité d'une config d'un router

`copy running-config startup-config` : save  
`do wr` : save  (do = faire de n'importe où)
`show run` :  (do fonctionne avec)
`write memory`

`hostname` : change le nom de l'équipement 

`int G0/0` , `interface GigabitEthernet 0/0 `  
`ip add x.x.x.x`
`no sh` : active l'interface

`line console 0` : selectionne la console de l'équipement
`password MDP` : lui attribut le MDP MDP


`line vty 0 15` : selectionne les lignes VTY ensuite avec password on définit le MDP, login active la demande de MDP

`enable secret MDP` : active le MDP pour le mode privilège(enable)

`service password-encryption` : chiffre les MDP

`show running-conf`


`banner motd`
`banner login` ssh
`banner exec` telnet

`logging synchronous`

`show vlan brief` : affiche la base de données locale des VLAN du commutateur et les ports
qui y sont affectés.

Pour setup Telnet:
```
line vty 0 4
login
transport input telnet
```

Créer un VLAN:

```
conf t
vlan VLAN_ID (vlan 2)
name NAME
exit
```


Affecter des ports aux VLAN:
```
interface range fastEhternet 0/5-6
switchport mode access
switchport access vlan VLAN_ID
```
  
`show interfaces trunk`
Vlan natif = vlan par défaut
```
vlan 100
name NATIF
exit
interface INTERFACE
switchport mode trunk (définit le port en tant que port d’agrégation de VLAN (Trunk))
switchport trunk native vlan 100 (définit l’ID de VLAN natif du port Trunk.)
switchport trunk allowed vlan 10,20,100 (définit les VLAN autorisés sur le port Trunk.)
```


Affectation de ports au VLAN ToIP:
```
vlan30
name VoIP
exit

interface range fastEthernet 0/5-6
switchport mode access
switchport access vlan 10

mls qos trust cos
switchport voice vlan 30
end
```

`mls qos trust cos` : permet l’étiquetage du trafic VLAN vocal avec une valeur de priorité de
classe de service (CoS). Utilisé dans le cadre de la QoS pour spécifier que le port est de
confiance et indique quel champ du paquet IP doit être utilisé pour classifier le trafic vocal.



Deconnexion automatique au bout de 5 minutes du terminal:
```
line console 0
exec-timeout 5


exit
```

On peut assigner une IP sur un switch
Créer un vlan 60 nommé Gestion, celui ci servira à l'administration du switch
```
interface vlan 60
ip address IP SUBMASK
exit
ip default-gateway IP
```

Configurer le ssh sur le switch
```
conf t
ip domain-name nomDuDomaine
crypto key generate rsa general-keys modulus
2048
ip ssh version 2
username NAME secret PASSWORD
line vty 0 15
no password
login local
transport input ssh
```
`ip domain-name` : définit le nom de domaine IP.

`crypto key generate rsa` : génère la paire de clés RSA

`ip ssh version 2` : active la version 2 du protocole.

`username` : créer un user

`login local` : exige une authentification locale pour les connexions SSH à partir de la base de
données locale de comptes d'utilisateur

`transport input ssh` : active le protocole SSH sur les lignes VTY. Cette configuration
empêche le périphérique d’accepter des connexions autres que SSH.

Sécurité port VLAN:
```
interface INTERFACE
switchport port-security mac-address MACADDRESS violation shutdown

```

show port-security interface INTERFACE

bastion (machine)