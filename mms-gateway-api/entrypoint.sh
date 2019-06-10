echo "Wait config server..."
sh /tmp/wait-for.sh ${CONFIG_SERVER_ADDRESS}
echo "Config Server UP"

echo "Wait discovery server..."
sh /tmp/wait-for.sh ${DISCOVERY_ADDRESS}
echo "Discovery Server UP"

java -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=prod -jar /app.jar