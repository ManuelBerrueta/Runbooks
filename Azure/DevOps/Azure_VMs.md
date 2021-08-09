### Query VM Images
Query ALL VM image SKUs for a specific publisher, this works relatively quick
```
az vm image list --publisher <Publisher_Name> --all
#Example"
az vm image list --publisher RedHat --all
```
Filter by version
```
#Example searching for Red Hat 7.9
z vm image list --publisher RedHat --all | grep -C 5 -i "7.9"
z vm image list --publisher RedHat --all | grep -C 5 -i "7_9"
```

This will grab ALL the image SKUs available, thus it may take a while. 
```
az vm image list --all
```
**Reference:**
- https://docs.microsoft.com/en-us/cli/azure/vm/image?view=azure-cli-latest

### VM Creation
Creating Multiple VMs
```
az vm create -n <VM_name> \
--subscription <sub_Name> \
--resource-group <My_Resource_Group> \
--size <VmSize> \
--image <imageName> \
--location westus \
--count <numOfVms> \
--subnet $SUBNETID \
--admin-username <userName> \
--assign-identity [system] \
--ssh-key-values <path_to_SSH_pub_keys>
```
**Note:**
If you pass in both `--vnet-name <vnet_Name>` and `--subnet $SUBNETID` you will get an error. So if you are trying to use a VNET/Subnet from an existing subnet use the command below and pass it in as a Subnet
**Reference**
- https://docs.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest

## Network
Get VM Subnet information
```
export SUBNETID=$(az network vnet subnet show --subscription <sub_Id> --resource-group <RG_Name> --name <Subnet_Name> --vnet-name <Vnet_Name> --query id -o tsv)
```