Procédure : https://www.it-connect.fr/installer-mdt-sur-windows-server-2022-pour-deployer-windows-11-22h2/

WDS sert à booter PXE et MDT à customiser les images  


# WDS Windows Deployment Services

Prérequis de mise en oeuvre :
- Un service DHCP
- Service DNS
  
Le serveur WDS fonctionne conjointement avec le DHCP, lors du process DORA il lui offre l'ip du serveur de déploiement  

Si le DHCP et le WDS sont sur le même serveur il faut indiquer dans les options DHCP (66 et 67) les informations relatives(et cocher les options ne pas écouter sur les ports dhcp et configurer les options dhcp...)  

  
- Intègre un service PXE et TFTP
- Permet aux machines ciblées de démarrer via le réseau et de déployer une image
- Fourni avec Windows Server

__WDS__ est un rôle, il peut
- Fournir les informations nécessaires à l’amorçage de postes clients via le réseau
- Héberger des images d’amorçage et d’installation et les transmettre aux clients
- Intégrer des pilotes à des images


## Installation du rôle WDS

Cocher les 2 services de rôles : déploiement et transport  

# MDT Microsoft Deployment Toolkit

Nécessite :  
- __Windows ADK__ : outils de déploiement, concepteur de fonctions , concepteur de conf, outil de migration (USMT)
- __WinPE__

Bootstrap.ini = démarrage de l'install
CustomSettings.ini = ce qu'on installe
  
- Ensemble d’outils liés au déploiement de Windows
- Peuvent être utilisés pour automatiser les tâches de déploiement
- Installeur téléchargeable sur le site de Microsoft

MDT = addon à WDS

## DeploymentWorkBench

https://learn.microsoft.com/en-us/windows/deployment/wds-boot-support

- Importer l'OS (Operating Systems)
- Créer des Task Sequences  

# ??

Le processus de déploiement s’appuie sur l’utilisation d’__images__

# Types d'images

- Les __images de partitions__, dont le format dépend de la solution utilisée pour générer l’image
- Les __images d’installation__ au format __WIM__ (Windows Imaging)

boot.wim , install.wim  

Les images de partitions nécessitent que les postes aient les mêmes caractéristiques matérielles (ou très proches)

Le déploiement d’images WIM s’appuie sur un processus d’installation du système (avec détection du matériel)  
Une même image peut être déployée sur différents type de matériels