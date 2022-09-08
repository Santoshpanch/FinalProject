FROM centos:latest
RUN yum install -y httpd 
ADD https://www.free-css.com/free-css-templates/page283/medinova.zip /var/ww/html
WORKDIR /var/www/html
RUN unzip medinova.zip
RUN cp -rvf photogenic/* .
RUN rm-rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

