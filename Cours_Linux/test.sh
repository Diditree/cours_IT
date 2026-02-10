1 #!/usr/bin/env bash
  2 
  3 if (($# > 1)); then
  4     echo "synthaxe"
  5 #   exit 1
  6 elif [[-z $1]]; then
  7 # read -p "Votre nom : " user
  8 # if [[-z $user]]; then
  9 #   user="invité"
 10 #elif [[$1 == "root"]]; then
 11 # echo "compte root"
 12 # exit 4
 13 fi
 14 
 15 #echo "cc $user"
~                       