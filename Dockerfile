FROM centos:latest
MAINTAINER DevOpsTech

RUN yum install -y httpd git && git clone https://github.com/ngawang57/docker-repo.git /var/www/html/

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]