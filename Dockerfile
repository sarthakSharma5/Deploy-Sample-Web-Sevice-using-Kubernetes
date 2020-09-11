FROM centos
RUN yum install sudo vim httpd php git -y
COPY *.html *.php /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "-FOREGROUND"]
EXPOSE 80
