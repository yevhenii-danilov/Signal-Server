# Use official Maven image for building the project
FROM hackyo/maven:3.9-jdk-21

WORKDIR /app

COPY . .

RUN ["./mvnw", "integration-test", "-Ptest-server", "-DskipTests=true"]

EXPOSE 8080