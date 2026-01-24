# Commandes TO DO

## Navigation dans le système de fichiers

### ls

Liste les fichiers et dossiers

```bash
ls [OPTION]... [FILE]...

ls -la1 /home/bob
```
Les principales options à connaitre :

- `-l` : Utilise le format de sortie long, c’est-à-dire affichant les permissions, le propriétaire et groupe, la taille, la date en plus du nom.
- `-1` : Affiche les fichiers sur une colonne.
- `-a` : Affiche les fichiers cachés dont ceux commençant par le caractère ..
- `-h` : Affiche la taille dans un format lisible par un humain.
- `-r` : Trie la sortie dans l’ordre inverse.
- `-t` : Trie la sortie par date et non par ordre alphabétique.
- `-c` : Trie sur la date de changement de statuts des fichiers.

### pwd (print working directory)  

Affiche le repo dans lequel on se situe

```bash
pwd
```

### cd

Change Directory
```bash
cd
```

### cp

Copie des fichiers/dossiers d'un remplacement à un autre

```bash
cp [OPTION]... SOURCE DEST

cp -p tsconfig.json tsconfig.json.old
```
Les principales options à connaitre :

- `-p` : Copie avec préservation des droits, des propriétés (groupe et utilisateur) et de l’horodatage.
- `-r` : Copie récursive, c’est-à-dire avec tous les fichiers présents dans un répertoire.

### mv

Déplace ou renomme un fichier/dossier

```bash
mv [OPTION]... SOURCE... DEST

mv -v /tmp/test /tmp/test2
```

Les principales options à connaitre :

- `-i` : Demande une confirmation avec d’effectuer l’opération
- `-f` : Ne demande aucune confirmation avec d’effectuer l’opération
- `-n` : Ne remplace pas / n’écrase pas les fichiers existants


### rm

Supprime des fichiers/dossiers 


```bash
rm [OPTION]... [FILE]...

rm -rf /tmp/test
```

Les principales options à connaitre :

- `-i` : Demande une confirmation avec d’effectuer l’opération
- `-f` : N'affiche aucun prompt
- `-r` : destruction récursive (tous les répertoires contenus dans le dossier)

### mkdir

Créer un nouveau répertoire

```bash
mkdir [OPTION]... DIRECTORY...
mkdir -p -m 700 nouveauRepo/cc.txt
```
Les principales options à connaitre :
- `-p` : Créer des répertoires récursivement 
- `-m` : permet d'attribuer les droits au moment de la création du répertoire

### chmod

Modifie les permissions d'un fichier ou d'un répertoire

```bash
chmod [OPTION]... MODE... FILE...

chmod 755 ~/nouveauRepo
```

Les principales options à connaitre :
- `-R` : modification récursive (tous les droits de tous les répertoires et fichiers contenus dans le dossier)
- `-f` : n’affiche aucun prompt

### chown

Modifie le propriétaire d'un ficher/dossier

```bash
chown [OPTION]... [OWNER][:[GROUP]] FILE...

chown $USER ~/nouveauRepo
chown :secretariat ~/nouveauRepo
```

Les principales options à connaitre :
- `-R` : modification récursive (tous les droits de tous les répertoires et fichiers contenus dans le dossier)
- `-f` : n’affiche aucun prompt

### chgrp

Change le groupe associé à un fichier ou un dossier

## Visualisation de fichiers

### cat

Affiche le contenu d'un fichier sans pagination


```bash
cat [OPTION]... [FILE]...

cat -n fichier.txt
```

Les principales options à connaitre :
- `-n` : Affiche les numéros de ligne
- `-v` : Affiche les caractères non imprimable

### less

Affiche le contenu d'un fichier avec pagination

```bash
less fichier.txt
```

### head et tail

Affiche les premières ou dernières lignes d'un fichier (par défaut 10)

```bash
head -n 20 fichier.txt
tail -n 5 fichier.log
```

## Recherche de fichiers et de dossiers

### find
Premet de rechercher des fichiers/dossiers dans le système de fichiers

```bash
find chemin [option] [expression]

find . -name "fichier.txt"
find . -name "*.log"
find . -size +1M
find . -mtime -7 # trouver tous les fichiers modifiés il y a moins de 7 jours
find . -type d -empty # cherche repos vides
find . -name "*.tmp" -exec rm {} \; # remove tous les fichiers avec l'extension .tmp
```

### grep

Permet de rechercher des informations dans un fichier texte ou à la sortie d'autres commandes

```bash
grep [options] motif [fichiers...]

grep "exemple" fichier.txt
grep "erreur" fichier1.txt fichier2.txt fichier3.txt
grep -i "^Erreur" fichier.txt
```

Les principales options à connaitre :
- `-n` : Affiche les numéros de ligne