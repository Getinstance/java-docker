# AlpineLinux with a glibc-2.23 and Oracle Java 8
FROM getinstance/java:latest

MAINTAINER Raul Dias <raul.getinstance@gmail.com>
# thanks to Anastas Dancha <anapsix@random.io> for the original work

ENV ENVIRONMENT=prod

WORKDIR /home

EXPOSE 8080

CMD ["java","","-jar","gs-spring-boot-0.1.0.jar","--spring.profiles.active=$ENVIRONMENT"]

# EOF
