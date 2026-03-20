# DMZ

La __DMZ__ sert de tampon entre le réseau interne et externe  
Elle peut aussi servir à isoler des technologies non maitrisées (iot)  

On peut retrouver dans les __DMZ__
- serveurs DNS
- serveurs FTP
- serveurs messagerie
- serveurs proxy
- serveurs web  

# Système de détection et de prévention d'intrusion (IDS/IPS)

- IDS (intrusion detection system) : Surveille le trafic réseau, détecte les anomalies et signale les potentielles violations de sécurité.  
- IPS (intrusion prevention system) : Détecte et bloque automatiquement les activités malveillantes pour prévenir les intrusions.  

# Systèmes de détection et prévention EDR/XDR/MDR

- __EDR__ (Endpoint Detection and Response) : Surveille et analyse en temps réel l'activité sur les terminaux(ordinateurs, serveurs, etc.) pour détecter et répondre aux menaces Fournit une visibilité détaillée sur les endpoints.
- __XDR__ (Extended Detection and Response) :
Étend les capacités de l'EDR en intégrant des données de plusieurs sources (réseau, cloud, applications) pour une détection et une réponse plus globale aux menaces. Offre une vue unifiée de la sécurité.
- __MDR__ (Managed Detection and Response) : Service géré qui combine technologie et expertise humaine pour la détection et la réponse aux menaces. Une équipe de sécurité externe surveille en continu l'environnement du client et intervient en cas d'incident.


# ZTNA

__ZTNA__ = Zero Trust Network Access  

__ZTNA__ est une approche de sécurité réseau qui ne fait confiance à aucun utilisateur ou appareil, qu'il soit à l'intérieur ou à l'extérieur du réseau. Chaque tentative d'accès est rigoureusement vérifiée avant d'être autorisée.  
__ZTNA__ combine des technologies de détection et de prévention pour garantir que seuls les utilisateurs et dispositifs authentifiés et autorisés peuvent accéder aux ressources spécifiques.  
Cela inclut la surveillance continue des comportements pour détecter et bloquer les activités suspectes, assurant ainsi une protection robuste contre les menaces internes et externes.  


# Bastion


Pour sécuriser l'accès aux systèmes critiques, l'utilisation d'un bastion (ou jumphost) est une pratique recommandée. Voici les points clés sur l'utilisation d'un bastion pour protéger les systèmes critiques :
 
    Définition du bastion :
        Un serveur bastion est un système dédié et fortement sécurisé qui sert de point d'entrée unique pour accéder à un réseau sécurisé.
    Fonctionnement :
        Tous les accès aux systèmes critiques passent obligatoirement par le bastion.
        Le bastion agit comme un proxy pour les connexions, évitant l'accès direct aux systèmes critiques.
    Avantages :
        Centralisation et contrôle des accès
        Réduction de la surface d'attaque
        Facilitation de l'audit et de la journalisation des accès
    Sécurisation du bastion :
        Système durci avec uniquement les services essentiels
        Mises à jour régulières et gestion stricte des correctifs
        Authentification forte (multi-facteurs) obligatoire
    Bonnes pratiques :
        Isolation réseau du bastion
        Utilisation de protocoles sécurisés (SSH, RDP sur TLS)
        Enregistrement détaillé de toutes les sessions
    Intégration avec d'autres solutions :
        Gestion des accès privilégiés (PAM)
        Systèmes de détection et de prévention d'intrusion (IDS/IPS)
        Solutions de gestion des identités et des accès (IAM)
    Considérations pour les systèmes critiques :
        Segmentation réseau pour isoler les systèmes critiques
        Accès basé sur les rôles (RBAC) pour limiter les privilèges
        Surveillance en temps réel des activités sur ces systèmes


# Proxy

__reverse proxy__ : front qu'on met sur internet/dmz , redistribue la charge entre les serveurs