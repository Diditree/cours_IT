# Notes randoms

cp -rp : copie les liens symboliques


`mkdir -vp ./{bin,tp/{bourne,kornshell,divers/{sources,lib,executables}}}`


Inode: lien physique(hardlink) ont le même inode, lien symbolique(softlink) n'ont pas le même inode  
On ne peut pas faire un lien physique d'un FileSystem à un autre  
Le lien symbolique est une sorte de "raccourci"  
Un lien symbolique peut être d'une partition à une autre (contrairement au lien physique)  