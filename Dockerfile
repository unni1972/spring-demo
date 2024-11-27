FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file from the target folder into the container
COPY target/spring-petclinic-3.4.0-SNAPSHOT.jar app.jar

# Expose port 8080 to the outside world (if your app runs on a different port, change it)
EXPOSE 7070

# Run the JAR file using the 'java -jar' command
ENTRYPOINT ["java", "-jar", "app.jar"]