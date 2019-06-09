FROM openjdk:8-jdk-alpine
MAINTAINER Guilherme Biff Zarelli <gbzarelli@helpdev.com.br>

# Set ENV variables
ENV PORT=8080
ENV DISCOVERY_URL="http://mms-eureka-server:8080"
ENV CONFIG_SERVER_URL="http://mms-config-server:9090"

# Add JAR file and run it as entrypoint
ADD build/libs/*.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=prod", "-jar", "/app.jar"]

# Expose the port
EXPOSE 8080