# Powershell

Ctrl + espace pour voir toutes les options d'une commande  

`Update-help -SourcePath \\chemin\vers\aide\PowerShell -UIculture en-US -credential <login>`  


`Get-help command -showWindow` : ouvre une fenêtre avec les infos de la commande (on y retrouve aussi des exemples)  
`Get-help command -examples` : montre des exemples d'utilisations  


`Get-command` : permet de découvrir les commandes disponibles  
`Get-Command get-*` :  Affiche toutes les commandes commençant par le verbe get  
`Get-Command *printer*` : Affiche toutes les commandes contenant la chaîne de caractères printer  
`Get-Command new-*user*` : Affiche toutes les cmdlets commençant par new ET contenant la chaîne de caractères use  


/////////////////////////


`get-acl M:\2022 | format-list` pour voir la liste des ACL sur le dossier 2022 dans M:
`set-acl` pour changer les droits