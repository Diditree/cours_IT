# RAID

__RAID__ : Redundant Array of Independent Disks

Il peut être logiciel ou matériel  

Logiciel : Le contrôle du RAID est assuré à 100% par une couche logicielle du système d'exploitation.
Si l'OS tombe en panne le raid est en panne.

Matériel : géré par une carte controleur ou le CPU

# RAID 0

2 disques minimum, très rapide , pas de redondance

Striping / Entrelacement  

Bonne perf en lecture / ecriture mais aucune tolérance aux pannes

# RAID 1

2 disques minimum, redondance en mirroring, 1 disque peut tomber en panne

Il se constitue sur 2 disques durs et consiste à répliquer les données pour les écrire sur les deux disques durs.

perte de 50% de place  

perf modérées en lecture / écriture


# RAID 5

système distribué avec parité  

3 disques minimum, redondance en parité (sauvegarde intelligente) , 1 disque peut tomber en panne  

bonne perf en lecture et modérée en écriture  


# RAID 10

4 disques minimum, redondance en mirroring , plusieurs disques peuvent tomber en panne ( 1 par sous grappe raid 1)

Lier de grappes RAID 1 sous une grappe RAID 0  
Un raid 0 = plusieurs raid 1  
bonne perf en lecture / écriture  

# RAID 6

Similaire au RAID 5 mais avec une double parité, ce qui permet de supporter la défaillance de deux disques simultanément – idéal pour les systèmes critiques où la redondance maximale est requise.  

4 disques minimum, redondance en double parité, 2 disque peuvent tomber en panne  

