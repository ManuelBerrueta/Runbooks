# Common Nmap Scans

# Initial Recon

## Initial Host Discovery using range of IP Addresses
### .1-.24 excluding ip 192.168.1.0
```
nmap 192.168.1.1-24 --exclude 192.168.1.0
```  
### Entire subnet
```
nmap 192.168.1.0/24
```  
### range using wildcard
```
nmap 192.168.1.*
```  
### ping scan
```
sudo nmap -sP 192.168.1.0/24
```  

# Fast scans
```
nmap -F 192.168.1.1
```  
```
nmap -T5 192.168.1.0/24
```  

# Targeted IP Addresses using lists + servics and versions
```
sudo nmap -sV -iL ip_list.txt
```  
```
sudo nmap -sV -iL ip_list.txt --excludeFile excluded_ip_list.txt
```
### Show only open ports
```
nmap --open 192.168.1.1
```

# Find if host is protected by firewall
```
sudo nmap -sA 192.168.1.1
```
# Scan host protected by firewall
```
sudo nmap -PN 192.168.1.1
```

# Local host report
```
nmap --iflist
```

# Scan all ports
```
sudo nmap -sV 192.168.1.1 -p-
```
# Scan Common Ports
```
sudo nmap -sV 192.168.1.1 --top-ports
```
# Scan Specific Port
```
sudo nmap -sV 192.168.1.1 -p 80
```

# OS Scan
```
nmap -v -O --osscan-guess 192.168.1.1
```

# Vulnerability scans
```
nmap -Pn --script vuln 192.168.1.1
```
```
nmap -sCV 192.168.1.1
```

# Additional info
-sV : version detection; -PN : no ping ; -sS Stealth ; -sT 3Way OPEN?
-sA send ACKs-sU : UDP scan ; -sn host discovery only; no port scan
-p#s: only scan port#s; –top-ports # : scan only # top ports
-v : verbose output; -T 0-5 scan speed 0=slowest 5=fastest
-oN | -oX | -oG <file>: output to file in Normal, XML or grepable.
-n Do not DNS name resolution (faster)
ndiff priorScan newScan : shows diff between 2 scans


## Reference
https://www.cyberciti.biz/security/nmap-command-examples-tutorials/

