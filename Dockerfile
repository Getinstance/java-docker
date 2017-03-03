# AlpineLinux with a glibc-2.23 and Oracle Java 8
FROM getinstance/java:latest

MAINTAINER Raul Dias <raul.getinstance@gmail.com>
# thanks to Anastas Dancha <anapsix@random.io> for the original work

WORKDIR /home

EXPOSE 8080

COPY fenix-api.jar /home/fenix-api.jar
COPY application.yml /home/application.yml

CMD ["java","-jar","/fenix-api.jar"]

# EOF
