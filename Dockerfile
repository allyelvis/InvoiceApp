# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project jar file into the container
COPY target/springboot-invoice-app-0.0.1-SNAPSHOT.jar /app/invoice-app.jar

# Run the jar file
CMD ["java", "-jar", "/app/invoice-app.jar"]
