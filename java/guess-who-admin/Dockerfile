FROM openjdk:17

RUN groupadd spring && \
    useradd -d /opt/spring -g spring spring && \
    mkdir -p /opt/spring 

WORKDIR /opt/spring

ARG JAR_FILE=target/app.jar
COPY ${JAR_FILE} app.jar
RUN chown -R spring:spring /opt/spring    

USER spring:spring

EXPOSE 5001

ENTRYPOINT [ \
    "java", \
    "-Dspring.profiles.active=prod", \
    "-jar", \
    "app.jar"]
