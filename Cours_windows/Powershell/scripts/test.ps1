# param(
#     $arg
# )

# $services = Get-Service
# $servicesStopped = $services | Where-Object Status -eq "Stopped" | Sort-Object Name

Get-CimInstance win32_processor
Get-CimInstance win32_ComputerSystem # NAME , MEMOIRE
# $services | Format-table Name, status, StartType
Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -eq "Ethernet" -or $_.InterfaceAlias -eq "Wi-Fi" } | Select-Object IPAddress
Get-LocalUser
Get-DnsClientServerAddress -AddressFamily IPv4 -InterfaceAlias Ethernet | Select-Object ServerAddresses
# Write-Host "arg : " $arg


# # Machine : PC-DEV-01
# OS      : Windows 11 Pro 
# CPU     : ... 
# RAM     : 32 GB
# Disques : ...
# IP      : ...
# DNS     : ...
# Services importants : ...
# Utilisateurs locaux : ...

diskpartition
volume
mappedlogicaldisk
cachememory
memorydevice > systemname
memoryarray
diskdrive
computersystem > name
operatingsystem