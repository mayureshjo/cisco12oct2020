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

