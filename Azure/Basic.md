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