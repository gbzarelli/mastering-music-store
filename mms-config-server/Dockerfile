FROM openjdk:8-jdk-alpine
MAINTAINER Guilherme Biff Zarelli <gbzarelli@helpdev.com.br>

# Set ENV variables
ENV PORT=9090
ENV DISCOVERY_URL="http://mms-config-server:9090"
ENV CONFIG_GIT_URI="https://github.com/gbzarelli/mastering-music-store.git"

# Add JAR file and run it as entrypoint
ADD build/libs/*.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=prod", "-jar", "/app.jar"]

# Expose the port
EXPOSE 9090