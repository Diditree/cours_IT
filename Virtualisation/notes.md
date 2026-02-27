# Types d'hyperviseur

__hyperviseur de type 1__ : 1 couche entre la virtu et le materiel


__hyperviseur de type 2__ : 2 couches entre la virtu et le materiel

# Notes

__VMM__ = __Virtual Machine Manager__

Mécanisme de prise en charge de la virtualisation :
- Intel : VT-x
- AMD : AMD-v

Mécanisme de prise en charge de __SLAT__
- Intel : EPT 
- AMD : NPT / RVI



# Vsphère / VMWare ESXi

On manage le vCenter via une interface web  

__vCenter__ = gestion centralisée  

__vMotion__ = permet de déplacer les VMs à chaud d'un hyperviseur vers un autre  
Pour utiliser le __vMotion__ il faut passer dans un contexte "data center" et activer le __vCenter__  

Administration = Client VSphère / VSphère Web Client 
 
Solution de regroupement d’hyperviseurs = vCenter  


Disque dur : créer une banque de données dans stockage 

__port VMKernel__ =  interface réseau utilisée par l'hypervieur, Les ports VMKernel sont des ports sur les vSwitch dédiés UNIQUEMENT à l'ensemble du trafic réseau qui ne concerne PAS les VMs  

__ISCSI__ = permet d'accéder à un stockage distant comme si c'était du local

pour gérer le type de ports = VMK(port VMKernel)

## Stockage

mode fichier : facile à mettre en place mais plus lent
mode bloc : plus compliqué à mettre en place mais plus rapide(plus bas niveau)


__NAS__ : partage sur le réseau, protocoles __NFS__ ou __CIFS/SMB__ , facile à mettre en place  

__SAN__ : plus rapide que le __nas__ , utilise les protocoles __Fibre Channel__ ou surtout le __iSCSI__ , difficile à mettre en place (+ performant)  

iSCSI initiatior = client  
iSCSI target = serveur (peut être un rôle windows serveur) 

__adaptateur de stockage__ = __HBA__ physique ou adaptateur logiciel(iscsi logiciel), ça permet de traduire en isci les données avant de les transmettre à l'hyperviseur   

__banque de données__ ou __datastore__ = storage

__LUN__ (logical unit number) = contient des volumes de stockage, on branche le LUN au HBA et l'hyperviseur voit le total du volume du LUN (ex 3*100gb, l'hyperviseur voit 300gb)  


__IQN__ : n° unique généré

avec le protocole https sur les ports :  
- 5480 : gestion du vcsa(v-center) 
- 443 ou 9443 : gestion de l'infra avec vSphère   
  
format __vmtx__ = seulement sur vsphère, tous les autres(__OVF__,__OVA__) sont compatibles  
# Microsoft Hyper-v