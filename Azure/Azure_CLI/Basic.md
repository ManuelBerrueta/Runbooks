# Basic Azure CLI Commands

```sh
az login
```   
  
```sh
az group list
```   

```sh
az account list | grep -B 16 -A 8 -i "<target>"
```   
```sh
az account list -o table
```

## Creat a VNet
```sh
az network vnet create -g "<ResourceGroupName-rg>" -n "<NewVnetName-vnet>" --address-prefix 10.0.0.0/16 --subnet-name <NameOfNewSubnet> --subnet-prefixes 10.0.0.0/24
```  
