# Powershell

Ctrl + espace pour voir toutes les options d'une commande  

`Update-help -SourcePath \\chemin\vers\aide\PowerShell -UIculture en-US -credential <login>`  


`Get-help command -showWindow` : ouvre une fenêtre avec les infos de la commande (on y retrouve aussi des exemples)  
`Get-help command -examples` : montre des exemples d'utilisations  


`Get-command` : permet de découvrir les commandes disponibles  
`Get-Command get-*` :  Affiche toutes les commandes commençant par le verbe get  
`Get-Command *printer*` : Affiche toutes les commandes contenant la chaîne de caractères printer  
`Get-Command new-*user*` : Affiche toutes les cmdlets commençant par new ET contenant la chaîne de caractères use  


https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/where-object?view=powershell-7.5

`get-localuser | where-object name -like "*admin"` : permet de récupérer les méthodes qui contiennent "admin"

Exemple de pipe : `Get-NetAdapter | select name,status,LinkSpeed | where status -like Up` ; récupère les netadapter en affichant que leurs noms,status,linkspeed et qui ont le status "Up"

`$_.` $_ est un équivalent à this dans les langages de programmation et . fait référence aux methodes (ballon.rebondir par exemple)

`Get-NetAdapter | Select Name,Status,LinkSpeed | Where -FilterScript {$_.Status -like "Up" -and $_.LinkSpeed -gt "100 Mbps"} veut dire`

Formatage: FL(formatList), FW(Format-Wide) ne traite qu'une seule propriété  

On met le formatage en dernier car celui ci convertit en string les données  


/////////////////////////


`get-acl M:\2022 | format-list` pour voir la liste des ACL sur le dossier 2022 dans M:
`set-acl` pour changer les droits