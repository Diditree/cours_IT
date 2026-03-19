# Notes PFSENSE

PPPoE = Point-to-Point Protocol over Ethernet  
permet d'établir une connexion WAN si le FAI exige un login/MDP pour se co  

Passer en azerty :  
```
kbdcontrol -l /usr/share/syscons/keymaps/fr.iso.kbd
```



# NAT/PAT
socket = ip + port  
1:1 : redirige vers une IP (utilisé avec une ip virtuelle)

source nat  
destination nat  (dnapt) translation de port :1 seule ip publique, redirige le flux entrant lié à un port au bon port 