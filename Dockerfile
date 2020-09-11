FROM centos
RUN yum install sudo vim httpd php git -y
COPY *.html *.php /var/www/html/
EXPOSE 80
CMD /usr/sbin/httpd -DFOREGROUND
