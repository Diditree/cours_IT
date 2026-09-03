# Base de données
```bash
apt install -y postgresql
pg_ctlcluster 14 main start
sudo -u postgres psql -c "create database zabbix;"

```