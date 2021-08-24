#
# Build stage
#
FROM maven:3.6.1-jdk-8-alpine AS maven_builder
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM  java:8-jre-alpine
COPY --from=maven_builder /home/app/target/demo_Dockerfile-0.0.1-SNAPSHOT.jar /usr/local/lib/demo_Dockerfile.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo_Dockerfile.jar"]