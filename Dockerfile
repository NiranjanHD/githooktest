FROM centos/7

RUN yum install httpd -y
RUN systemctl enable httpd
COPY index.html /var/www/html/
RUN systemctl restart httpd
