FROM index.alauda.cn/alaudasa/centos6-jdk7-maven3

### Compile ###
ADD pom.xml /pom.xml
RUN cd / && mvn dependency:go-offline

WORKDIR /code
ADD pom.xml /code/pom.xml
ADD src /code/src
ADD server.xml /usr/local/tomcat6/conf/server.xml
RUN ["mvn", "package"]

### install ###
RUN cp target/demo.war $CATALINA_HOME/webapps/

### run ###
EXPOSE 80
CMD ["catalina.sh", "run"]

