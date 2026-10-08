# Docker
## ??
__dockerfile__ = explique comment construire l'image
Image = immuable, une même image peut instancier plusieurs conteneurs    
Conteneur = Instance de l'image avec un layer R/W     

Une image docker est composé de plusieurs layers, un layer est un peu comme une "étape", chaque instruction de l'image génère une couche  

## Commandes

`docker create`  
`docker start`  
`docker run` : create + start + configure l'isolation(namespaces, cgroups, réseau)  
`docker stop` : méthode propre pour arrêter    
`docker rm` : Delete  
`docker pull` : télécharge une image
`docker pause` / `docker unpause`         
`docker kill` : différence avec stop est kill = instant    

`docker history`

__Récupérer le code de sortie :__  
```bash
docker inspect myapp --format '{{.State.ExitCode}}'
```
`docker logs myapp`  


`docker create --name myapp nginx:alpine`  
`docker ps -a --filter "myapp"` : vérifie l'état  
`docker run -d --name web nginx:alpine`  