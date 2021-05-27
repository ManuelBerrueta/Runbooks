# CTR
 **ctr pull, unlike Docker, requires the full path to an image**
`sudo ctr image pull docker.io/library/hello-world:latest`
`sudo ctr image ls`
`sudo ctr image ls -q`

`sudo ctr container create docker.io/library/hello-world:latest myContainerId`
`sudo ctr container list`
`sudo ctr container delete myContainerId`

`ctr run docker.io/library/fedora:latest Fedora`

# CRICTL
**crictl Reference:** 
 - https://kubernetes.io/docs/tasks/debug-application-cluster/crictl/
 - https://github.com/containerd/cri/blob/master/docs/crictl.md

# Containerd

# Docker

# kubectl
 `kubectl get nodes -o wide`
 `kubectl get pods -A`

**kubectl Reference:** 
 - https://kubernetes.io/docs/reference/kubectl/overview/
 - https://kubernetes.io/docs/reference/kubectl/cheatsheet/
