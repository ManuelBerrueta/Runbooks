### Compress a dir contents
```PowerShell
Compress-Archive -Path .\targerDir\* -DestinationPath outFileName.zip
```  

### Web Requests

### Request using OAuth
```PS
$TargetURL = "<https://www.target.com>"
$OAuth_TOKEN = <token>
Invoke-WebRequest -Uri $TargetURL -Method Get -Authentication OAuth -Token
```
**NOTE:** 
We can use `| ConvertFrom-Json -AsHashtable`
Then we can use a loop if you save the output to a variable/object:
```PS
foreach ($obecjtIn in $output_var["val"])
```

```PS
$TargetURL = "<https://www.target.com>"
$OAuth_TOKEN = <token>
$RequestJSONBody = "JSON stuff" | ConvertTo-Json
Invoke-RestMethod -Uri $TargetURL -Method Patch -Authentication OAuth -Token $OAuth_TOKEN -Body $RequestJSONBody -ContentType "applicatrions/json"
```
