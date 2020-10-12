FROM nginx 
MAINTAINER  ashutoshh@linux.com
WORKDIR  /usr/share/nginx/html
# use of WORKDiR is to change location in container -- same like cd command in LInux 
COPY  app1  .
#  copy the content of app1 to /usr/share/nginx/html 
EXPOSE 80 
# optional step but will let u know the application default port 
#  we don't have to write  CMD for parnet process that is by default by nginx image
