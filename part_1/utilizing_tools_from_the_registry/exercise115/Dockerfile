FROM amazoncorretto:11-alpine

WORKDIR /usr/app/src

EXPOSE 8080

COPY . .

RUN chmod 777 mvnw

RUN ./mvnw package

CMD ["java" "-jar" "./target/aibg-v3-docker.jar"]
