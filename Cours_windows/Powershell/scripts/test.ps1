# New-ADOrganizationalUnit -Name "Utilisateurs" -Path "DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Direction" -Path "OU=Utilisateurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Finance" -Path "OU=Utilisateurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "RH" -Path "OU=Utilisateurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Informatique" -Path "OU=Utilisateurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Ordinateurs" -Path "DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Postes-Clients" -Path "OU=Ordinateurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Postes-IT" -Path "OU=Ordinateurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Serveurs" -Path "DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Serveurs-Production" -Path "OU=Serveurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Serveurs-Test" -Path "OU=Serveurs,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Groupes" -Path "DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Groupes-Securite" -Path "OU=Groupes,DC=dimitri,DC=lab"
# New-ADOrganizationalUnit -Name "Groupes-Distribution" -Path "OU=Groupes,DC=dimitri,DC=lab"


# $Password = Read-Host "Mot de passe" -AsSecureString

# New-ADUser `
#     -Name "Jean Dupont" `
#     -GivenName "Jean" `
#     -Surname "Dupont" `
#     -SamAccountName "jdupont" `
#     -UserPrincipalName "jdupont@dimitri.lab" `
#     -Path "OU=Direction,OU=Utilisateurs,DC=dimitri,DC=lab" `
#     -AccountPassword $Password `
#     -Enabled $true
# `

# creation d'users



$Password = ConvertTo-SecureString 'P@$$w0rd' -AsPlainText -Force
$Users = @(
    @{Prenom = "Jean"; Nom = "Dupont"; Login = "jdupont"; OU = "Direction" }
    @{Prenom = "Marie"; Nom = "Martin"; Login = "mmartin"; OU = "Direction" }
    @{Prenom = "Pierre"; Nom = "Bernard"; Login = "pbernard"; OU = "Direction" }
    @{Prenom = "Sophie"; Nom = "Leroy"; Login = "sleroy"; OU = "Direction" }
    @{Prenom = "Nicolas"; Nom = "Petit"; Login = "npetit"; OU = "Direction" }

    @{Prenom = "Thomas"; Nom = "Robert"; Login = "trobert"; OU = "Finance" }
    @{Prenom = "Julie"; Nom = "Richard"; Login = "jrichard"; OU = "Finance" }
    @{Prenom = "Paul"; Nom = "Durand"; Login = "pdurand"; OU = "Finance" }
    @{Prenom = "Camille"; Nom = "Moreau"; Login = "cmoreau"; OU = "Finance" }
    @{Prenom = "Antoine"; Nom = "Simon"; Login = "asimon"; OU = "Finance" }

    @{Prenom = "Claire"; Nom = "Laurent"; Login = "claurent"; OU = "RH" }
    @{Prenom = "Emma"; Nom = "Michel"; Login = "emichel"; OU = "RH" }
    @{Prenom = "Laura"; Nom = "Garcia"; Login = "lgarcia"; OU = "RH" }
    @{Prenom = "Sarah"; Nom = "David"; Login = "sdavid"; OU = "RH" }
    @{Prenom = "Chloe"; Nom = "Bertrand"; Login = "cbertrand"; OU = "RH" }

    @{Prenom = "Lucas"; Nom = "Roux"; Login = "lroux"; OU = "Informatique" }
    @{Prenom = "Alexandre"; Nom = "Fournier"; Login = "afournier"; OU = "Informatique" }
    @{Prenom = "Thomas"; Nom = "Girard"; Login = "tgirard"; OU = "Informatique" }
    @{Prenom = "Maxime"; Nom = "Bonnet"; Login = "mbonnet"; OU = "Informatique" }
    @{Prenom = "Hugo"; Nom = "Lambert"; Login = "hlambert"; OU = "Informatique" }
)

Foreach ( $user in $Users) {

    if (Get-ADUser -Filter "SamAccountName -eq '$($user.Login)'") {

        Write-Warning "L'identifiant $($user.Login) existe déjà dans l'AD"
    }

    else {
        New-ADUser `
            -Name "$($user.Prenom) $($user.Nom)" `
            -GivenName $user.Prenom `
            -Surname $user.Nom `
            -SamAccountName $user.Login `
            -UserPrincipalName "$($user.Login)@dimitri.lab" `
            -Path "OU=$($user.OU),OU=Utilisateurs,DC=dimitri,DC=lab" `
            -AccountPassword $Password `
            -Enabled $true
    
        Write-Host "Utilisateur $($user.Login) créé avec succès."   
    }
}













# param(
#     $arg
# )

# $services = Get-Service
# $servicesStopped = $services | Where-Object Status -eq "Stopped" | Sort-Object Name

Get-CimInstance win32_processor
Get-CimInstance win32_ComputerSystem # NAME , MEMOIRE
# $services | Format-table Name, status, StartType
Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -eq "Ethernet" -or $_.InterfaceAlias -eq "Wi-Fi" } | Select-Object IPAddress
Get-LocalUser
Get-DnsClientServerAddress -AddressFamily IPv4 -InterfaceAlias Ethernet | Select-Object ServerAddresses
# Write-Host "arg : " $arg


# # Machine : PC-DEV-01
# OS      : Windows 11 Pro 
# CPU     : ... 
# RAM     : 32 GB
# Disques : ...
# IP      : ...
# DNS     : ...
# Services importants : ...
# Utilisateurs locaux : ...

diskpartition
volume
mappedlogicaldisk
cachememory
memorydevice > systemname
memoryarray
diskdrive
computersystem > name
operatingsystem