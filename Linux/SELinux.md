# What is SELinux?
Security Enhanced Linux (SELinux) provides and implements Mandatory Access Control (MAC) on top of Discretionary Access Control (DAC) that every Linux distro already implements. Thus, it provides a granular way for Administrators to enforce access control on these systems.
- It was developed by the NSA 🤔

## SELinux Modes
SELinux can be in one of 3 possible modes:
-   Enforcing (enforces policy, unauth access is denied and logged)
-   Permissive (Log only)
-   Disabled

## SELinux Configuration
The configuration file is located at `/etc/selinux/config`
This file contains 2 directives: `SELINUX` and `SELINUXTYPE`

**`SELINUX`** directive dictates the SELinux mode (enforcing, permissive, disabled)
**`SELINUXTYPE`** directive determines the type of policy that will be used. 
- Targeted is the default
    - Allows you to customize and fine tune access control permissions
- MLS - Multilevel Security, a more advanced mode which requires an additional package to be installed.

## Basic commands
- `getenforce` and `sestatus` gives you the current SELinux mode
- `setenforce 1` for **Enforing** and `setenforce 0` for **Permissive**
- ausearch
- `sesearch -T -rs -s <label> <policy>`
- `sesearch -A -s <label> <policy>`

---     
## 🏷 Labeling
- Files, processes, ports, etc..., are all labeled with an SELinux context.
- For files and directories, these labels are stored as extended attributes on the file system.
- For processes, ports, etc..., the kernel manages these labels

### Labeling Format
`user` : `role` : `type` : `level (optional)` 

## SELinux Management
### Troubleshooting
`journalctl -b -0`
`sealert -l <guid>`

### Using `semanage`
1. First tell SELinux what's supposed to be
    - `semanage fcontext -a -e <Known Good Type File> <Target Object>`
1. Then set it 
    - `restorecon -vR <Target Object>`

### Changing context
1. **Long Form**
    - `chcon -u <SELinux User> -r <Role> -t <Type> <Target Object / File>`
2. **Short Form** (Since user & role are not relevant in a targeted policy environment)
    - `chcon -t <Type> <Target Object / File> `
3. **By Reference**
    - This leverages a known good file with the right `Type` and applies that `Type` to the target file.
    - `chcon --reference <Known Good Type File> <Target Object / File>`
4. **Restoring to default context**
    - `restorecon -vR <Target Dir>`

### Booleans
Are settings that you can turn on and off
### List
Use `getsebool -a` to list all of them
### Activate a policy
`setsebool -P <boolean_setting_name> 1`

## In Dev environments install:
- setroubleshoot
- setroubleshoot-server
Restart `auditd` after install: `service auditd restart`

---     
# Reference Documentation
- https://docs.oracle.com/en/operating-systems/oracle-linux/selinux/selinux-AboutAdministeringSELinuxinOracleLinux.html#ol-selinux-1
- https://www.digitalocean.com/community/tutorials/an-introduction-to-selinux-on-centos-7-part-1-basic-concepts
- https://www.tecmint.com/query-audit-logs-using-ausearch-tool-on-centos-rhel/
- https://www.redhat.com/en/topics/linux/what-is-selinux
- Malware disabling SELinux [Skidmap Malware Uses Rootkit to Hide Mining Payload](https://www.trendmicro.com/en_us/research/19/i/skidmap-linux-malware-uses-rootkit-capabilities-to-hide-cryptocurrency-mining-payload.html)
- Good reference video from RH: [Security-Enhanced Linux for mere mortals](https://youtu.be/_WOKRaM-HI4)
