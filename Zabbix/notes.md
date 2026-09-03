# ZABBIX
# Concepts && Définitions
## Termes
- __groupes__ : ensemble d'éléments similaires permettant un conf commune
- __proxy zabbix __: agent intermédiaire permettant de regrouper la collecte d'agent dédié (ex: sur 2 réseaux qui ne doivent pas communiquer entre eux, __proxy zabbix__ enverra directement à __zabbix server__)
- __sonde zabbix__ : instance ou composant déployé pour surveiller
- __évènement(s)__ : seuil ou déclencheur activant une action
- __trigger__ : déclenchement ou franchissement d'un seuil d'alerte
- __webhook__ : transmission d'informations ou d'action à d'autres app
## Agents 
- __agent actif__ : l'agent initie et réalise la collecte des données(sans intervention du serveur zabbix)
- __agent passif__ : l'agent collecte les données à la demande du serveur zabbix
- __macro__ : variable définie pour être réutilisée (ex : {$HOSTNAME})
- __LLD__ (low level discovery) : découverte automatique des éléments à surveiller
## Templates
- __host template__ : modèle réutilisable pour configurer le monitoring de hosts spécifiques et similaire
- __intégrations__ : plugin permettant la connexions à d'autres outils (docker, clouds..)
- __remédiation__ : lancer des actions pour résoudre des problèmes remontés par la surveillance (ex: restart de services)
- __authentification__ : zabbix permet de coupler son authentification à LDAP et d'autres SSO