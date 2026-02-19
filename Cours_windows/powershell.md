# Powershell

## Notes 
Ctrl + espace pour voir toutes les options d'une commande  

`$_` = this  

Logs : `Get-EventLog`  


Voir toutes les propriétés et méthodes d'un objet(`get-process` dans l'exemple) :  
```Powershell
get-process | get-member
get-process | gm
```

Synthaxe du PS : __Verbe__-__Nom__ (Get-Help)  

Pour pouvoir executer des scripts on peut abaisser le niveau de confiance :   

```powershell
Set-ExecutionPolicy –ExecutionPolicy Unrestricted
```

Il y a des "__Modules__" en powershell  
```powershell
get-module
```

Voir les emplacements où déposer des modules qu'on aurait téléchargé :  
```PowerShell

$env:PSModulePath
```

Importer un module (placé dans un des chemins listé dans `$env:PSModulePath`)    
```powershell
Import-Module –Name "AWSPowerShell"
```

Mettre à jour `get-help` localement :  

```Powershell
Update-help -SourcePath \\chemin\vers\aide\PowerShell -UIculture en-US -credential <login>
```


# Bases

## Help 

```Powershell
Get-help command -showWindow
Get-help command -examples 
```

## Trouver une commande

```Powershell
Get-command

# Liste toutes les commandes qui commencent par le verbe get- 
Get-Command get-*

# Affiche toutes les commandes contenant la chaîne de caractères printer
`Get-Command *printer*`

Get-Command new-*user*
```
   
## Select

`Select-Object` : Permet de récupérer/afficher des élèments

```Powershell
#Récupère les 2 premiers utilisateurs locaux  
Get-LocalUser | Select-Object -First 2
```

## Where

`Where-Object` : Permet de trier des éléments par rapport à une propriété

```Powershell
#Récupère les services qui ont status==Stopped
Get-Service | Where-Object { $_.Status -eq "Stopped" }

# Récupère les UserAD qui ont un nom qui commence par la lettre a ou f
get-aduser -Filter * | where name -like "[af]*"

# Récupère les localUser qui ont "admin" dans leur nom
get-localuser | where name -like "*admin*"
```

## Utiliser les méthodes d'un objet

```powershell
# Utilise la méthode Stop() de l'objet service qui s'appelle Spooler
(Get-Service -name Spooler).Stop()
```

```powershell
# Affiche les methodes et propriétés de LocalUser
Get-LocalUser | get-member
```
## Les Pipes

```powershell
# Affiche les nom,status et linkspeed des interfaces net qui sont UP
Get-NetAdapter | where status -like Up | select name,status,LinkSpeed 
```

## Format

Le __format__ est toujours à la fin et convertit en string les données

`Format-Table` , `Format-List` , `Format-Wide`

```Powershell
# Récupère les ADuser ainsi que leurs propriétés department et city qui sont actifs et affiche en format list les propriétés name et enabled
get-aduser -Filter * -Properties department,city | where {$_.Enabled -like "true"} | format-list Name,Enabled
```

## Autres

Afficher des fichiers/dossiers :  

```powershell
Get-ChildItem
Get-ChildItem -file -recurse
```
Compter les éléments :

```powershell
# Mesure le poids en moyenne de tous les fichiers du Partage
Get-ChildItem -file -path "\\CD01\Partage" -recurse | measure Length -Average
```
## ????

```powershell
Get-ChildItem \\cd01\Partage\Depot\CLI01\ | where {$_.length -gt 3KB -and $_.length -lt 20KB} | select name,@{n="length";e={($_.length /1KB).ToString('N2')}} | sort name -Descending
```
`get-acl M:\2022 | format-list` pour voir la liste des ACL sur le dossier 2022 dans M:
`set-acl` pour changer les droits

# Variables

```powershell
$nom="nom"
$age=18
[string]$name="gerard"
[int]$date=2000
```

# Boucles

## While

```powershell
While ($x –ne "q" ) {
$x = Read-Host " Veuillez faire un choix "
}
```

## Do While

```powershell

Do {
$x = Read-Host " Veuillez faire un choix "
} While ($x –ne "q" )

Do {
$x = Read-Host " Veuillez faire un choix "
} Until ($x –eq "q" )
```

## Foreach

```powershell
$liste = Get-AdUser –Filter *
Foreach ( $i in $liste) {
Write-Host "Le nom de l’utilisateur est "$i.name
Write-Host "Le prénom de l’utilisateur est "$i.surname
}
```

# Switch

```powershell
Switch ($AdGroup){
"User" {Write-Host "Le groupe est Utilisateur"}
"Administrator" {Write-Host "Le groupe est Admin"}
Default {Write-Host "Le groupe n’est pas valide"}
}
```

```powershell
Do {
    if ($x -gt 10){
        Switch($x){
            ‘11’ {Write-Host "La valeur est 11"}
            ‘12’ {Write-Host "La valeur est 12"}
        }
    }   
else { $x = Read-Host "Veuillez saisir une valeur supérieure à 10" }
} while ($x –lt 100)
```