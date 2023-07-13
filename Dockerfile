# Use an OpenJDK base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file to the container
COPY target/studentsystem-0.0.1-SNAPSHOT.jar demo.jar


# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Set environment variables for MySQL connection
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql-container:3306/fullstack
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=lahari786

# Command to run the Spring Boot application
CMD ["java", "-jar", "demo.jar"]
