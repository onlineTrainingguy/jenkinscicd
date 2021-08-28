FROM ubuntu

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get -y install apache2
RUN mkdir /mydata
ADD index.html /var/www/html
ADD myproj-1.0-SNAPSHOT.jar /mydata/myproj-1.0-SNAPSHOT.jar

ENTRYPOINT apachectl -D FOREGROUND

ENV name DEVOPS1 
