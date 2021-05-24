# Fast Initial Recon Scans
### Quick Initial Sweep
```
sudo nmap -n -sP 192.168.0.1-255 --packet-trace
```
```
nmap -F 192.168.1.1
```  
```
nmap -T5 192.168.1.0/24
```  

## Initial Host Discovery using range of IP Addresses
`We use -n to tell nmap not to resolve domain names`
### Full 3-Way Handshake. W/o -p will scan only top 1K ports
```
sudo nmap -n -sT 192.168.0.10 -p 1-65535
```
### .1-.24 excluding ip 192.168.1.0
```
sudo nmap 192.168.1.1-24 --exclude 192.168.1.0
```  
### Entire subnet
```
sudo nmap 192.168.1.0/24
```  
### range using wildcard
```
sudo nmap 192.168.1.*
```  
### ping scan
```
sudo nmap -sP 192.168.1.0/24
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
sudo nmap --iflist
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
sudo nmap -v -O --osscan-guess 192.168.1.1
```

# NSE Scripts
```
nmap -n --script=nbstat 192.168.1.1
```
```
nmap -n --script=smb-enum-users -p 139 192.168.1.1
```
```
nmap --script=ssh-auth-methods 192.168.0.1
```
## Web
```
nmap -n --script=http-robots.txt 192.168.1.1 -p 80
```

## Vulnerability scans
```
sudo nmap -Pn --script vuln 192.168.1.1
```
```
sudo nmap -sCV 192.168.1.1
```

# Additional info
-sV : version detection; -PN : no ping ; -sS Stealth ; -sT 3Way OPEN?
-sA send ACKs-sU : UDP scan ; -sn host discovery only; no port scan
-p#s: only scan port#s; –top-ports # : scan only # top ports
-v : verbose output; -T 0-5 scan speed 0=slowest 5=fastest
-oN | -oX | -oG <file>: output to file in Normal, XML or grepable.
-n Do not DNS name resolution (faster)
ndiff priorScan newScan : shows diff between 2 scans

## NSE Info
The inventory of all nmap scripts are in /usr/share/nmap/scripts/script.db


## Reference
https://www.cyberciti.biz/security/nmap-command-examples-tutorials/

