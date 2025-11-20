FROM openjdk:17-jdk-slim

# Create app directory
WORKDIR /app

# Copy the JAR file built by Maven
COPY target/refunds-api-0.0.1-SNAPSHOT.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
