# Commandes Cisco

Si l'OS est en K9, le ssh est supporté    
voir ce qu'est un bastion (machine)  
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

`ip route NETWORK SUBNETMASK IP`

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

Afficher les infos:
show port-security interface INTERFACE

Supprimer un parametre du port-security (par exemple une mac add):

`no port-security mac-address MACADDRESS`


`login block-for 60 attempts 2 within 60` : bloque la connexion pendant 60 secondes si 2 mdp érronés en 60 secondes




## Routing Dynamique

### RIP

Transmet ses messages toute les 30 secondes  

configurer sur un routeur le protocole RIP
```
router rip
version 2
network 192.168.10.0
network 192.168.20.0
```

`router rip` : active le routage RIP
``network X.X.X.X` : indique le réseau que le routeur annonce à ses voisins

`debug ip rip` : active le debuggage

`undebug all` : desactive tous les debug

## Routage Inter VLAN

### Router on a stick

On peut créer des sous-interfaces sur les routers

Configurer un __Router on a stick__

Sur le __router__ :
Créer une sous interface:
`interface gigabitEthernet 0/0/0.10`

Il faut activer l'encapsulation VLAN 802.1Q (permet de rajouter dans la trame ethernet l'id du VLAN):
`encapsulation dot1q 10`
10 = vlan id  


Définir l'ip de la sous interface:
`ip address 172.25.10.254 255.255.255.0`

Ensuite selectionner l'interface et l'activer (ça permet d'activer les sous-interfaces sous-jacentes)
```
interface gigabitEthernet 0/0/0
no shutdown
```

L’adresse IP de la sous interface fera office de passerelle par défaut pour les hôtes du VLAN correspondant

Sur le switch:
Activer le mode __trunk__ sur l'interface reliée au __router__
```
interface GigabitEthernet 0/1
switchport mode trunk
```