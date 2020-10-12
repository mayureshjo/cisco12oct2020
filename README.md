# Docker getting started 

## DNS understanding 

<img src="dns.png">

## VMS understanding 

<img src="vms.png">

## VM vs Containers

<img src="c1.png">

# OPtions for using containers

<img src="c2.png">

## Install docker 

<img src="dinstall.png">

## Docker Desktop concept 

[Docker Desktop for mac ]  ('https://hub.docker.com/editions/community/docker-ce-desktop-mac')

===
<img src="dd.png">

## Install and start Docker application engine in amazon linux


```
   6  rpm  -q   docker
    7  whoami
    8  sudo  yum  install  docker 
    9  history 
   10  rpm  -q  docker 
   11  docker  version 
   12  sudo  systemctl   start  docker 
   13  sudo  systemctl   status  docker 
```

<img src="dcinstall.png">

===

<img src="dcstart.png">

# Docker architecture 


<img src="dcarch.png">


## Docker image operations 

```
 21  sudo  docker  version 
   22  sudo docker  search  java 
   23  sudo docker  search  python 
   24  sudo docker  search  mysql 
   25  history 
   26  sudo docker  images 
   27  sudo docker  pull  java 
   28  sudo docker  pull  python 
   29  sudo docker  pull  centos 
   30  history 
   31  sudo docker  images
   32  sudo docker  info 
   33  cd  /var/lib/docker
   34  ls
   35  sudo ls 
   36  cd
   37  sudo docker  pull mysql:5.7 
   38  sudo  docker  images
   39  sudo  docker  pull  alpine 
   40  sudo  docker  pull  busybox 
   41  sudo  docker  images
   42  history 
```

