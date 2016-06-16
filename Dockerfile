# AlpineLinux with a glibc-2.23 and Oracle Java 8
FROM getinstance/java:latest

MAINTAINER Raul Dias <raul.getinstance@gmail.com>
# thanks to Anastas Dancha <anapsix@random.io> for the original work

ENV ENVIRONMENT=prod /
    JAVA_OPTS=

WORKDIR /home

EXPOSE 8080

CMD ["java","$JAVA_OPTS","-jar","springboot-web.jar","--spring.profiles.active=$ENVIRONMENT"]

# EOF
