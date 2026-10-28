# Docker

## Installation

http://docs.docker.com/engine/install/debian/   


## Notes

Il faut activer les services __containerd__(execute les conteneurs) et __docker__(lien entre le client docker et le moteur dockerd)    

__Image__ = modèle en lecture seule, composé de couches, qui contient l’application et ses dépendances   
Une __image__ est composée de plusieurs layers. Un layer est un peu comme une "étape", chaque instruction de l'image génère une couche    

__Conteneur__ = Partage le noyau de l'hôte, instance en cours d'une image avec un layer RW. Les données écrites dans sa couche d'écriture disparaissent à sa suppression.   

__dockerfile__ = explique comment construire l'image
Image = immuable, une même image peut instancier plusieurs conteneurs         

 

__Docker Engine__ = demon qui exécuter les conteneurs (__dockerd__)

__Registre__ = dépôt d'images comme __Docker Hub__   

## Volume
On utilise des __volumes docker__ pour stocker des données.   
__Volume__ = espace géré par docker, indépendant du conteneur. Utile pour des DB et des données applicatives   
Les volumes sont stockés par défaut dans `/var/lib/docker/volumes/`    

Commandes __volume__ :    
```bash
docker volume create mon_volume

docker run -d --name mon_nginx -v mon_volume:/usr/share/nginx/html nginx # Lance un conteneur nginx en arrière plan qui s'appelle mon_nginx en montant le volume "mon_volume" dans le dossier /usr/share/nginx/html 

# AUTRE EXEMPLE DE DOCKER RUN (en prod ne pas mettre le password en clair comme ci-dessous)
docker run -d --name db \
  -e POSTGRES_PASSWORD=exemple \
  -v donnees-db:/var/lib/postgresql/data \
  postgres:16


docker volume ls  

docker volume inspect mon_volume # info sur mon_volume

docker volume rm mon_volume

docker volume prune # supprime les volumes non utilisés par des conteneurs actifs
```

__Bind mount__ = Dossier ou fichier de l'hôte monté dans le conteneur. Utile pour des fichiers de conf   
__tmpfs__ = Stockage en mémoire, perdu à l'arrêt. Utile pour des données temporaires ou sensibles   

## Réseaux Docker

Permet de connecter plusieurs conteneurs entre eux et avec le monde extérieur  
Différents pilotes de réseau :   
- __bridge__ : réseau privé interne à l’hôte (pilote par défaut).
- __host__ : le conteneur partage la pile réseau de l’hôte, sans isolation réseau.
- __none__ : aucun accès réseau.  


```bash
docker network create mon_reseau

docker run -d --name mon_nginx --network mon_reseau nginx # Lance en arrière plan le conteneur nginx qui s'appelle "mon_nginx" directement connecté au réseau "mon_reseau"

docker network disconnect mon_reseau mon_nginx # Deconnecte le conteneur "mon_nginx_" du réseau "mon_reseau"

docker network ls

docker network inspect mon_reseau

docker network rm mon_reseau

docker network prune # supprime les réseaux  non utilisés par des conteneurs actifs
```

## Commandes

`docker create`  
`docker start`  
`docker run` `docker run -d --name mon_serv nginx`: create + start + configure l'isolation(namespaces, cgroups, réseau)  
`docker stop` : méthode propre pour arrêter    
`docker rm` / `docker rmi mon_app` : Delete conteneur / delete image  
`docker pull` : télécharge une image
`docker pause` / `docker unpause`         
`docker kill` : différence avec stop est kill = instant    
`docker build -t NOM PATH` : Créer une image NOM à partir d'un __Dockerfile__ qui se situe dans le dossier PATH     
`docker history`
`docker images` : liste les images présentes sur la machine
`docker ps` : voir les conteneurs en cours d'exécution (tous les conteneurs rajouter `-a`)          
`docker exec -it mon_app CMD` : execute une commande dans un conteneur   

`docker system prune`  

`docker events`   

Push une image qu'on souhaite partager vers un registre :  
```bash
docker tag mon_app mon_compte/mon_app:latest
docker push mon_compte/mon_app:latest
```

__Récupérer le code de sortie :__  
```bash
docker inspect myapp --format '{{.State.ExitCode}}'
```
`docker logs myapp`  


`docker create --name myapp nginx:alpine`  
`docker ps -a --filter "myapp"` : vérifie l'état  
`docker run -d --name web nginx:alpine`  

## DOCKERFILE

Pour l'écriture d'un __dockerfile__ placer les instructions les moins changeantes en premier (cache des couches), ne pas exécuter le processus en root, utiliser un fichier .dockerignore  
Moins changeantes = instructions dont le résultat varie rarement d'un build à l'autre    
Cache = Lors d'un __docker build__, chaque instructions du __dockerfile__ produit une couche. Docker met ces couches en caches, si une instruction et son contexte n’ont pas changé depuis le build précédent, la couche est réutilisée.   

Exemple de dockerfile :  
```dockerfile
FROM debian:12
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
```   

```dockerfile
FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
USER nobody
CMD ["python", "app.py"]
```   
   
## Docker Compose  

__Docker Compose__ définit et lance plusieurs conteneurs en une seule commande à partir d'un fichier __YAML__ : `compose.yaml` au lieu de plusieurs `docker run`  