# Windows Tools List
**This is a tool list that I use in most of my machines  
  
## Reverse Engineering + Exploit Dev  
Binwalk  
Binary Ninja  
Ghidra  
IDA  
dnSpy  
WinDbg  
x64dbg  
HxD  
FLOSS  
PE Bear  
Beyond Compare  

------
  
## Penetration Testing
Burp Suite  
ZAP  

------
  
## Dev work
Golang  
Python3  
VSCode
- Install extension list
Visual Studio
WSL2  

------

## Other Essential Tools
Wireshark  
Sysinternals  
Windows Terminal Dev
Steam  
------

## Virtualization Software
VMware Workstation  
Oracle's VirtualBox  
Microsoft Hyper-V  

------

## Comms
Discord  
Slack  
Teams  

------
  
## Setup
**Map WSL2 Drive**  
- In File Explorer type "\\wsl$"  
- Right click on Ubuntu (or whatever distro) and select "Map network drive..."  
  
**WSL Issues**
```powershell
wsl --shutdown
wsl
```  

------
  
## VM Setup  
### Hyper-V  
**Enhanced Session Issues**  
Setup a Windows Hello Pin, so then we can turn of Windows Hello.  
After that, we should be able to use the Enhanced Session  
  
**WSL + WSL2 Install**  
Shutdown guest (VM)
You must run the following command from the host OS in Admin PowerShell:
```powershell
Set-VMProcessor -VMName Win10VM -ExposeVirtualizationExtensions $true
```
Follow instructions here to install WSL2:  https://aka.ms/wsl2-install  
  
Good reference for WSL2 installation and snapshots:  https://boxofcables.dev/trying-wsl2-on-hyper-v/  
  