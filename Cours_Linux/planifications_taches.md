# task

## cron

__cron__ permet de lancer des taches en fonds  
chaque tache a sa crontab  

cron > `/etc/crontab` <= crontab système

crontab utilisateurs : chaque user à sa crontab  
pour éditer une crontab : `crontab -e`  
lister : `crontab -l`  

En tant que root on peut créer une crontab pour un autre USER : `crontab -u User -e`

`cron.hourly` > permet de placer les endroits où on va planifier des taches (ex: lancer un script tous les jours à 8H > cron.daily)
  

minutes , heures , jour du mois , mois , jour de la semaine , action


Le fichier est composé de six colonnes :
• Minute : de 0 à 59
• Heure : de 0 à 23
• Jour du mois : de 1 à 31
• Mois : de 1 à 12
• Jour de la semaine : de 0 à 7 (sachant que 0 et 7 représentent dimanche)
• Commande : la commande à exécuter suivant la planification (il est fortement conseillé
d’utiliser un script pour des raisons de simplification de suivit des actions).

Pour les cinq premières colonnes il est possible de les formater :
• Avec des listes en utilisant le caractère « , » :
    o Ex : 1,3,5 dans la colonne des jours de la semaine génère une tâche tous les lundi,
mercredi et vendredi
• Avec des intervalles, en utilisant « - » :
    o Ex : 10-20 dans la colonne jours du mois génère une tâche exécutée du 10 au 20
• Avec un joker, en utilisant « * » :
    o Ex : * dans la colonne des heures indique toutes les heures
• Mettre un répétiteur, en utilisant « / » :
    o Ex : */2 dans la colonne des mois génère une tâche exécutée en janvier, mars, mai, juillet,
septembre, novembre

Périodicité : tous les jours ouvrables de la semaine à 12h45

`0 5 * * 1 /opt/bin/backup.sh` : Tâche exécutée chaque lundi à 5h du matin durant toute l’année quel que soit le mois


