#!/usr/bin/env bash

while true; do

  echo "A - Sauvegarder tous les fichiers"
  echo "B - Supprimer tous les fichiers se terminant par .save"
  echo "Q - Quitter"
  read -p "Entrez la lettre correspondante pour l'action que vous souhaitez effectuer : " answer


case "answer" in
  a|A)
    for i in *; do cp -prv $i copyto/${i}.save; done
    ;;
  b|B)
    rm copyto/*.save 2> /dev/null
    ;;
  Q)
    echo "Vous quittez le menu"
    exit;;
  *)
    echo "Vous avez entré une option qui n'exsite pas , vous quittez le menu"
    exit;;
esac


donec





