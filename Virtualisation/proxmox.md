# Notes

__conteneurs LXC__ : conteneur LINUX, utilise le kernel de l'hôte(proxmox), n'a pas de bootloader(car il n'a pas besoin de boot), utilise une template LXC, contient une architecture classique d'un linux(bin,etc,var,...)

Un __conteneur LXC__ est un système Linux isolé qui utilise le kernel de l’hôte (Proxmox), sans bootloader. Il est créé à partir d’une template (un système Linux préinstallé), et contient une structure complète de fichiers comme un Linux classique (/etc, /home, /usr, etc.)  

__Datacenter__ : centralise la configuration globale, permet de regrouper des serveurs proxmox, permet de configurer les permissions, les utilisateurs, le stockage partagé, les sauvegardes  

__Node__ : machine proxmox, permet d'executer les vm et conteneurs LXC, permet de gérer/voir le cpu/ram/disque, voir les logs, les interfaces network  

__Storage__ : local(iso, template LXC, backup), local-lvm(disques des VM/conteneur, stockage rapide), raw=rapide, qcow2=snapshots possibles(à voir)  