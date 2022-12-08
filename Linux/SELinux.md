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


# Reference Documentation
- https://docs.oracle.com/en/operating-systems/oracle-linux/selinux/selinux-AboutAdministeringSELinuxinOracleLinux.html#ol-selinux-1
- https://www.digitalocean.com/community/tutorials/an-introduction-to-selinux-on-centos-7-part-1-basic-concepts
- https://www.tecmint.com/query-audit-logs-using-ausearch-tool-on-centos-rhel/
