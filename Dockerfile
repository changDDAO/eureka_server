FROM amazoncorretto:17
LABEL authors="changhoyoun"

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} eureka_server.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "/eureka_server.jar"]