FROM centos:7
MAINTAINER mona.minor@unisys.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page284/built-better.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip built-better.zip
RUN cp -rvf built-better/* .
RUN rm -rf built-better built-better.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
