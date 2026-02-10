# Notes bash

voir sous-shell


Penser à rendre le `.sh` executable : `chmod u+x`  
Pour executer un script : `./nom_du_script` ou `bash nom_du_script`  

Indiquer au début d'un script bash permet à la machine de savoir qu'elle doit executer le script dans un environnement bash

`$?` : code retour de la dernière commande executée , si 0 commande réussie sinon erreur  


`env` : permet d'afficher les variables d'environnement

`$#` : comptabilise le nombre d'argument

She bang :  
```bash
#!/usr/bin/env bash
```
## Debug

Rajouter `+`
ex : `+ echo "blabla"`

## Déclarer des variables
```bash
nomDeVariable=$"variable string"
nomDeVariable=$1

local variableLocal="test" # permet de déclarer une variable dans un scope(fonction)
```

On peut déclarer des variables avec des types grâce aux mots clés `declare` et/ou `typeset`  

```bash
declare [OPTION] variable=valeur
```
`-r -i -a -f -x`


`local` déclare la variable dans le __scope__ , sans `local` il est déclaré dans l'intégralité du script  

une expression arithmétique invalide sans erreur est égale à 0 :   
```bash
declare -i x="hello"
``` 
est égal à 0  

Pour stocker les valeurs d'une commande dans une variable:
```bash
serverName=$(hostname)
```

## Conditions
```bash
if [[ -f "/etc/passwd" ]]; then
    echo "Le fichier /etc/passwd existe."
else
    echo "Le fichier /etc/passwd n'existe pas."
fi
```

Pour les conditions arithmétiques on peut utiliser (()):  
```bash
if (( $n % 2 == 0 ));
then
    echo "$n est pair"
else
    echo "$n est impair"
fi
```

## Fonction
```bash
sayHello() {
    echo "Cc"
}

sayHello
```

veryQuickMaths arg1 arg2

Pour prendre des arguments dans la fonction :

```bash
$1 # premier argument
$2 # deuxième argument
$3 # troisième argument ...

$@ # tous les arguments , mais séparés : si il y a 3 arguments ça correspond à $1 $2 $3

$* # tous les arguments mais si on le met entre " " ça le transforme en une seule chaine
```

## Boucles

```bash
for i in {1..5}; do
    echo "Compteur: $i"
done
```

```bash
for (( n=1; n<=5; n++ ))
do  
  echo "Nombre: $n"
done
```


## ??


```bash
#!/usr/bin/env bash

pingIp(){
    ping -c $1 > /dev/null 2>&1
    if [[ $? != 0]];
    then
        echo "$1 DOWN"
    else
        echo "$1 UP"
    fi
}

pingIp 8.8.8.8
pingIp 1.1.1.1
pingIp 192.168.1.1
```