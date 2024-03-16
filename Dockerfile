# Stage 1: Build the application
FROM maven:3.8.4-openjdk-17 as build

# Set the working directory
WORKDIR /app

# Copy the pom.xml file to the container
COPY pom.xml .

# Download dependencies
RUN mvn dependency:go-offline

# Copy the source code to the container
COPY src ./src

# Compile the application
RUN mvn package

# Stage 2: Run the application
FROM openjdk:17-slim as final

# Copy the artifact from the build stage
COPY --from=build /app/target/IllusionClassroom-1.0-SNAPSHOT.jar /app/IllusionClassroom.jar

# Expose port 8080 (assuming your application runs on this port)
EXPOSE 8080

# Set the working directory
WORKDIR /app

# Run the application
CMD ["java", "-jar", "IllusionClassroom.jar"]
