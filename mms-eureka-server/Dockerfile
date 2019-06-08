FROM openjdk:8-jdk-alpine
MAINTAINER Guilherme Biff Zarelli <gbzarelli@helpdev.com.br>

# Set ENV variables
ENV PORT=8080
ENV DISCOVERY_URL="http://eureka-server:8080"

# Add JAR file and run it as entrypoint
ADD build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]

# Expose the port
EXPOSE 8080