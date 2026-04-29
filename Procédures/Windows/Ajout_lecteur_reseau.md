# Manipuler un lecteur réseau avec CMD

Ajouter :  
```bat
net use LETTER: \\SERVER\\FOLDER
```

Supprimer :  
```bat
net use LETTER: /delete
```
  
On peut ajouter l'option définir si l'ajout doit persister ou non, par défaut il persiste.  
```bat
net use LETTER: \\SERVER\\FOLDER /persistent:yes
```
  

Si la lettre est déjà attribuée : utiliser __diskpart__ :

```bat
diskpart
list volume
select volume X
assign letter=LETTER
exit
```

Pour supprimer une lettre d'un lecteur :  

```bat
remove letter=LETTER
```