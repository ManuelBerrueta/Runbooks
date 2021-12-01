```sh
Valid scopes are management group, subscription, resource group, and resource, for example
   management group:  /providers/Microsoft.Management/managementGroups/MyManagementGroup
   subscription:      /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333
   resource group:    /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup
   resource:          /subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM
     az policy assignment create --scope \
        "/providers/Microsoft.Management/managementGroups/MyManagementGroup" \
            --policy {PolicyName} -p "{ \"allowedLocations\": \
                { \"value\": [ \"australiaeast\", \"eastus\", \"japaneast\" ] } }"
```
### Assign to RG

az policy assignment create --scope \
    "/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup" \
    --policy {Policy} \
    --name myPolicyAssignmentName \
    --location westus \
    --assign-identity

# Reference: https://docs.azure.cn/zh-cn/cli/policy/assignment?view=azure-cli-latest