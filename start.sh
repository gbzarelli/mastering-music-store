cd mms-config-server/
./gradlew clean build
cd ../

cd mms-eureka-server/
./gradlew clean build
cd ../

docker-compose up --build
