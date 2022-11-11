FROM centos:7
MAINTAINER mona.minor@unisys.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/2rings.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip 2rings.zip
RUN cp -rvf 2rings-html/* .
RUN rm -rf 2rings-html 2rings.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
