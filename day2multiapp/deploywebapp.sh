#!/bin/bash

if [ "$x" == "project1"  ]
then
	cp -rfv  /myapps/app1/*   /var/www/html/
	httpd -DFOREGROUND 

elif  [  "$x" == "project2"  ]
then
	cp -rfv  /myapps/app2/*   /var/www/html/
	httpd -DFOREGROUND 

elif  [  "$x" == "project3"  ]
then
	cp -rfv  /myapps/app3/*   /var/www/html/
	httpd -DFOREGROUND 

else  
	echo  "Please contact to Docker engineer or look for entrypoint script !!"  >/var/www/html/index.html
	httpd -DFOREGROUND

fi 
