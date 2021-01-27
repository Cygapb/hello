FROM tomcat:latest
ADD HelloWorld.class /usr/local/tomcat/webapps/myapp/
RUN apk --update add openjdk8-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
