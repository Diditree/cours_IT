#!/bin/bash

# ===== Vérification des arguments =====
if (( $# > 1 )); then
    echo "Utilisation : $0 [dossier]"
    exit 1
fi

# Si aucun argument → saisie
if [[ -z "$1" ]]; then
    read -p "Indiquez le dossier à parcourir : " dossier
else
    dossier="$1"
fi

# Vérifier que le dossier existe
if [[ ! -d "$dossier" ]]; then
    echo "Erreur : $dossier n'est pas un dossier valide."
    exit 1
fi

# ===== Compter tous les fichiers =====
totalFiles=$(find "$dossier" -maxdepth 1 -type f | wc -l)

echo "Nombre total de fichiers dans $dossier : $totalFiles"
echo "-------------------"

# ===== Boucle sur les extensions =====
for ext in sh txt odt
do
    echo "Extension : .$ext"
    echo "-------------------"

    count=$(find "$dossier" -maxdepth 1 -type f -name "*.$ext" | wc -l)

    echo "-> $count fichiers"

    # Calcul du pourcentage (si total > 0)
    if (( totalFiles > 0 )); then
        percent=$(( count * 100 / totalFiles ))
        echo "Soit $percent% des fichiers contenus dans le dossier"
    fi

    echo "-------------------"
done
