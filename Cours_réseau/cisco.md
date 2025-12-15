# Commandes Cisco


https://github.com/grplyler/cisco-cheatsheet 


NB: On peut copier coller l'intégralité d'une config d'un router

`copy running-config startup-config` : save  
`do wr` : save  (do = faire de n'importe où)
`show run` :  (do fonctionne avec)
`write memory`

`hostname` : change le nom de l'équipement 

`int G0/0` , `interface GigabitEthernet 0/0 `  
`ip add x.x.x.x`
`no sh`

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



Deconnexion automatique au bout de 5 minutes du terminal:
```
line console 0
exec-timeout 5
```

bastion (machine)