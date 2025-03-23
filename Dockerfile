# Use official Maven image for building the project
FROM hackyo/maven:3.9-jdk-21

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN ls -al /app

EXPOSE 8080

CMD ["./mvnw", "integration-test", "-Ptest-server", "-DskipTests=true", "-Pexclude-spam-filter"]