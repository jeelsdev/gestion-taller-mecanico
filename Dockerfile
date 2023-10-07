
FROM openjdk:18
MAINTAINER agenda
COPY "./dist/MachanicalWorkshopApp.war" "app.war"
ENTRYPOINT ["java","-jar","app.war"]