#!/bin/bash
if (( $# > 1 )); then
    echo "syntaxe"
    exit 1
fi
if (($# == 0 )); then
    read -p "Veuillez entrer votre prénom : " prenom
    if [ -z "$user" ]; then
        user="invité"
    fi
else
    user="$1"
fi

if [[ "$user" = "root" ]]; then
    echo "root"
    exit 4
fi