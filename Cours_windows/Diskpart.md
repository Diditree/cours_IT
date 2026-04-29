# Cheatsheet

Ouvre __diskpart__ :  
```bat
diskpart
```
Lister les volumes :  
```bat
list volume
```
Selectionner un volume :  
```bat
select volume NUMBER
```
Assigner / supprimer une lettre à un volume (il faut l'avoir selectionné) :  
```bat
assign letter=LETTER
remove letter=LETTER
```
Exit :  
```bat
exit
```




# NOTES A REVOIR

`select disk`
`detail disk`
`help create`
	`help create volume`
			`help create volume raid`
`recover`

**créez un volume E: d’une taille de 6 Go environ en RAID 5 appelé Données**
`select disk 1,2,3`
`convert dynamic`

**si erreur disk en lecture seul** :`detail disk` 
alors : `attributes disk clear readonly` -> **equivalent initialisation graphique** 
**equivalent cmd hors diskpart** : `attributes disk` 

**si erreur le périphérique n'est pas prêt :**
`online disk` -> **connecter en graphique** 

`create volume raid size=3000 disk=0,1,2`
**!! size= définit la taille allouée sur chaque disque du RAID, pas la taille totale**

**si erreur  :**
`select volume` 
`delete volume`
	les disks reste dynamic

**puis pour attribution de E :**
`assign letter=R`

**Formatage/type fichier :**
`format fs=ntfs quick`

**si le volume a déjà un système de fichiers :**
`label=<nom>`


**Créez un volume miroir de 4 Go, reposant sur les disques 1 et 3, nommé INFOTOOLS. Il ne possèdera pas de lettre de lecteur mais il sera plutôt monté dans le dossier NTFS vide C:\INFO-TOOLS**

**-> un volume ne peut pas avoir à la fois une lettre et être monté dans un dossier**

 `create volume mirrored size=4000 disk=0,1,2`
 `format fs=ntfs label="Données" quick`
 
`Get-ChildItem C:\`
`New-Item -Path "C:\INFO-TOOLS" -ItemType Directory`

`assign mount=C:\INFO-TOOLS`


attention static/ dynamic aussi en occupation fixe ou variable !