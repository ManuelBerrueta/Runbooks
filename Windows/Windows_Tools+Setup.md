# Windows Tools List
  
#### Reverse Engineering + Exploit Dev
Binwalk  
Binary Ninja  
Ghidra  
-- Register msdia140.dll   
IDA  
dnSpy  
WinDbg  
x64dbg  
HxD  
FLOSS  
PE Bear  
Beyond Compare  

------  
#### Penetration Testing
Burp Suite  
ZAP  

------
#### Dev Tools
Golang  
Python3  
VSCode
- Install extension list
Visual Studio
WSL2  

------
#### Other Essential Tools  
Wireshark  
Sysinternals  
Windows Terminal Dev
Steam  

------
#### Virtualization Software
VMware Workstation  
Oracle's VirtualBox  
Microsoft Hyper-V  

------
#### Comms
Discord  
Slack  
Teams  

------
#### Setup
**Map WSL2 Drive**  
- In File Explorer type "\\wsl$"  
- Right click on Ubuntu (or whatever distro) and select "Map network drive..."   

**WSL Issues**
```powershell
wsl --shutdown
wsl
```  

------  
### VM Setup  
#### Hyper-V  
**Enhanced Session Issues**  
Setup a Windows Hello Pin, so then we can turn of Windows Hello.  
After that, we should be able to use the Enhanced Session  
  
**Connecting from host to Hyper-V VM**  
https://www.andrewconnell.com/allowing-a-host-machine-to-talk-to-guest-vms-in-hyper-v/  
  
**WSL + WSL2 Install**  
Shutdown guest (VM)
You must run the following command from the host OS in Admin PowerShell:
```PowerShell
Set-VMProcessor -VMName Win10VM -ExposeVirtualizationExtensions $true
```
Follow instructions here to install WSL2:  https://aka.ms/wsl2-install  
  
Good reference for WSL2 installation and snapshots:  https://boxofcables.dev/trying-wsl2-on-hyper-v/  
  
**Bridged Switch**  
In Hyper-V Manager select Virtual Switch Manager from the Actions side bar on the right side  
From the "New virtual network switch" menu select "External" for the type and click "Create Virtual Switch"  
Give it a name such "Bridge Switch"  
Connection Type: "External network", and select your NIC  
Click Apply and OK.  
A popup saying "Pending changes may disrupt network connectivity", select yes.  
Now the switch is ready to use and you can change that in the VM settings.  
  
- Reference: 
-- https://www.how2shout.com/how-to/how-to-create-bridge-network-on-hyper-v-windows-10-step-by-step.html  
-- https://www.nakivo.com/blog/hyper-v-network-adapters-what-why-and-how/  
    
------  
Windows Terminal Settings Tips + Reference:  
https://docs.microsoft.com/en-us/windows/terminal/customize-settings/global-settings  
https://www-bleepingcomputer-com.cdn.ampproject.org/v/s/www.bleepingcomputer.com/news/microsoft/hands-on-with-windows-terminal-15s-upcoming-features/amp/?usqp=mq331AQFKAGwASA%3D&amp_js_v=0.1#aoh=16061473873498&csi=1&referrer=https%3A%2F%2Fwww.google.com&amp_tf=From%20%251%24s&ampshare=https%3A%2F%2Fwww.bleepingcomputer.com%2Fnews%2Fmicrosoft%2Fhands-on-with-windows-terminal-15s-upcoming-features%2F  
  