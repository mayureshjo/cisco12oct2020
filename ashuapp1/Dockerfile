FROM  python
#  this is means it will pull python image from  docker hub if not present locally to integrate your code
MAINTAINER   ashutoshh@linux.com , 909957594 
#  connect me here if any problem u have -- developer 
RUN  mkdir  /apps
#  in new docker image it will create apps directory 
#  use of run is to execute any command inside FROM docker image container 
COPY   hello.py  /apps/hello.py 
#  from  OS  to FROM image container -- just copy  data  
#  but make sure Dockerfile & hello.py or any data must be on the same host location  

CMD   ["python","/apps/hello.py"]

#  This will be default parent process for my newly created docker image 
