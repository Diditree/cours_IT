# Création du dossier
New-Item -ItemType Directory -Path "D:\Test"

# Partage
New-SmbShare -Name Test -Path "D:\Test\" -FullAccess "Administrateurs" -ReadAccess "Utilisateurs"



# netshare