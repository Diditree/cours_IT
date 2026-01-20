# DHCP (Dynamic Host Configuration Protocol)

## Fonctionnement du DHCP (DORA)  

Le processus DHCP peut être expliqué par l'acronyme __DORA__ pour : __Discover__ , __Offer__ , __Request__ , __Acknowledge__

- Le client DHCP __broadcast__ le paquet __Discover__ , seuls les clients DHCP (agent relai compris) peuvent répondre.

- Le serveur DHCP répond par l'__Offer__ en fourinissant au client une adresse potentielle en unicast

- Le client après avoir reçu le paquet répond en broadcast avec un paquet __Request__ qui va indiquer qu'il accepte l'offre en spécifiant l'ID du serveur, sa mac add (il met l'ID du premier serveur si il y en a plusieurs)

- Le serveur stocke l'adresse IP dans sa DB et répond par un __DHCPACK__(__Acknowledge__) pour indiquer au client qu'il peut s'attribuer l'IP du paquet __Offer__ 

NB : Si le serveur ne peut pas fournir l'adresse il envoie un message __DHCPNACK__ (not acknowledge)  

Les __agents relais__ se trouvent seulement du côté des clients (inutile dans le wan)

Si un client ne peut pas recevoir d'adresse IP il s'attribue une adresse __APIPA__ 169.254.x.x/16 (Automatic Private Internet Protocol Addressing)


## Deployer une etendue DHCP en PowerShell

```powershell

Add-DhcpServerv4Scope -Name "Lan_01" -StartRange 172.23.11.1 -EndRange 172.23.11.254 -SubnetMask 255.255.255.0

Add-DHCPServerV4ExclusionRange -ScopeId 172.23.11.0 -StartRange 172.23.250.1 -EndRange 172.23.250.9

Set-DhcpServerv4OptionDefinition -OptionId 3 -DefaultValue 172.23.250.254

Set-DhcpServerv4OptionDefinition -OptionId 6 -DefaultValue 10.35.0.3

```