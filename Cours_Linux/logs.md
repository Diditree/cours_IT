# logs


journalctl | grep "session opened"

## journald

conf: /etc/systemd/journald.conf  
service : systemd-journald.service  
logs stockés dans une BDD : commande __journalctl__ > /var/log/journal  

```bash
journalctl
-u # unité (ex: -u sshd)
-p # niveau de gravité
-b # n° de redémarrage (ex: -b 1)
-e # derniers logs affichables à l'écran  
-g # grep dans les les logs
-n # number lines
```

## rsyslog

conf = /etc/rsyslog.conf  
fichier de service : rsyslog.service  
stock les logs dans des fichiers textes  

8 niveaux de gravité  



## exemples

Récupérer les dernières sessions connectées :   
`journalctl -g "password:session" -S "2 days ago"`   
`journalctl | grep "session opened"`   

Rechercher dans les fichiers rsyslog des informations sur le disque sda :  
`grep "sda" /var/log/syslog`