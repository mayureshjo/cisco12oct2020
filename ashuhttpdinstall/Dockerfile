FROM  centos
MAINTAINER  ashutoshh@linux.com
RUN  yum  install  httpd -y
WORKDIR  /var/www/html
# document root of httpd server is /var/www/html/
ADD app1 .
#  add and copy both are same in 99.99% 
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
# systemctl start httpd ---
#  here systemctl will not gonna work bcz systemctl is dependent over SYSTEMD in linux 
