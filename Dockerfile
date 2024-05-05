# Base image
FROM openjdk:17-oracle
EXPOSE 8080
ARG JAR_FILE=target/forum-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} application.jar
ENTRYPOINT ["java","-jar","/application.jar"]