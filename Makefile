run:
	./mvnw integration-test -Ptest-server -DskipTests=true

run-cache:
	./mvnw integration-test -Ptest-server -DskipTests=true -e