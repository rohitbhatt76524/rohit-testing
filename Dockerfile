FROM centos:latest
RUN yum update -y 
RUN yum install httpd -y
WORKDIR /var/www/html
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/bakery.zip /var/www/html
RUN yum install unzip -y
RUN unzip backery.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND"]
EXPOSE 80
