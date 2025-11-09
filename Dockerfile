FROM eclipse-temurin:17-jdk
WORKDIR /opt/Lavalink
COPY . .
RUN ./gradlew build
EXPOSE 2333
CMD ["java", "-jar", "Lavalink.jar"]
