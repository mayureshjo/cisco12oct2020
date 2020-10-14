# Docker Socket 

##  Unix Socket -- can't connect. docker engine from Remote Client 

## Configure Docker engine as Tcp socket 

<img src="dockertcp.png">


## Docker client / jump server client 

<img src="dockercli.png">

## Connecting from Mac & Linux client host 

```
export DOCKER_HOST="tcp://DockerHost:2375"

```

## More On docker volumes 

```
 808  docker  volume  ls
  809  docker  volume  inspect  ashuvol1 
  810  docker run -rm -it   -v  ashuvol1:/data   alpine  sh 
  811  docker run --rm -it   -v  ashuvol1:/data   alpine  sh 
  812  docker run --rm -it   -v  ashuvol1:/data:ro    alpine  sh 
  813  history 
  814  docker run --rm -it   -v  ashuvol1:/data:ro  -v  ashuvol2:/data1:rw      alpine  sh 
  815  docker  volume  ls
  816  docker  volume inspect  ashuvol2
  817  ls
  818  pwd
  819  docker run -d  --name web1  -p 1244:80 -v  /home/ec2-user/ashuapp1:/usr/share/nginx/html  nginx 
  820  docker  ps
  821  history 
  822  docker  ps
  823  docker  rm $(docker ps -aq) -f
  824  docker  volume  rm $(docker volume ls -q)
  825  docker  volume  ls

```

# Docker Web UI 

[portainer] ('https://www.portainer.io/')

===
[kitematic] ('https://kitematic.com/')

==

[Rancher] ('https://kitematic.com/')

## Docker WebUI with Portainer 


```
 832  docker run -d  --name mywebui --restart always -p 9000:9000  -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer 
  833  history 
  834  docker  ps
  835  docker  logs mywebui 
  
  ```
