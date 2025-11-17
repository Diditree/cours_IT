# Gestion des utilisateurs

`id nomDuUser`

`/etc/passwd` : fichier qui contient les utilisateurs  

1 ligne par user, 7 champs par lignes séparés par des __`:`__    

Structure d'une ligne :  
__login__:__x__(anciennement le mdp):__UID__:__GID__(groupe principal du user):__champ commentaires GCOS__:__repertoire personnel__:__shell par défaut__    

les mdps sont maintenant stockés dans `/etc/shadow`  

`/etc/default/useradd` : options par défaut utilisées dans `user add`  

`/etc/login.defs` : autres options par défaut pour `user add`

```bash
user # useradd nomDuUser -u UID -g Groupe principal -G Groupes secondaires -c "commentaire" -md(m=makeDir d=chemin) /home/loginDuUser -s(shell) /bin/shell 

     # usermod (mêmes options)

     # userdel -r (supprime le /home/directory)

passwd # permet de gérer le password
```


## UID

0 = root  
1 à 999 = comptes systèmes(services,daemons)  
999+ = comptes users standards

## Verouillage de MDP ( desactiver le compter ?)

`passwd -l` : lock le compte  
`passwd -u` : unlock le compte

`chage -d0` : change le password à la prochaine connexion

## User par défaut

`/etc/skel` : dossier user par défaut (sera copié dans un /home/directory à la création d'un user)

## Groupes

`/etc/group` : groupes  
1 ligne par groupe, 4 champs par lignes séparés par des __`:`__ 

__nomDuGroupe__:__x__(password mais jamais demandé):__GID__:__membres qui ont ce groupe en groupe secondaire__  

0 = root  
1 à 999 = groupes système   
999+ = groupes users standards  

```bash
group   # groupadd nomDuGroupe -g GID

        # groupmod -g GID -n nouveauNom ancienNom 

        # groupdel nomDuGroupe

```
Commandes orientées user :  

- ajouter un user au groupe principal : `useradd -g group username`(usermod pour modifier)  
- ajouter un user au groupe secondaire : `useradd -G group username`(usermod pour modifier)

__ne pas oublier l'option -a (append)__ 


Commandes orientées groupes :  

- ajouter au groupe : `gpasswd -a username`

- retirer du groupe: `gpasswd -d username`  