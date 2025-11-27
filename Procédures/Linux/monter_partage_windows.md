# Accéder à un partage windows depuis LINUX

https://www.it-connect.fr/monter-un-partage-cifs-sous-linux/

- Installer cifs-utils
- Créer un fichier sur /mnt (là où on va monter le partage)
- 
- `sudo mount -t cifs //Pc-Windows/Partage /mnt/partage -o username=user,password=password` : montage de type cifs , les options sont l'username et le password (indiquer un compte qui a les droits pour accéder au partage )