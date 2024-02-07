# an official OpenJDK runtime as a parent image is used
FROM openjdk:8-jdk-alpine

# working directory is set to /app
WORKDIR /app

# the current directory contents are copied into the container at /app
COPY . /app

# port 8080 available to the world outside this container through tomcat server
EXPOSE 8080

# application runs when the container launches
CMD ["java", "-jar", "spring-boot-hello-world.jar"]
