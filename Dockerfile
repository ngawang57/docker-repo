FROM centos:latest
WORKDIR /var
EXPOSE 80
VOLUME /var/www/html
RUN yum install -y httpd git && git clone https://github.com/ngawang57/docker-repo.git /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]