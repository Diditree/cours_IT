# SSH sur Linux  

Pour plus d'infos : https://www.ssh.com/academy/ssh  

`ssh-keygen`  
home/user/.ssh  

id_rsa = privée  
id_rsa.pub = publique  


## Copier une clé publique

`ssh-copy-id USER@IP` : Génère un fichier `authorized_keys` dans $HOME/.ssh qui copie le `id_rsa.pub` généré avec `ssh-keygen` sur le client

Pour attribuer la clé à root :

```bash
mkdir /root/.ssh
chmod 700 /root/.ssh
cp /home/admin/.ssh/authorized_keys /root/.ssh
```