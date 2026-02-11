#!/bin/bash

echo "--- Début du script ---"

echo "---"
echo "M -> Voir le processeur "
echo "E -> Voir les disques"
echo "R -> Voir les dossiers"
echo "Q -> Quitter"
echo "---"
read -p "Entrez votre choix : " choice

case $choice in

q|Q) exit ;;
r|R) du-hs /* ;;
p|P) dpkg --get-selections | wc -l ;;
e|E) df -h ;;
m|M) read -p "CPU ou PCI ? " answer
  case $answer in
  CPU) lscpu;;
  PCI) lspci;;
  *);;
esac
;;
*) echo "Erreur de synthaxe"
  exit2 ;;

esac

echo "--- Fin du script ---"