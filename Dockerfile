FROM ubuntu
RUN apt-get update && apt-get install openjdk-17-jdk curl vim -y
WORKDIR /opt
ADD target/appi-log-*.jar appi-log.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/appi-log.jar"]