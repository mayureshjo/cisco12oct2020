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

## creating a container

<img src="cc.png">

## checking output of parent process

```
sudo docker  logs  ashuc1
```
## some more operations 

```
 62  sudo docker  ps
   63  sudo   docker  stop   ashuc1  tender_zhukovsky  
   64  sudo docker  ps
   65  sudo docker  ps -a
   66  sudo docker  start  ashuc1
   67  sudo docker  ps 

```


## docker stop / kill and rm 
```
  71  sudo docker  stop   ashuc1
   72  sudo docker  start   ashuc1
   73  sudo docker  ps
   74  sudo docker  kill  ashuc1 
   75  sudo docker  ps -a
   76  clear
   77  sudo docker  ps
   78  sudo docker  ps -a
   79  sudo docker  start  ashuc1
   80  sudo docker  ps
   81  sudo docker  ps -a
   82  sudo docker  rm  b586e896b818   recursing_cannon 
   83  sudo docker  ps -a
   84  sudo docker  ps

```

## Docker child 

<img src="child.png">

# Create custom docker images

<img src="cimages.png">


## Building docker image from dockerfile 


<img src="dockerimg1.png">
