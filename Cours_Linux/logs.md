# logs

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