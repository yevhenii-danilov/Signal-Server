run:
	docker-compose up -d

run-cache:
	./mvnw integration-test -Ptest-server -DskipTests=true -e

docker:
	docker-compose up -d --build signal-server

build:
	mvn clean package -pl service -am -Pexclude-spam-filter -DskipTests