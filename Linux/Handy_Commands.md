### Switch to super user from current shell
```sh
sudo -s
```

### Get dir size
Use **d**isk **u**sage utility
```sh
du -sh /target/dir/path
```

### Get Linux Version
```
lsb_release -a
hostnamectl
uname -r
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