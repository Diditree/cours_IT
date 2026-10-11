# Docker
## ??

Il faut activer les services __containerd__(execute les conteneurs) et __docker__(lien entre le client docker et le moteur dockerd)    

__dockerfile__ = explique comment construire l'image
Image = immuable, une même image peut instancier plusieurs conteneurs    
Conteneur = Instance de l'image avec un layer R/W     

Une image docker est composé de plusieurs layers, un layer est un peu comme une "étape", chaque instruction de l'image génère une couche  

## Volume
On utilise des __volumes docker__ pour stocker des données. Utiliser les commandes :  

```bash
docker volume create mon_volume

docker run -d --name mon_nginx -v mon_volume:/usr/share/nginx/html nginx # Lance un conteneur nginx en arrière plan qui s'appelle mon_nginx en montant le volume "mon_volume" dans le dossier /usr/share/nginx/html 

docker volume ls  

docker volume inspect mon_volume # info sur mon_volume

docker volume rm mon_volume

docker volume prune # supprime les volumes non utilisés par des conteneurs actifs
```

## Réseaux Docker

Permet de connecter plusieurs conteneurs entre eux et avec le monde extérieur  
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

Push une image qu'on souhaite partager vers un registre(Docker Hub dans l'exemple) :  
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

Exemple d'un dockerfile :  
```dockerfile
FROM debian:12
RUN apt-get update
RUN apt-get install -y python3 python3-pip
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

```