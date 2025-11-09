FROM eclipse-temurin:17-jdk

WORKDIR /opt/Lavalink

# Copy everything
COPY . .

# Give permission to execute gradlew (important!)
RUN chmod +x ./gradlew

# Build Lavalink
RUN ./gradlew build --no-daemon

# Expose Lavalink port
EXPOSE 2333

# Start Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
