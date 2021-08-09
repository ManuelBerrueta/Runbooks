### Create a new resource group
```
az group create --subscription <sub_ID> --location <region> --name <name>
# Example:
az group create --subscription 012345678-d3ad-b33f-abcd-c0ffee123456 --location westus --name myNew-rg
```


### Delete resource group
```
az group delete --subscription <Sub_ID> --name <RG_Name>
```

### List Resource Groups
```
# List all
az group list

# List per region
az group list --query "[?location=='westus']"

# List all succesfully provisioned
```
az group list --query "[?properties.provisioningState=='Succeeded']"
```
```