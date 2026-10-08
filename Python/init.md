# Python

## Types 
- int
- float
- str
- bool
- None (un peu comme null)  

Pour convertir : 
```python
int()
float()
str()
bool()
```

__f-strings__ :  

```python
age = 25
name = "Alice"

message = f"{name} a {age} ans"

print(message)
```

## Opérateurs
- +
- -
- *
- /
- // (divison entière)
- ** (puissance)
- %

Comparaison : == , != , > , < , >= , <=  

&& = and  
|| = or  
! = not  

`is` , `is not` = compare si ils sont le même objet



## Condition


IF/ELIF:   
```python
if condition:
    # code
elif autre_condition:
    # code
else:
    # code
```

MATCH/CASE(switch)

```python
    def decrire_feu(couleur):
        match couleur:
            case "vert":
                return "Passez"
            case "orange":
                return "Ralentissez"
            case "rouge":
                return "Arretez-vous"
            case _:
                return "Couleur inconnue"
```

## List

Equivalent des arrays

```python
numbers = ["1", "2", "3"]
print(numbers[0])

# Modifier
numbers[1] = "02"
# Ajoute
numbers.append("04")
# Retire
numbers.remove("04")
# Retire et return
numbers.pop()
# .lenght
print(len(numbers)) 
```

### Parcourir les list


Boucle for:
```python
for number in numberss:
    print(number)
```


__Enumerate__ (ForEach)  
Si on veut l'index et sa valeur:
```python
for index, number in enumerate(numbers):
    print(index, number)
```
```python
if "01" in numbers:
    print("01 présent")
```

## List comprehension

Liste comprehension : liste créé à partir d'un itérable(une autre liste dans l'exemple ci dessous)   
Créer une nouvelle liste qui contient uniquement les serveurs dont le nom commence par web :   
```python
servers = ["web01", "web02", "db01", "web03"]

web_servers = []

for server in servers:
    if server.startswith("web"):
        web_servers.append(server)

# Résultat de web_servers = ['web01', 'web02', 'web03']

```


Autre exemple : 


```python
numbers = [1, 2, 3, 4, 5]

squares = [number ** 2 for number in numbers]
# Résultat de squares = [1, 4, 9, 16, 25]
```





## Tuples

Comme les listes mais immutable

```python
coordinates = (48.8566, 2.3522)
server = ("web01", "192.168.1.10", 443)
```

## Sets
Utile pour 
```python

allowed_ips = {
    "10.0.0.10",
    "10.0.0.20",
    "10.0.0.30"
}

observed_ips = {
    "10.0.0.10",
    "10.0.0.30",
    "10.0.0.99"
}

unauthorized = observed_ips - allowed_ips

print(unauthorized)
# va afficher {'10.0.0.99'}
```

## Dictionnaire / dict

```python
server = {
    "hostname": "web01",
    "ip": "192.168.1.10",
    "port": 443,
    "online": True
}

print(server["hostname"])

if "port" in server:
    print("Port configuré")


# get port
print(server.get("port"))
# get port si il n'existe pas alors 80
print(server.get("port", 80))
```
## Slicing

```python
sequence[:stop]     # Commence à 0 et s'arrête à stop (exclu)
sequence[start:]    # Commence à start et va jusqu'à la fin
sequence[::step]    # Prend tout avec un pas spécifique
sequence[:]         # Copie complète de la séquence

#
# EXEMPLE
#
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

print(numbers[2:5])   # [2, 3, 4]
print(numbers[:4])    # [0, 1, 2, 3]
print(numbers[5:])    # [5, 6, 7, 8, 9]
print(numbers[::2])   # [0, 2, 4, 6, 8] (un élément sur deux)

```

## Fonctions

Synthaxe  
```python
def nom_de_la_fonction():
    print("Hello !")

def nom_de_la_fonction(nom):
    print(f"Hello, {nom} !")

nom_de_la_fonction = lamba x,y: x * y
print(nom_de_la_fonction(4,5))
```

Fonction typée : 

```python
def add(a: int, b: int) -> int:
    return a + b
```

```python
def get_servers() -> list[str]:
    return ["web01", "web02", "db01"]
```

Si le nombre de paramètres est variable :   
```python
def get_saucisses(*saucisses):
      for saucisse in saucisses:
        print(saucisse)
```
voir __*kwargs__  