FROM openjdk:8-jdk-alpine
MAINTAINER Guilherme Biff Zarelli <gbzarelli@helpdev.com.br>

# Set ENV variables
ENV PORT=8080

ENV DISCOVERY_ADDRESS="mms-eureka-server:8081"
ENV DISCOVERY_URL="http://${DISCOVERY_ADDRESS}"

ENV CONFIG_SERVER_ADDRESS="mms-config-server:9090"
ENV CONFIG_SERVER_URL="http://${CONFIG_SERVER_ADDRESS}"

# Add JAR file and run it as entrypoint.sh
ADD build/libs/*.jar app.jar
ADD wait-for.sh tmp/wait-for.sh
ADD entrypoint.sh entrypoint.sh

RUN chmod +x tmp/wait-for.sh
RUN chmod +x entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]

# Expose the port
EXPOSE 8080