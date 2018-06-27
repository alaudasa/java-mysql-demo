FROM ring2016/centos6-jdk7-maven3

### Compile ###
ADD pom.xml /pom.xml
RUN cd / && mvn  -Dhttps.protocols=TLSv1.2 dependency:go-offline

WORKDIR /code
ADD pom.xml /code/pom.xml
ADD src /code/src
ADD server.xml /usr/local/tomcat6/conf/server.xml
RUN ["mvn", "-Dhttps.protocols=TLSv1.2","package"]

### install ###
RUN cp target/demo.war $CATALINA_HOME/webapps/

### run ###
EXPOSE 80
CMD ["catalina.sh", "run"]

