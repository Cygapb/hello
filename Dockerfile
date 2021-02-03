FROM tomcat:8.0-alpine
ADD sample.war /usr/local/tomcat/webapps/
RUN mkdir /usr/local/tomcat/webapps/hello/
ADD index.html /usr/local/tomcat/webapps/hello/
EXPOSE 80
CMD ["catalina.sh", "run"]
------------------------------------
#FROM tomcat:latest
#ADD HelloWorld.class /usr/local/tomcat/webapps/myapp/
# RUN apk --update add openjdk8-jre
# ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
#EXPOSE 80
