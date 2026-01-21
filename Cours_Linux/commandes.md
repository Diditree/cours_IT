## Cheatsheet de commandes Linux
On peut écrire pluseurs commandes sur une seule ligne avec le séparateur `;` : `who; ps -f` (ou &&)   

On peut regrouper les commandes avec des () : `(who; ps aux) >> fichier.txt`  

```bash

which # localiser le repo d'une commande

!! #permet de re écrire la dernière commande (sudo !! , retape la dernière commande avec sudo)#
 
su # switch user (sudo su) , su - (su root)

sudo -u postgres -i # permet de se connecter à l'user postgres qui est créér automatiquement à l'installation de postgresql
psql # permet de passer en prompt postgresql


pwd # affiche le repo courant 

mkdir # créer un repo
# -p : créer les fichiers parents
# -m : créer les droits en même temps
# -p : 

touch # créer un fichier vide

cat # affiche le contenu complet d'un fichier
# cat permet aussi d'écrire dans des fichiers avec le >

cp # copy
   # -rp : copie les liens symboliques

mv # déplace

rm -rf # supprime


ls #liste les éléments dans le current repo
#   -a : liste tout y compris les fichiers cachés
#   -l : format liste
#   -t : classe par date de modif
#   -r : inverse l'ordre de la date
#   -h : taille
#   -1 : liste 
#   -d : le nom des fichiers et pas le contenu

last # affiche une liste des users dernièrement connectés

#### Arguments ####
/ # repertoire racine

~ # home

. # repertorie courant 

.. # repertoire parent

> # redirige la sortie de la commande

man commande # la doc de la commande

ps -f
# aux (pour voir le proc/memoire)
# ps -o pcpu,pmem,cmd (affiche le cpu utilisé, mémoire utilisée, et la commande)
# -e affiche tous les processus

jobs # permet de voir/gérer les processus en arrière plan
# -l 


sudo shutdown #
# -r 0 permet de reboot instant la machine


whoami

hostnamectl

uptime

free -h # affiche la ram utilisée et disponible

df -h # affiche l'espace disque

grep -i "word" /fichier # recherche le mot word dans le fichier  
# -v = inverse ex : grep -v ^# (affiche tout ce qui ne commence pas par # )  
# Penser à l'option -s pour retirer les erreurs

visudo

find # permet de trouver un fichier par nom
# si on souhaite trouver un fichier dans /etc qui commence pas ho on fait comme ceci : find /etc/* -name "ho*"
# et qui termine par txt : find /etc/* -name "*txt"
#
# Si on souhaite trouver tous les fichiers du dossier perso qui terminent par txt et en faire une copie :
# find ~ -type f -name "*txt" -exec cp {} {}.save \;  
# -mount : Ne pas parcourir les répertoires situés sur d'autres systèmes de fichiers. (alternative à -xdev)

alias ll='ls -l' # création d'un alias pour ls -l
unalias ll

systemctl  # permet de gérer les services
# get-default pour connaitre par défaut
# set-default
# list-units

###############
#stockage
###############
fdisk
fdisk -l # liste les disques et leurs partitions
blkid
vgs
pvs
vgdisplay # affiche les groupes LV

e2label # Modifie le label d'une partition
###############

###############

ip a

sed

awk

cut

sort

uniq

more

tail -f log.log

head

less

du -sh # Totaliser l'occupation du périphérique pour l'ensemble des fichiers, récursivement pour les repertoires -h pour humain readable et -s pour summarize


```