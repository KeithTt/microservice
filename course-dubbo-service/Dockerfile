FROM openjdk:7-jre
LABEL maintainer="KeithTt"
COPY target/course-dubbo-service-1.0-SNAPSHOT.jar /course-service.jar

ENTRYPOINT ["java", "-jar", "/course-service.jar"]
