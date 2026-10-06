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

__is__  (à dig)  



## Condition

```python
if condition:
    # code
elif autre_condition:
    # code
else:
    # code
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
```
for number in numberss:
    print(number)
```

Si on veut l'index et sa valeur:
```
for index, number in enumerate(numbers):
    print(index, number)
```



```
if "01" in numbers:
    print("01 présent")
```

## Tuples

Comme les listes mais immutable

```
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