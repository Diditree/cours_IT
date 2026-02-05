# Apache2 intranet

Bien penser au DNS  

- Virtual Host : fichier de config qui définit un site
- DocumentRoot : dossier où sont les fichiers html/css/js...
- ServerName : domaine 
- Module : fonctionnalités à activer
- MPM : comment apache gère les requetes
- Logs
 

 ## ??

Le repo site statique se situe à : `var/www/dimitri03.infra.tld`  

Créer le virtualhost ici : `/etc/apache2/sites-available`

```
<VirtualHost *:80>
    ServerName monsite.local
    DocumentRoot /var/www/dimitri03.infra.tld

    <Directory /var/www/dimitri03.infra.tld>
        Options -Indexes +FollowSymLinks
        AllowOverride None
        Require all granted
    </Directory>

    ErrorLog ${APACHE_LOG_DIR}/monsite-error.log
    CustomLog ${APACHE_LOG_DIR}/monsite-access.log combined
</VirtualHost>

```

commandes utiles :

`sudo a2ensite monsite.conf` : Active le site
`sudo apache2ctl configtest` : Teste la synthaxe
