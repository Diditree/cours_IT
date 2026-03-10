# ??

Archivage = pas toujours lisible dans le temps à long terme

Replication = disponibilité de services

Restauration granulaire

__RTO__ = Recovery Time Objective  


Règle 3-2-1-1 :
- 3 __copies de données__ (cotient les données originales, minimum deux sauvegardes)
- 2 __types de stockage différent__ (2 supports différents distincts pour minimiser les risques de défaillance)
- 1 __copie hors site__ (prévention contre les sinites, ransomware,...)
- 1 __copie déconnectée__ (disque dur externe, bande,...)  

On peut avoir plusieurs serveurs de sauvegarde pour aller + vite  

dump = "photo" à un moment(permet de récupérer les informations)

# Méthode de sauvegarde

## Database

__Avantage__ :
- Disposer d’un dump à jour permet de restaurer rapidement l’état antérieur de la base et de minimiser les pertes
- Conserver des copies datées aide à suivre l’évolution des données au fil du temps.
- Les dumps peuvent être dupliqués facilement et ainsi être en adéquation avec les préconisations ANSSI sur la règle 3-2-1  

__Inconvénients__ :
- Consommation de ressources et temps d'exécution élevés (si base volumineuse)
- Gestion complexe si le backup produit un fichier de grande taille (problèmes de stockage, de transfert, etc.)

## Clichés instantanés

Capture d'un volume à un moment précis.  
__VSS__ permet de capturer l'état complet d'un volume NTFS à un moment précis, même si des fichiers sont ouverts ou en cours d'utilisation.

__Avantage__ :
- Restauration rapide et granulaire : Permet de récupérer rapidement une version antérieure d’un fichier ou l’état complet du volume sans interrompre les services.
- Sauvegarde cohérente sans interruption : Même avec des fichiers ouverts, le Volume Shadow Copy Service (VSS) garantit une sauvegarde intégrale et cohérente de l’état du système.

__Inconvénients__ :
- Consommation d’espace disque : Chaque instantané occupe de l’espace, ce qui peut nécessiter une gestion rigoureuse pour éviter une saturation du volume.
- Impact potentiel sur les performances : La gestion et le maintien de multiples clichés peuvent, dans certains scénarios, entraîner une légère dégradation des performances du serveur.

## Rotation des supports

__GPF__ (Grand-Pere / père / fils) / __GFS__ (Grand-father/Father/Son)

Une stratégie de rotation __GFS__ sur 5 jours nécessite environ 21 bandes par an  

- Support quotidien -> Fils (4 jours puis recyclées)
- Support hebdomadaire -> Père (5 semaines puis recyclées)
- Support mensuel -> Grand-Père (12 mois puis recyclées)

## Sauvegarde à chaud et à froid

à chaud = service en cours d'utilisation
à froid = service n'est pas en cours d'utilisation

## Bit archive

Si un fichier n'est pas modifié le __bit archive__ est à 0  
Si un fichier est modifié le __bit archive__ est à 1   

Sur windows: dans cmd : `attrib` `attrib /?` , pour l'afficher en GUI : "clique droite > autres > attributs"   


## Sauvegarde Complète
Copie l'ensemble des fichiers et dossiers d'un système : impact sur le stockage important.

- Ne se base pas sur l'attribut pour savoir quoi sauvegarder, elle sauvegarde tout
- Modifie l'attribut en fin de sauvegarde pour marquer le fichier.

facile à restaurer et rapidement, sauvegarde fiable, permet de supprimer facilement les anciennes sauvegardes

gourmand en stockage, les fichiers n'ont pas été modifiés sont sauvegardés plusieurs fois  

## Sauvegarde Différentielle

Sauvegarde les données modifiées ou ajoutées depuis la dernière sauvegarde complète appelée "Base différentielle"

- Prend tous les fichiers ayant leur attribut Archive à 1
- Après la sauvegarde l'attribut n'est pas remis à 0, méthode dite cumulative.

restauration simple et rapide, temps de sauvegarde modéré, plus fiable qu'une sauvegarde incrémentielle 

plus lente et couteuse qu'une sauvegarde incrémentielle, pas de rémanence sur les fichiers si un seul support de sauvegarde est utilisé  

## Sauvegarde Incrémentale

La sauvegarde incrémentale, sauvegarde les données modifiées ou ajoutées depuis la dernière sauvegarde complète puis incrémentale  

- Prend tous les fichiers ayant leurs attributs Archive à 1
- Après la sauvegarde l'attribut est remis à 0.

gain d'espace de stockage, gain de temps de sauvegarde, moins de consommation de la bande passantes

