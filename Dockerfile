FROM alpine:latest
# ADD HelloWorld.class /tmp/HelloWorld.class
COPY HelloWorld.class /tmp
RUN apk --update add openjdk8-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
