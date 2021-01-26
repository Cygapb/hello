FROM alpine:latest
# ADD HelloWorld.class /tmp/HelloWorld.class
RUN ls -la /var/lib/docker/tmp/docker-builder300631709/
RUN apk --update add openjdk8-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "HelloWorld"]
