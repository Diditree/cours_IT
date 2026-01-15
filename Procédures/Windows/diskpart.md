- En vue de stocker les documents de travail des utilisateurs, créez un volume E: d’une taille de 6 Go environ en RAID 5 appelé Données
je veux dur Raid 5 donc types de configuration dynamique pour 3 disque
 
`select disk 1`
`convert dynamic`
puis repete
 
si erreur disk en lecture seul :`detail disk` 
si renvoie : 
État en lecture seule actuel : Oui
Lecture seule : Oui
alors `attributes disk` : lecture seule alors :
`attributes disk clear readonly`
 
si erreur le peripherique n'est pas pret :
`online disk`
 
 
`help create`
	`help create volume`
			`help create volume raid`
 
`create volume raid size= 3000 Disk=disk 0,1,2`
!! size= définit la taille allouée sur chaque disque du RAID, pas la taille totale
 
 
3 000 x3 pour 6go au total
ou 10 000 mo fait 10 go
 
si erreur chiffre :
`select volume` 
`delete volume`
	les disk reste dynamic
 
 
puis pour attribution de E
 
`format fs=ntfs quick`
`assign letter=R`
si veut pas formater alors cmd label en dehors de diskpart
 
- Créez un volume miroir de 4 Go, reposant sur les disques 1 et 3, nommé INFOTOOLS. Il ne possèdera pas de lettre de lecteur mais il sera plutôt monté dans le dossier NTFS vide C:\INFO-TOOLS
 
`create volume mirro size=4000 disk= 0,2`
`format fs=ntfs label="Données" quick`
`Get-ChildItem C:\`
`New-Item -Path "C:\INFO-TOOLS" -ItemType Directory`
 
`assign mount=C:\INFO-TOOLS`
 
• Ajouter un disque supplémentaire de10 Go en SCSI depuis le gestionnaire de la VM puis réparer les volumes défectueux depuis la console Gestion des disques
 
`recover`