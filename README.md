# CRE 

<img src="cre.png">

## namespace and cgroups in containers by Docker 

<img src="cgroups.png">

## Docker access by a non root user  troubleshooting 

<img src="userdocker.png">

## checking resource consumption of containers

<img src="stats.png">

## Restricting RAM in container 

```
 docker  run -d --name ashuc2  --memory 400M  alpine ping google.co
 
```

## Restricting CPu in containers

```
  423  docker run -d --name ashuc3  --cpu-shares 60  alpine ping fb.com 
  424  docker run -d --name ashuc4 --cpuset-cpus=1   --cpu-shares 60  alpine ping fb.com 
```

## Link for resource management 

[Ram and CPU] ('https://docs.docker.com/config/containers/resource_constraints/')


# Dockerfile with Multiapp 

<img src="multiapp.png">

## after building 

```
599  docker  run -d --name ashuc2  -p 9999:80  -e x=project1  ciscowebapp:12102020  
  600  docker  run -d --name ashuc3  -p 9991:80  -e x=project2  ciscowebapp:12102020  
  601  docker  ps
  602  curl https://ipinfo.io/json 
  603  docker  run -d --name ashuc4  -p 9992:80  -e x=project3  ciscowebapp:12102020  
  604  docker  ps

```

# Docker image registires 

<img src="reg.png">

## image name reality 

<img src="imgname.png">

