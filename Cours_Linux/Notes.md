# Notes



`mkdir -vp ./{bin,tp/{bourne,kornshell,divers/{sources,lib,executables}}}`


Inode: __lien physique(hardlink)__ ont le même inode, __lien symbolique(softlink)__ n'ont pas le même inode  

On ne peut pas faire un lien physique d'un FileSystem à un autre  

Le __lien symbolique__ est une sorte de "raccourci"  

Un __lien symbolique__ peut être d'une partition à une autre (contrairement au lien physique)

## Notes install Debian

workstation : custom, 2proc , 4096 RAM, bridged  
deb: LVM > tout partionner > gestionnaire de paquet : ftp.fr.debian.org  

pour les partitions en manuel : configurer le gestionnaire de volumes (LVM)