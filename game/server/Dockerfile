FROM openjdk:17
RUN groupadd spring && \
    useradd -d /opt/spring -g spring spring && \
    mkdir -p /opt/spring 
WORKDIR /opt/spring
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN chown -R spring:spring /opt/spring    
USER spring:spring
EXPOSE 5000
ENTRYPOINT [ \
    "java", \
    "-jar", \
    "app.jar", \
    "--debug"]
