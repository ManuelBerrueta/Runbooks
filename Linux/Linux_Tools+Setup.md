# Linux Tools + Setup  
  
## Reverse Engineering + Exploit Dev  
Binwalk  
Binary Ninja  
Ghidra  
Beyond Compare  
GEF  
- https://gef.readthedocs.io/en/master/  
  
Pwntools  
- https://github.com/Gallopsled/pwntools  
  
------  
  
## Penetration Testing  
Metasploit  
Burp Suite  
ZAP  
  
------  
  
## Dev work  
Golang  
Python3  
  
### Fedora  
```shell
sudo dnf groupinstall "Development Tools" "Development Libraries"
```  
  
### Ubuntu  
```shell
sudo apt install build-essential
```  
  
------  
  
## Other Essential Tools  
Wireshark  
  
------  
  
## Virtualization Software  
VMware Workstation  
Oracle's VirtualBox  
  
------  
  
## Setup  
**Add ll funcionality**
```bash
echo "alias ll='ls -al'" >> ~/.bashrc
```
  
## VM Setup  
### Hyper-V  
#### Fedora  
- https://secanablog.wordpress.com/2018/10/24/enhanced-session-mode-under-fedora-28/  
- https://github.com/secana/EnhancedSessionMode  
  
**If neverending popup `Authentication is required to access the pc/sc daemon`:**
```shell
systemctl stop pcscd.socket
systemctl stop pcscd
systemctl disable pcscd.socket
systemctl disable pcscd.service
```  

**Install Linux tools**
 ```
 linux-tools-generic  
 linux-tools
```