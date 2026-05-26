# One Drive

S'il y a trop de fichiers synchronisés ça peut engendrer des lenteurs de synchronisation  

Si on souhaite réparer l'application, il faut modifier l'application __Microsoft 365__ dans les applications installées. 

On peut réinitialiser __One Drive__ : 

[La doc Microsoft](https://support.microsoft.com/fr-fr/office/r%C3%A9initialiser-onedrive-34701e00-bf7b-42db-b960-84905399050c)

- `wsreset.exe` : réinitialise des composants lisés au Microsoft Store et vide le cache de celui ci
- `%localappdata%\Microsoft\OneDrive\onedrive.exe /reset`
- `"C:\Program Files\Microsoft OneDrive\onedrive.exe /reset"`
- `"C :\Program Files (x86)\Microsoft OneDrive\onedrive.exe /reset"`


# Teams

Pour vider le cache __Teams__ il faut supprimer le contenu dans :

- `%LOCALAPPDATA%\Packages\MSTeams_8wekyb3d8bbwe\LocalCache\`
- `%userprofile%\appdata\local\Packages\MSTeams_8wekyb3d8bbwe\LocalCache\Microsoft\MSTeams`
- `%APPDATA%\Microsoft\Teams`


# Outlook
