# Docker compose ideas

<img src="compose.png">

## Learning link 

[ashutoshh github]  ('https://github.com/redashu/docker-compose')


# Load Balancer service in k8s

# Storage in k8s 

## volumes plugings 

[volume link]  ('https://kubernetes.io/docs/concepts/storage/volumes/')


## Delete all things 

```
ashutoshhs-MacBook-Air:myapps fire$ kubectl  delete  all --all -n ashu-space 
pod "ashumultidep-8c659d8b4-7n4cs" deleted
pod "ashumultidep-8c659d8b4-9b4tm" deleted
pod "ashumultidep-8c659d8b4-svct8" deleted
pod "ashumultidep-8c659d8b4-xp6kk" deleted
pod "ashumultidep-8c659d8b4-zqkvg" deleted
service "ashumultidep" deleted
deployment.apps "ashumultidep" deleted
ashutoshhs-MacBook-Air:myapps fire$ 
ashutoshhs-MacBook-Air:myapps fire$ kubectl get  all -n ashu-space 
NAME                               READY   STATUS        RESTARTS   AGE
pod/ashumultidep-8c659d8b4-48zpv   1/1     Terminating   0          55s
pod/ashumultidep-8c659d8b4-5477c   1/1     Terminating   0          56s
pod/ashumultidep-8c659d8b4-8zs2j   1/1     Terminating   0          56s
pod/ashumultidep-8c659d8b4-cgc86   1/1     Terminating   0          55s
pod/ashumultidep-8c659d8b4-dh4zd   1/1     Terminating   0          55s
ashutoshhs-MacBook-Air:myapps fire$ 


```


## Implementing emptydir type 

<img src="emp.png">

## creating alpine pod file

```
kubectl  run  ashuemp1 --image=alpine  --dry-run -o yaml >empvol.yml

```

##

```
ashutoshhs-MacBook-Air:myapps fire$ kubectl replace  -f empvol.yml  --force 
pod "ashuemp1" deleted
pod/ashuemp1 replaced
ashutoshhs-MacBook-Air:myapps fire$ kubectl get po -n ashu-space 
NAME       READY   STATUS    RESTARTS   AGE
ashuemp1   1/1     Running   0          5s
ashutoshhs-MacBook-Air:myapps fire$ 



```

## checking logs

```
325  kubectl logs  ashuemp1  -n ashu-space 
  326  kubectl logs  ashuemp1 -f  -n ashu-space 
  
```

# Multi container pod 

```
ashutoshhs-MacBook-Air:myapps fire$ cat  multic.yml 
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: ashuemp1
  name: ashuemp1
  namespace: ashu-space  #  updating namespace 
spec:
  volumes:
  - name: ashuvol11 # name of volume 
    emptyDir: {} 
  containers:
  - image: nginx
    name: ashuwec1
    ports:
    - containerPort: 80 
    volumeMounts:
    - name: ashuvol11
      mountPath: /usr/share/nginx/html/


  - image: alpine
    name: ashuemp1
    command: ["/bin/sh","-c","while true;do echo 'hello <input>' >>/mnt/cisco/index.html;sleep 2;done"]
    volumeMounts:
    - name: ashuvol11 # name of volume created above 
      mountPath: /mnt/cisco # location under alpine container 

  
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}

```

== Deplloy 

```
 350  kubectl  apply  -f multic.yml 
  351  kubectl get  po -n ashu-space 
  352  kubectl describe  pod ashuemp1  -n ashu-space 
  353  history 
  354  kubectl get  po -n ashu-space 
  355  kubectl expose  pod  ashuemp1 --type NodePort --port 1245 --target-port 80 -n ashu-space 
  356  kubectl get po --show-labels -n ashu-space 
  357  kubectl get svc -n ashu-space 
  358  cat  multic.yml 
  359  history 
ashutoshhs-MacBook-Air:myapps fire$ kubectl get svc -n ashu-space 
NAME       TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
ashuemp1   NodePort   10.107.112.53   <none>        1245:32688/TCP   109s
ashutoshhs-MacBook-Air:myapps fire$ kubectl get po --show-labels -n ashu-space 
NAME       READY   STATUS    RESTARTS   AGE     LABELS
ashuemp1   2/2     Running   0          3m29s   run=ashuemp1
ashutoshhs-MacBook-Air:myapps fire$ 

```

# HostPath volume 

```
ashutoshhs-MacBook-Air:myapps fire$ cat  hostpath1.yml 
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: ashuemp1
  name: ashuemp1
  namespace: ashu-space  #  updating namespace 
spec:
  nodeName: ip-172-31-69-50.ec2.internal #  static pod scheduling 
  volumes:
  - name: ashuvol2
    hostPath:
     path: /etc
     type: Directory
 
  containers:
  - image: alpine
    name: ashuemp1
    command: ["/bin/sh","-c","ping 8.8.8.8"]  # use of command is to replace entrypoint default process
    volumeMounts:
    - name: ashuvol2 # name of volume created above 
      mountPath: /mnt/cisco # location under alpine container 
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}

```

## cross checking hostpath volume

<img src="hostpath.png">

## POrtainer using hostpath VOlume 

```
ashutoshhs-MacBook-Air:myapps fire$ cat  portainer.yml 
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: ashuemp1
  name: ashuemp1
  namespace: ashu-space  #  updating namespace 
spec:
  nodeName: ip-172-31-69-50.ec2.internal #  static pod scheduling 
  volumes:
  - name: ashuvol2
    hostPath:
     path: /var/run/docker.sock
     type: Socket
 
  containers:
  - image: portainer/portainer
    name: ashuemp1
    ports:
    - containerPort: 9000
    volumeMounts:
    - name: ashuvol2
      mountPath: /var/run/docker.sock 
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always
status: {}

```

## access the page

```
ashutoshhs-MacBook-Air:myapps fire$ kubectl apply  -f  portainer.yml  
pod/ashuemp1 created
ashutoshhs-MacBook-Air:myapps fire$ kubectl get po -n ashu-space 
NAME       READY   STATUS    RESTARTS   AGE
ashuemp1   1/1     Running   0          7s
ashutoshhs-MacBook-Air:myapps fire$ kubectl expose  pod ashuemp1  --type NodePort --port 8811 --target-port 9000 -n ashu-space 
service/ashuemp1 exposed
ashutoshhs-MacBook-Air:myapps fire$ kubectl get svc -n ashu-space 
NAME       TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
ashuemp1   NodePort   10.102.184.80   <none>        8811:30107/TCP   8s

```

# Wordpress deployment for NFS data storage

```
ashutoshhs-MacBook-Air:wordpress fire$ cat ashudb.yml 
apiVersion: v1
kind: Pod
metadata:
  creationTimestamp: null
  labels:
    run: ashumydb  # for safer side using myDB as label 
  name: mydb
  namespace: ashu-space 
spec:
  volumes:
  - name: ashudbvol
    nfs:
     server: 172.31.11.42
     path: /data/ec2-user 
  containers:
  - image: mysql:5.7
    name: mydb
    ports:
    - containerPort: 3306
    volumeMounts:
    - name: ashudbvol
      mountPath: /var/lib/mysql/
    resources: {}
  dnsPolicy: ClusterFirst
  restartPolicy: Always

```

## storing db password in k8s secrets

```
 427  kubectl  create  secret  generic  ashudbpass  --from-literal  p=Cisco@123 -n ashu-space 
  428  kubectl get  secrets  -n ashu-space 
  429  vim  ashudb.yml 
  430  vim  ashudb.yml 
  431  kubectl describe secrets  ashudbpass -n ashu-space 
  ```
  
  
# KAAS

<img src="kaas.png">

##  Users in k8s

<img src="users.png">

## default service account and its token in k8s

<img src="token.png">
