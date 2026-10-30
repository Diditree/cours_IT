# SSH sur Linux  
fichier de conf : `ssh/sshd_config.f/*conf`  


/etc/ssh/sshd_config

Pour logger des erreurs : `ssh -vvv name@ip`  

Pour plus d'infos : https://www.ssh.com/academy/ssh  

`ssh-keygen`  
home/user/.ssh  

id_rsa = privée  
id_rsa.pub = publique  


`scp identifiant@IP_du_serveur:/etc/eniconf.cfg /tmp` : copier un fichier en ssh : copie /etc/eniconf.cfg dans le /tmp du client ssh  
  
## Copier une clé publique

`ssh-copy-id USER@IP` : Génère un fichier `authorized_keys` dans $HOME/.ssh qui copie le `id_rsa.pub` généré avec `ssh-keygen` sur le client

Pour attribuer la clé à root :

```bash
mkdir /root/.ssh
chmod 700 /root/.ssh
cp /home/admin/.ssh/authorized_keys /root/.ssh
```

## Config (.ssh/config)

```bash
Host NOM
    HostName IP
    User USER
    IdentityFile ~/.ssh/XXXXX
```

## Agent ssh

`ssh-add -l` : liste les agents ssh  
`ssh-agent` : créer un agent  
`ssh-add` : ajoute la clé (voir en dessous)

## Notes

voir `ssh -i` pour redefinir chemin   


On peut utiliser une clé privée pour se connecter à un serveur qui à une clé publique : `ssh -i ~/.ssh/XXXXX user@server`