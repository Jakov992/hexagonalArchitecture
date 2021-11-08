FROM openjdk:17-alpine
EXPOSE 8080
ARG JAR_FILE=target/document-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "-agentlib:jdwp=transport=dt_socket,server=y,address=5009,suspend=n", "/target/document-0.0.1-SNAPSHOT.jar"]