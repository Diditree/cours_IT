#!/bin/bash

file=$1

if [[ -z $file ]]; then
  read -p "Indiquez le fichier à parcourir : " file
fi

if (($# > 1)); then
  echo "Saisissez un fichier à parcourir à la suite de la commande"
  echo "exemple : tmp"
  exit 1
fi

if [[ -n $file ]]; then
  totalFiles=$(ls ${file} | wc -l)
  echo $totalFiles
  for i in $file; do
    sh=$(ls /${file}/*.sh | wc -l) && echo "Il y a ${sh} fichiers .sh" && pourcentage $file $totalFiles
    odt=$(ls /${file}/*.odt | wc -l) && echo "Il y a ${odt} fichiers .odt"
    txt=$(ls /${file}/*.txt | wc -l) && echo "Il y a ${txt} fichiers .txt"
  done
fi


