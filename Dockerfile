FROM azul/zulu-openjdk:17-latest
VOLUME /tmp
RUN mvn clean package -DskipTests
COPY target/app-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080