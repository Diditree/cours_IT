# Notes bash

Indiquer au début d'un script bash permet à la machine de savoir qu'elle doit executer le script dans un environnement bash

```bash
#!/usr/bin/env bash
```


## Déclarer des variables
```bash
nomDeVariable=$"variable string"
nomDeVariable=$1

local variableLocal = "test" # permet de déclarer une variable dans un scope(fonction)
```

## Conditions
```bash
if [[ "/etc/passwd" ]]; then
    echo "Le fichier /etc/passwd existe."
else
    echo "Le fichier /etc/passwd n'existe pas."
fi
```

## Fonction
```bash
sayHello() {
    echo "Cc"
}

sayHello
```

veryQuickMaths()

Pour prendre des arguments dans la fonction :

```bash
$1 # premier argument
$2 # deuxième argument
$3 # troisième argument ...

$@ # tous les arguments , mais séparés : si il y a 3 arguments ça correspond à $1 $2 $3

$* # tous les arguments mais si on le met entre " " ça le transforme en une seule chaine
```

