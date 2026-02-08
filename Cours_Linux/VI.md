# Notes liées à VI

Sources utiles:
https://blog.stephane-robert.info/docs/admin-serveurs/linux/vim/


## ~/.vimrc
```bash
set nocompatible
set number
set tabstop=2
syntax on
```

## Cheatsheet

```bash
:wq # save and quit
:q! # quits no saving
yy # copier
p # coller
```

## ??

`:g/Dieu/s/Anubis/Isis/g` : Rechercher toutes les lignes contenant Dieu, puis rechercher dans ces lignes le terme Anubis pour le
remplacer par Isis (même si plusieurs Anubis sont présents sur les lignes)  

`:g/Dupont/s//Durand/g` == `:g/Dupont/s/Dupont/Durand/g`  

`:g/Jean/s/Jean/\Ujean/g` : transforme tous les jean en JEAN (grâce à \U)  

https://www.codyhiar.com/blog/using-vims-very-magic-regex-to-format-code/