# Production grade container orchestration with K8s by Google / CNCF 

## COnfigure K8s client on Linux / MAC  /windows 

<img src="k8sclient.png">

## K8s Arch Revise 

<img src="k8srev.png">

## POd creation automatically in YAML / JSON format file 

```
 510  #  docker run  --name  c1  -p 3245:80  nginx 
  511  kubectl run  ashuwebpod1  --image=nginx --port 80 
  512  kubectl  get  po 
  513  kubectl  delete   pod  ashuwebpod1 
  514  kubectl run  ashuwebpod1  --image=nginx --port 80 --dry-run  -o yaml 
  515  kubectl run  ashuwebpod1  --image=nginx --port 80 --dry-run  -o yaml  >nginxpod.yml
  516  history 
  517  kubectl run  ashuwebpod1  --image=nginx --port 80 --dry-run  -o json 
  518  kubectl run  ashuwebpod1  --image=nginx --port 80 --dry-run  -o json  >ashunginx.json 
  
```
## labels 

<img src="labels.png">

## checking labels of pods

```
ashutoshhs-MacBook-Air:myapps fire$ kubectl get  po --show-labels 
NAME                         READY   STATUS    RESTARTS   AGE     LABELS
ashuwebpod1                  1/1     Running   0          6m4s    run=ashuwebpod1
chandra-pod1                 1/1     Running   0          2m42s   <none>
karan-webpod1                1/1     Running   0          5m38s   run=karan-webpod1
m10-pod                      1/1     Running   0          15m     run=m10-pod
mamtapod1                    1/1     Running   0          5m57s   run=mamtapod1
mandnayapod1                 1/1     Running   0          5m45s   run=mandnayapod1

```

## access pod from k8s client machine 

# Note : it is similar to docker exec 

<img src="k8sexec.png">

## accessing web app from k8s client machine 

<img src="k8sportf.png">

## Overall methods to access web app deployed on K8s 

<img src="access.png">




