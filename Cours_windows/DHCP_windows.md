# DHCP sous windows

## Notes  


- pour l'étendue préferer choisir l'intégralité des ip et effectuer les exclusions  

## Deployer une etendue DHCP en PowerShell

```powershell

Add-DhcpServerv4Scope -Name "Lan_01" -StartRange 172.23.11.1 -EndRange 172.23.11.254 -SubnetMask 255.255.255.0

Add-DHCPServerV4ExclusionRange -ScopeId 172.23.11.0 -StartRange 172.23.250.1 -EndRange 172.23.250.9


# TODO
Set-DhcpServerv4OptionDefinition -OptionId 3 -DefaultValue 172.23.250.254
Set-DhcpServerv4OptionDefinition -OptionId 6 -DefaultValue 10.35.0.3
# 
```