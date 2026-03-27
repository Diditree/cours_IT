# VPN

Un Réseau Privé Virtuel (VPN - Virtual Private Network) est une technologie qui permet de créer une connexion sécurisée entre deux points sur un réseau public  

Le VPN crée un tunnel qui est chiffré  

# Types de VPN

- __VPN d'accès à distance__ : Utilisés par les particuliers et les employés pour se connecter à un réseau distant de manière sécurisée.

- __VPN site-à-site__ : Utilisés pour connecter deux réseaux distincts, souvent utilisés par les entreprises pour relier différents bureaux.

# Solutions VPN

- Protocole __Lightway__ : ExpressVPN
- Protocole __Secure Socket Tunneling Protocol__ (__SSTP__) : Microsoft
- __Point-to-Point Tunneling Protocol__ (PPTP) (obsolète, vulnérable)
- __Layer 2 Tunneling Protocol__ (L2TP) combiné avec __IPSec__ pour le chiffrement
- Réseau et sécurité IKEv2 (Internet Key Exchange version 2) couplé avec __IPSec__ est un protocole qui offre une sécurité robuste et une bonne stabilité.
- __OpenVPN__  
- __WireGuard__ léger, très rapide, facile à auditer (4000 lignes de code)
  

# IPSec

La connexion VPN __IPSec__ (Internet Protocol Security) est une méthode de sécurisation des communications sur Internet.  
Il protège le trafic au niveau de la couche IP  

L'initialisation du tunnel IPSec se fait en 2 phases :
- Phase 1 (Tunnel __IKE__): association de __sécurité IKE__ (ISAKMP-SA). Ce tunnel est utilisé pour l'échange des paramètres de sécurité entre les entités, les deux entités vont convenir des algos de chiffrement, des méthodes d'authentifications et autres paramètres nécessaires à la sécurisation de la connexion.
- Phase 2 (__Tunnel IPSec__): association de __sécurité IPsec__ (IPsec-SA). Ce tunnel est responsable du transfert sécurisé des données entre les entités.
  
A chacune des phases il y a des échanges et négociations de suites de protocoles et algorithmes entre les 2 entités en charge du tunnel  

La sécurisation des données par IPsec est mise en oeuvre une fois le tunnel IPsec établi. L'établissement de celui-ci ne prend effet qu'une fois les phases 1 et 2 réalisées avec succès  
En cas d'échec d'une de ses phases -> pas d'établissement du tunnel IPsec  


# Notes

__VPN MPLS__ : multi chemins  
__MFA__ = login + mdp + certificat  
