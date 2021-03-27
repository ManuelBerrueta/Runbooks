### Switch to super user from current shell
```sh
sudo -s
```

### Copy / Pasta Magic
```sh
cat <fileOfInterest> | base64
```
```
echo "<base64Output>" | base64 -d > <fileOfInterest>
```sh
# Using compression  
cat <fileOfInterest> | gzip | base64
# Decompress
echo "<base64Output" | base64 -d | gzip -d > <fileOfInterest> 
```
### Recent Comms
```sh
netstat -natu
arp -a
```