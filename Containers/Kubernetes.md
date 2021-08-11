# AKS
### SSH into AKS Nodes
```sh
kubectl get nodes -o wide # Gets you the node names
kubectl alpha debug node/<node_name_vmss> -it --image=mcr.microsoft.com/aks/fundamental/base-ubuntu:v0.0.11
```
Reference: [SSH into Azure Kubernetes Service (AKS) cluster nodes](https://docs.microsoft.com/en-us/azure/aks/ssh)

### Daemonsets
In a nutshell a Daemonset is a pod that is ran in all nodes (or some).

#### Damonset Refs
- https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
- https://www.howtoforge.com/create-a-daemonset-in-kubernetes/
- https://medium.com/@patnaikshekhar/initialize-your-aks-nodes-with-daemonsets-679fa81fd20e