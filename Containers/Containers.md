# What is a container?
Simply put, a container is nothing more than an isolated process that leverages [kernel namespaces and cgroups](https://medium.com/@saschagrunert/demystifying-containers-part-i-kernel-space-2c53d6979504)

# What is a container image?
 When the container is running it uses a isolated custom filesystem provided by the container image. Since the image contains the container's filesystem, it must contain everything needed to run an application - all dependencies, configuration, scripts, binaries, etc. The image also contains other configuration for the container, such as environment variables, a default command to run, and other metadata.

 ## Reference  
 [Creating a container from scratch with Go](https://youtu.be/8fi7uSYlOdc)

 **Sourced from Docker's tutorial**

## Container Terminology
https://developers.redhat.com/blog/2018/02/22/container-terminology-practical-introduction#system_containers