FROM openjdk:11

RUN mkdir /usr/src/adminserver

WORKDIR /usr/src/adminserver/

EXPOSE 8070

ARG JAR_FILE

COPY ${JAR_FILE} /usr/src/adminserver/app.jar

CMD ["java", "-jar", "app.jar"]