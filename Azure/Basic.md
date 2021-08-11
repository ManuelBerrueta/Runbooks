# Basic Azure Powershell Commands

```Powershell
Connect-AzAccount
```

```Powershell
Connect-AzAccount
```

```Powershell
Select-AzSubscription -SubscriptionId <TargetSubID>
```

List all resource groups available in the current subscription
```Powershell
Get-AzResourceGroup
```

------  

# Secrets

### Deleting secrets:
```sh
az keyvault secret list --vault-name myvault --query [].id | jq -r .[] | xargs -rtL1 az keyvault secret delete --id
# wait a bit, or just enumerate deleted secrets to check if they are ready; maybe even just run: sleep 5s
az keyvault secret list-deleted --vault-name myvault --query [].recoveryId | jq -r .[] | xargs -rtL1 az keyvault secret purge --id
```
**Source:**https://heaths.dev/tips/2020/07/30/azure-cli-in-bash.html


## Create secure str var
```Powershell
[SecureString]$secretvalue = Read-Host -Prompt "Enter secret str" -AsSecureString
```  

### Set the secret (secure str var) in an Azure Key Vault
```Powershell
$secret = Set-AzKeyVaultSecret -VaultName "<Your-keyvault>" -Name "<SecretName>" -SecretValue $secretvalue
```  

## List the secrets in an Azure Key Vault
```Powershell
Get-AzKeyVaultSecret -VaultName "<NameOf-keyvault>"
```  

## Retrieve Secrets from a Key Vault
```Powershell
$secret = Get-AzKeyVaultSecret -VaultName "<Your-keyvault>" -Name "<SecretName>"  
```  

### Print retrieved secret as plaintext
```Powershell
Write-Host "Retrieved Secret Value: " $secret.SecretValueText
```

## Create a x.509 Certificate in Key Vault
### First create a cert policy
```Powershell
$policy = New-AzKeyVaultCertificatePolicy -SubjectName "CN=<Name>" -IssuerName Self -ValidityInMonths 12
```  
### Add certificate to the key vault
```Powershell
Add-AzKeyVaultCertificate -VaultName "<Your-keyvault>" -Name "<NameTheCertificate>" -CertificatePolicy $policy
```  

### Verify Certificate Creation (Run this cmd until statuts == completed)  
```Powershell
Get-AzKeyVaultCertificateOperation -VaultName "<Your-keyvault>" -Name "<NameTheCertificate>"
```  

## Retrieve public key details from the certificate  
```Powershell
Get-AzKeyVaultCertificate -VaultName "<Your-keyvault>" -Name "<NameOfCertificate>"
```

## KQL
https://docs.microsoft.com/en-us/azure/data-explorer/kql-quick-reference
https://techcommunity.microsoft.com/t5/azure-data-explorer/azure-data-explorer-kql-cheat-sheets/ba-p/1057404