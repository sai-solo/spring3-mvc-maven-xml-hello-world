FROM tomcat:9-alpine
WORKDIR  /usr/local/tomcat/webapps/
RUN ls -ltr
COPY target/spring3-mvc-maven-xml-hello-world-1.2.war /spring33.war
RUN ls -ltr
 

