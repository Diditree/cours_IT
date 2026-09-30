$groups = get-adgroup -filter 'name -like "G-*"'

Foreach ( $group in $groups) {
    $group.name
    $user = Get-ADGroupMember -Identity $group
    $user.name

}



# A améliorer correction script import csv :
# Importation des utilisateurs depuis le fichier
$Users = Import-Csv $env:USERPROFILE\desktop\users.csv

# Indication de l'OU global des comptes utilisateurs
$UsersPath = "OU=utilisateurs,OU=DOMFORM,DC=DOMFORM,DC=ad"

# Traitement de tous les objets utilisateurs dans une boucle
foreach ($user in $users) {
    $UserPath = "OU=$($user.Service),$UsersPath" # Déclaration de l'OU selon le service $Full_Name="$($user.prenom) $($user.nom)" $UPN="$($user.SAM_Name)@domform.ad" # Création de chaque compte utilisateur New-ADUser -Name $Full_Name -AccountPassword (ConvertTo-SecureString "Passw0rd" -AsPlainText -force) ` -CannotChangePassword $True -DisplayName $Full_Name -GivenName $user.Nom -enabled $true `
    -Path $userPath -SamAccountName $user.SAM_Name -Surname $user.Nom -UserPrincipalName $UPN
}