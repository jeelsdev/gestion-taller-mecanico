
FROM openjdk:18
MAINTAINER agenda
COPY "./target/agenda-0.0.1-SNAPSHOT.war" "app.war"
ENTRYPOINT ["java","-jar","app.war"]