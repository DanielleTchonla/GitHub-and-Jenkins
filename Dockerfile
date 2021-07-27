
FROM centos:7
LABEL maintener="Danielle is getting deep into automation"
RUN yum -y update && yum clean all
RUN yum -y install httpd
COPY index.html /var/www/html/
EXPOSE 80
#Start httpd at container run time
ENTRYPOINT [ "/usr/sbin/httpd" ]

#Run entrypoint in the background
CMD [ "-D", "FOREGROUND" ]
