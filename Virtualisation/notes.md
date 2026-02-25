# Type

__hyperviseur de type 1__ : 1 couche entre la virtu et le materiel


__hyperviseur de type 2__ : 2 couches entre la virtu et le materiel

#

__VMM__ = __Virtual Machine Manager__

Mécanisme de prise en charge de la virtualisation :
- Intel : VT-x
- AMD : AMD-v

Mécanisme de prise en charge de __SLAT__
- Intel : EPT 
- AMD : NPT / RVI



# Vsphère
On manage le vCenter via une interface web  

__vCenter__ = gestion centralisée  

__vMotion__ = permet de déplacer les VMs à chaud d'un hyperviseur vers un autre  

Administration = Client VSphère / VSphère Web Client 
 
Solution de regroupement d’hyperviseurs = vCenter  


Disque dur : créer une banque de données dans stockage 

__port VMKernel__ =  interface réseau utilisée par l'hypervieur, Les ports VMKernel sont des ports sur les vSwitch dédiés UNIQUEMENT à l'ensemble du trafic réseau qui ne concerne PAS les VMs  

__ISCSI__ = permet d'accéder à un stockage distant comme si c'était du local



pour gérer le type de ports = VMK(port VMKernel)