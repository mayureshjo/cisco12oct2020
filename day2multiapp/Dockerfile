FROM  centos
MAINTAINER  ashutoshh@linux.com
ENV x=hello
RUN yum  install httpd -y 
RUN  mkdir  /myapps  /myapps/app1   /myapps/app2  /myapps/app3 
ADD  app1  /myapps/app1/
ADD  app2  /myapps/app2/
ADD  app3  /myapps/app3/
COPY deploywebapp.sh  /myapps/
WORKDIR  /myapps/
RUN chmod +x  deploywebapp.sh
EXPOSE 80
ENTRYPOINT ["./deploywebapp.sh"] 
