# VLAN et SWITCH

# VLAN

Port-Based VLAN (VLAN de niveau 1): L’affectation à un VLAN est liée au port de raccordement du switch
MAC-Based VLAN (VLAN de niveau 2): L’affectation du VLAN est liée à l’adresse MAC de l’équipement
Protocol-Based VLAN (VLAN de niveau 3): L’affectation du VLAN est liée à l’adresse IP de l’équipement


Un port peut être trunk pour plusieurs VLANs  

Si plusieurs vlan sur un port = port mode trunk sinon il est en mode access  
ports switch à switch = mode trunk pour que le paquet soit tagué 802.1Q(pour savoir à quel vlan appartient le paquet)

## Marquage des paquets

__Marquage actif__: Le marquage des paquets (champ TAG VLAN) est propagé à leur sortie du switch  
__Marquage inactif__ : Le champ TAG VLAN est supprimé avant la remise de la trame

## ??

__Protocole STP__ (Spanning Tree Protocol) : Ce protocole permet d'éviter les boucles dans les switchs et arrete les tempêtes de broadcast

