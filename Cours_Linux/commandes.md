## Cheatsheet de commandes Linux

```bash
!! #permet de re écrire la dernière commande (sudo !! , retape la dernière commande avec sudo)#
 
su ## switch user (sudo su)

pwd # affiche le repo courant 

mkdir # créer un repo
# -p : créer les fichiers parents

touch # créer un fichier vide

cat # affiche le contenu complet d'un fichier
# cat permet aussi d'écrire dans des fichiers avec le >

cp # copy

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

#### Arguments ####
/ # repertoire racine

~ # home

. # repertorie courant 

.. # repertoire parent

> # redirige la sortie de la commande

man commande # la doc de la commande


sudo shutdown


whoami

hostnamectl

uptime

free -h # affiche la ram utilisée et disponible

df -h # affiche l'espace disque

grep -i "word" /fichier # recherche le mot word dans le fichier  
# -v = inverse ex : grep -v ^# (affiche tout ce qui ne commence pas par # )  
# Penser à l'option -s pour retirer les erreurs


find # permet de trouver un fichier par nom
# si on souhaite trouver un fichier dans /etc qui commence pas ho on fait comme ceci : find /etc -name "ho*"
# et qui termine par txt : find /etc -name "*txt"

sed

awk

cut

sort

uniq

more

tail

head

less

```