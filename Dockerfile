# Use the official Eclipse Temurin Java 17 image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /opt/Lavalink

# Download the latest Lavalink jar directly from the official release
RUN apt-get update && apt-get install -y wget \
    && wget https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Expose Lavalink's default port
EXPOSE 2333

# Set default environment variables
ENV SERVER_PORT=2333
ENV JAVA_TOOL_OPTIONS="-Xmx512M"

# Start Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
