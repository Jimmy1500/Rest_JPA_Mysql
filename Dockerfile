FROM openjdk:12-alpine

VOLUME /tmp
ADD build/libs/backend-1.0-SNAPSHOT.jar app.jar

ENV JAVA_OPTS=""
ENTRYPOINT [ "/bin/sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
